<?php
/* Proccess.php
* Functions to proccess the queries from forms to the Server
*/

//Include MySQL DB Connection Script
include 'connect.php';

//Start Session for tacking login
session_start();

//Set Form Type Variables
$formType = $_POST['formType'];

//Based on what formType we do diffrent things
if($formType == "signup"){
	//Set variables
	$firstName = filter_var(ucwords(strtolower($_POST['firstName'])),FILTER_SANITIZE_STRING);
	$lastName = filter_var(ucwords(strtolower($_POST['lastName'])),FILTER_SANITIZE_STRING);
	$username = filter_var(strtolower($_POST['username']),FILTER_SANITIZE_STRING);//strtolower($_POST['username']);
	$email = filter_var(strtolower($_POST['email']),FILTER_SANITIZE_EMAIL);
	$password = $_POST['password'];
	$confirmPassword = $_POST['confirmPassword'];

	$sql = ("SELECT * FROM `users` WHERE `username` = '".$username."'");
	$stm = $con->prepare($sql);
	$stm->execute();
	$row_count = $stm->rowCount();
	if ($row_count > 0){
		header('Location: signup.php?error=username');
		die();
	};
	//Check Passwords Match
	if($password != $confirmPassword){
		//Redirect to signup.php and throw an error
		header('Location: signup.php?error=password');
		//Stop script to not add to DB
		die();
	};
	/*if(strlen($password) < 8){// || !preg_match("/[^a-zA-Z0-9\s\w", $password))
		
		header('Location: signup.php?error=password');
		//Stop script to not add to DB
		die();
	};*/


	//Hash Password
	$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

	//Add to MySQL
	$sql = ("INSERT INTO `users` (firstName, lastName, username, email, password) VALUES ('".$firstName."', '".$lastName."', '".$username."', '".$email."', '".$hashedPassword."')");
	$stm = $con->exec($sql);
	//$stm->execute();

	//Since it all worked out okay let's create the session for him
	$_SESSION['username'] = $username;

	//Redirect to dashboard or to search
	if(isset($_POST['redirect_item_id'])){
		header('Location: trade.php?item_id=' . $_POST['redirect_item_id']);
	}
	else{
		header('Location: dashboard.php');
	}

} else if($formType == "login") {
	//Pull the login info from the MySQL, if it matches create a Session with the name
	$username = $_POST['username'];
	$password = $_POST['password'];

	//Since we put passwords into the MySQL as md5() hashed (@Sherman this is the first thing you'll change :)) we need to hash it to get the same result

	$sql = ("SELECT username, password FROM `users` WHERE UPPER(`username`) = '".strtoupper($username)."'");
	$stm = $con->prepare($sql);
	$stm->execute();
	$row_count = $stm->rowCount();


	if($row_count > 0){
		//Define Session
		//$_SESSION['username'] = $username;
		$row = $stm->fetch();
		if(password_verify($password,$row['password'])){
			$_SESSION['username'] = $row['username'];
			if(isset($_POST['redirect_item_id'])){
				header('Location: trade.php?item_id=' . $_POST['redirect_item_id']);
			}
			else{
				header('Location: dashboard.php');
			}
			
		}
		else{
			$_SESSION['username'] = null;

		//Send to login page
			header('Location: login.php?authentication=error');
			die();
		}
		//Direct to dashboard
		//
	} else {
		//Kill session
		$_SESSION['username'] = null;

		//Send to login page
		header('Location: login.php?authentication=error');
		die();
	};
} else if($formType == "new_item"){
	//Check all inputs given, he is logged in, and push to MySQL
	$itemTitle = filter_var($_POST['item-title'],FILTER_SANITIZE_STRING);
	$itemDescription = filter_var($_POST['item-description'],FILTER_SANITIZE_STRING);
	$itemCat = filter_var($_POST['item-category'],FILTER_SANITIZE_STRING);

	//Check inputs not empty
	if($itemTitle == null || $itemDescription == null || $itemCat == null){
		header('Location: new_item.php?inputs=error');
		die();
	};

	//Check user logged in
	if($_SESSION['username'] == null){
		header('login.php?authentication=error');
		die();	
	};

	//Get User Account ID based on Username
	$sql = ("SELECT `user_id` FROM `users` WHERE `username` LIKE '".$_SESSION['username']."'");
	$stm = $con->prepare($sql);
	$stm->execute();
	$user_id = $stm->fetchColumn();

	//If everything good push to MySQL
	$sql = ("INSERT INTO `items` (item_name, description, category, owner_id, holder_id, owner_username, holder_username) VALUES ('".$itemTitle."', '".$itemDescription."', '".$itemCat."', ".$user_id.", ".$user_id.", '".$_SESSION['username']."', '".$_SESSION['username']."')");
	$stm = $con->prepare($sql);
	$stm->execute();

	//Send to search.php show Thank you Message
	header('Location: search.php?message=thankyou');
};

?>
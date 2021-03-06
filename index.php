<?php
session_start();
include 'header.php';
?>
			<div id="wrapper">
					<header id="header" class="alt">
						<h1>Local Lending</h1>
						<p>Meet up with friends to borrow or lend things!</p>
						<?php
						if(!isset($_SESSION['username'])){
							echo "<a href=\"login.php\"><button>Log in</button></a>
							<a href=\"signup.php\"><button>Sign up</button></a>
	                        <br />
	                        <a href=\"search.php\"><button style=\"margin-top:5px;\">Try It Out</button></a>";
						}
						else{
							echo "<a href=\"dashboard.php\"><button>Go to dashboard</button></a>";
						}
						
                        ?>
					</header>
					<nav id="nav">
						<ul>
							<li><a href="#intro" class="active">Introduction</a></li>
							<li><a href="#first">Features</a></li>
							<?php
								if(!isset($_SESSION['username'])){
									echo "<li><a href=\"#cta\">Get Started</a></li>";
								}
								
							?>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Introduction -->
							<section id="intro" class="main">
								<div class="spotlight">
									<div class="content">
										<header class="major">
											<h2>Local Lending</h2>
										</header>
										<p>Local lending is a platform where people can lend their belongings
											to those who need it. Your items are secured via a credit card deposit,
											 so our users can have a peace of mind knowing that their lent items are going
											 to be used responsibly.</p>
										<ul class="actions">
											<li><a href="generic.html" class="button">Learn More</a></li>
										</ul>
									</div>
								</div>
							</section>

						<!-- First Section -->
							<section id="first" class="main special">
								<header class="major">
									<h2>Features</h2>
								</header>
								<ul class="features">
									<li>
										<span class="icon major style1 fa-diamond"></span>
										<h3>Totally Free to use</h3>
										<p>Local lending is free to use amongst your peers. Credit card information is only needed as an insurance that all items will be returned in good condition.</p>
									</li>
									<li>
										<span class="icon major style3 fa-user"></span>
										<h3>Easy to Use</h3>
										<p>Users of Local lending just have to sign up, search for something that they need, and then meet up with the person who has what is needed.</p>
									</li>
									<li>
										<span class="icon major style5 fa-lock"></span>
										<h3>Safe and secure</h3>
										<p>All credit card information is secured, and anything that involves the transaction needs to be approved by both parties of the lending.</p>
									</li>
								</ul>
							</section>
						<?php
						if(!isset($_SESSION['username'])){
						echo "
						<!-- Get Started -->
							<section id=\"cta\" class=\"main special\">
								<header class=\"major\">
									<h2>Sign up to use Local Lending!</h2>
									<p>Sign up today so that you don't have to buy everything that you may only being using once!</p>
								</header>
								<footer class=\"major\">
									<ul class=\"actions\">
										
										
											<li><a href=\"signup.php\" class=\"button special\">Sign up!</a></li>
										
										
										
									</ul>
								</footer>
							</section>";
							}
							?>
					</div>
					<br />
			</div>

		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/skel.min.js"></script>
		<script src="assets/js/util.js"></script>
		<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
		<script src="assets/js/main.js"></script>
	</body>
</html>

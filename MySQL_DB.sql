
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 29, 2017 at 08:01 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `locallending`
--
CREATE DATABASE IF NOT EXISTS `locallending` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `locallending`;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(9) NOT NULL,
  `item_name` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  `category` varchar(40) NOT NULL,
  `owner_id` int(9) NOT NULL,
  `holder_id` int(9) NOT NULL,
  `owner_username` varchar(120) DEFAULT NULL,
  `holder_username` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `description`, `category`, `owner_id`, `holder_id`, `owner_username`, `holder_username`) VALUES
(1, 'Hammer', 'Hammer, great condition. Hammers things well.', 'tools', 1, 1, 'bblau', 'bblau'),
(2, 'Bike', 'Red with pom-poms. Has a basket in front', 'toys', 2, 2, 'achen', 'achen'),
(3, 'Broken code', 'fully featured broken code. unused, like new', 'misc', 3, 3, 'mkolber', 'mkolber'),
(4, 'big red fluffy couch', 'very big. very fluffy. very comfortable!', 'furniture', 4, 4, 'bsommer', 'bsommer'),
(5, 'ram sticks', '4 gigabytes of ram. used. DDR1', 'computers', 5, 5, 'esherman', 'esherman'),
(6, 'iphone charger', 'to charge your phone', 'Cellphones', 2, 2, 'achen', 'achen'),
(7, 'dog leash', 'to walk your dog with', '', 3, 3, 'mkolber', 'mkolber'),
(8, 'phone charger', 'usb micro b. used, excellent condition', 'computers', 4, 4, 'bsommer', 'bsommer'),
(9, 'poodle', 'tiny dog', '', 1, 1, 'bblau', 'bblau'),
(10, 'kittens', 'small cats', '', 3, 5, 'mkolber', 'esherman'),
(11, 'Nintendo DS', 'original DS with charger', 'Toys/Games', 5, 5, 'esherman', 'esherman'),
(12, 'crockpot', 'to make chulent with', '', 4, 4, 'bsommer', 'bsommer'),
(13, 'popcorn maker', 'makes great popcorn', '', 1, 1, 'bblau', 'bblau'),
(14, 'working code', 'it\'s code that works', 'Computers', 2, 2, 'achen', 'achen'),
(15, 'hoodie', 'keeps you warm', 'clothes', 5, 5, 'esherman', 'esherman'),
(16, 'laptop charger', 'not for macs', 'computers', 5, 5, 'esherman', 'esherman'),
(17, 'Computer Science textbooks', 'really thick paperweights, great condition', 'Books', 1, 2, 'bblau', 'achen'),
(18, 'scissors', 'cuts things. beats paper.', '', 2, 2, 'achen', 'achen'),
(19, 'banjo', 'you can play music on it', '', 3, 3, 'mkolber', 'mkolber'),
(20, 'pineapple', 'spiky apple, no spongbob', 'Appliances', 2, 3, 'achen', 'mkolber'),
(21, 'T-Shirt', '1 New Brand New Hackathon YU 2017 T-Shirt', 'cat-appliances', 2, 2, 'achen', 'achen'),
(22, 'Camp HASC Waterbottle', 'Used Camp HASC Waterbottle! Keeps water cold when cold, and hot when hot!! Good Insulator!', 'Other', 4, 4, 'bsommer', 'bsommer'),
(23, 'Laptop', 'HP Laptop', 'Computers', 1, 1, 'bblau', 'bblau'),
(24, 'Laptop', 'HP Laptop', 'Computers', 3, 3, 'mkolber', 'mkolber'),
(25, 'Laptop', 'HP Laptop', 'Computers', 5, 2, 'esherman', 'achen'),
(26, 'USB Micro Cable', 'Cable for USB Micro', 'Computers', 1, 1, 'bblau', 'bblau'),
(27, 'rocket fuel', 'in case you want to go to the moon', 'Other', 3, 3, 'mkolber', 'mkolber'),
(28, 'Canon EOS 6D Mark 2', 'Canon DSLR Camera', 'Photo/Video', 4, 5, 'bsommer', 'esherman'),
(29, 'Chair', 'A steel chair meant to be thrown in a WWE match.', 'Furniture', 3, 2, 'mkolber', 'achen'),
(30, 'Phone Nexus 6', 'Phone new condition very nice', 'Cellphones', 4, 3, 'bsommer', 'mkolber'),
(31, 'PVC Pipping', 'Brand new! PVC Piping to fit your plumbing expendetures!', 'Other', 1, 1, 'bblau', 'blau'),
(34, 'Doll', 'Hulk Hogan Dolly', 'Toys/Games', 1, 1, 'xchenny', 'xchenny'),
(35, 'Pillow', 'Softest of all soft things', 'Other', 1, 1, 'esherman', 'esherman'),
(36, 'mango', 'green mango. not yet ripe', 'Other', 2, 2, 'achen8', 'achen8'),
(37, 'Banana peel', 'We\'re tryna play some Mario Kart', 'Sports', 1, 1, 'esherman', 'esherman'),
(38, 'Banana bunch', 'Bunch o bananas', 'Gardening', 1, 1, 'esherman', 'esherman'),
(39, 'Apple pie', 'Pie of apples', 'Other', 1, 1, 'achen8', 'achen8'),
(40, 'Pillowcase', 'The fluffiest pillowcase believe me', 'Other', 1, 1, 'achen8', 'achen8'),
(41, 'Test', 'Test', 'Appliances', 1, 1, 'achen8', 'achen8');

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `ListingID` int(9) NOT NULL,
  `item` varchar(120) NOT NULL,
  `sellerID` int(9) NOT NULL,
  `buyerID` int(9) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`ListingID`, `item`, `sellerID`, `buyerID`, `status`) VALUES
(1, 'Beach Chairs', 1, 2, 'RETURNED');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(9) DEFAULT NULL,
  `owner_id` int(9) NOT NULL,
  `borrower_id` int(9) NOT NULL,
  `transaction_status` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(9) NOT NULL,
  `username` varchar(120) NOT NULL,
  `email` varchar(140) NOT NULL,
  `password` varchar(120) NOT NULL,
  `average_rating` float NOT NULL,
  `total_rating_count` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `average_rating`, `total_rating_count`) VALUES
(1, 'bblau', '', 'password', 5, 300),
(2, 'achen', '', 'password', 5, 100),
(3, 'mkolber', '', 'password', 4, 1000),
(4, 'bsommer', '', 'password', 2, 200),
(5, 'esherman', '', 'password', 4, 9000),
(6, 'mrmystery', 'qwer@123.edu', 'pop', 0, 0),
(7, 'Bblau1', 'b', 'q', 0, 0),
(8, 'achen7', 'achen@email.com', 'qwe', 0, 0),
(9, 'Austince', 'Austin.cawley@gmail.com', 'fake', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_old`
--

CREATE TABLE `users_old` (
  `AccoutnID` int(9) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `avgRating` int(5) NOT NULL,
  `ratingCount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_old`
--

INSERT INTO `users_old` (`AccoutnID`, `username`, `password`, `avgRating`, `ratingCount`) VALUES
(1, 'ben', 'bensommer', 5, 1),
(2, 'eric', 'eric12', 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`ListingID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_old`
--
ALTER TABLE `users_old`
  ADD PRIMARY KEY (`AccoutnID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `ListingID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users_old`
--
ALTER TABLE `users_old`
  MODIFY `AccoutnID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

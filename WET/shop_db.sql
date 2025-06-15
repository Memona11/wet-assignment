

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



-- Table structure for table `cart`

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL
) 

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `image`, `quantity`) VALUES
(0, 0, 'Iron Bridge Jacket', '1000', 'jack3.jpg', 1);


-- Table structure for table `products`

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) 


INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Tech Jacket Charcoal', '1500', 'jack1.jpg\r\n'),
(2, 'Graz work Jacket', '2000', 'jack2.jpg'),
(3, 'Iron Bridge Jacket', '1000', 'jack3.jpg'),
(4, 'Blue Golf Jacket', '1700', 'jack4.jpg'),
(5, 'Sage Golf Jacket', '3000', 'jack5.jpg'),
(6, 'Cowhide lather Jacket', '1000', 'jack6.jpg');

-- Table structure for table `user_form`


CREATE TABLE `user_form` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) 


INSERT INTO `user_form` (`id`, `name`, `email`, `password`) VALUES
(0, 'Memona ', 'miranimemona@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');


-- Indexes for table `cart`

ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);


-- Indexes for table `products`

ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);


-- AUTO_INCREMENT 

ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;


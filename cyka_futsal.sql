-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28 Agu 2018 pada 11.58
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyka_futsal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'adminvario'),
(2, 'root', 'root123'),
(3, 'vario', 'vario123'),
(4, 'fajar', 'fajar123'),
(5, 'bayu', 'bayu123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `bookdate` varchar(50) NOT NULL,
  `kindfield` varchar(50) NOT NULL,
  `bookhour` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id`, `name`, `email`, `hp`, `bookdate`, `kindfield`, `bookhour`, `totalprice`, `status`) VALUES
(1000238, 'aji gg', 'aji.gg@gmail.com', '0812737188', '2018-07-11', 'cement field', 2, 160000, 'Rejected'),
(1000239, 'yogi', 'yogs@gmail.com', '082831831', '2018-07-11', 'synthetic grass field', 3, 300000, 'Accepted'),
(1000240, 'hilman', 'hillman@gmail.com', '0812737188', '2018-07-18', 'cement field', 2, 160000, 'Accepted'),
(1000241, 'ulya', 'ulya@facebook.com', '0813213131', '2018-07-25', 'synthetic grass field', 3, 300000, 'Accepted'),
(1000242, 'arya', 'ulya@facebook.com', '0812737188', '2019-12-30', 'cement field', 2, 160000, 'Accepted'),
(1000243, 'joni', 'jonigaul@gmail.com', '081231239', '2018-08-01', 'synthetic grass field', 2, 200000, 'Accepted'),
(1000244, 'nabil', 'nabilj@mfma.com', '0812737188', '2018-07-18', 'synthetic grass field', 3, 300000, 'Accepted'),
(1000245, 'aji', 'aji.gg@gmail.com', '0813213131', '2018-12-11', 'synthetic grass field', 2, 200000, 'Waiting'),
(1000246, 'fajar', 'fajar@gmail.com', '0819292993', '2018-07-19', 'synthetic grass field', 2, 200000, 'Accepted'),
(1000247, 'adit', 'adit@adit.com', '0813213131', '2018-07-26', 'cement field', 2, 160000, 'Waiting'),
(1000248, 'bayu', 'bayu123@gmail.com', '098765432121', '2018-07-13', 'synthetic grass field', 2, 200000, 'Waiting'),
(1000249, 'alyan', 'alyan@gmail.com', '0812312999', '2018-07-20', 'synthetic grass field', 3, 300000, 'Accepted'),
(1000250, 'hilman', 'ulya@facebook.com', '0819292919', '2018-07-24', 'synthetic grass field', 2, 200000, 'Waiting'),
(1000251, 'robert', 'robert.dequ@gmail.com', '0812312312', '2018-07-17', 'cement field', 2, 160000, 'Waiting');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000252;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

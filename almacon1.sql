-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 10:51 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almacon1`
--

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `ID_Block` int(10) NOT NULL,
  `Nombre_Block` varchar(30) NOT NULL,
  `Precio_Block` int(10) NOT NULL,
  `Descripcion_Block` varchar(300) NOT NULL,
  `Tamaño_Block` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`ID_Block`, `Nombre_Block`, `Precio_Block`, `Descripcion_Block`, `Tamaño_Block`) VALUES
(1, 'Block de 4', 40, 'Block para contruccion Tamaño pequeño.', 4),
(2, 'Block de 6', 45, 'Block de construccion tamaño Mediano.', 6),
(3, 'Block de 8', 50, 'Block de constuccion Tamaño Grande.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `cemento`
--

CREATE TABLE `cemento` (
  `ID_Cemento` int(10) NOT NULL,
  `Nombre_Cemento` varchar(30) NOT NULL,
  `Precio_Cemento` int(10) NOT NULL,
  `Descripcion_Cemento` varchar(300) NOT NULL,
  `Peso_Cemento` int(10) NOT NULL,
  `Color_Cemento` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cemento`
--

INSERT INTO `cemento` (`ID_Cemento`, `Nombre_Cemento`, `Precio_Cemento`, `Descripcion_Cemento`, `Peso_Cemento`, `Color_Cemento`) VALUES
(1, 'Cemento Blanco', 600, 'El cemento blanco es un tipo de cemento portland de un color gris muy claro,​ empleado tanto en piezas prefabricadas como en acabados de suelos y albañilería en general.', 42, 'Blanco'),
(2, 'Cemento Gris', 405, 'El cemento gris o Portland es un compuesto de minerales que actúa como ligante de materiales.', 42, 'Gris');

-- --------------------------------------------------------

--
-- Table structure for table `mortero`
--

CREATE TABLE `mortero` (
  `ID_Mortero` int(10) NOT NULL,
  `Nombre_Mortero` varchar(30) NOT NULL,
  `Precio_Mortero` int(10) NOT NULL,
  `Descripcion_Nortero` varchar(300) NOT NULL,
  `Grosor_Mortero` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mortero`
--

INSERT INTO `mortero` (`ID_Mortero`, `Nombre_Mortero`, `Precio_Mortero`, `Descripcion_Nortero`, `Grosor_Mortero`) VALUES
(1, 'Mortero Grueso', 270, 'El mortero es una mezcla de aglutinantes inorgánicos, agregados finos y agua, y posibles aditivos que sirven para aparejar elementos de construcción. En este caso en su version menos refinada y mas gruesa.', 'Grueso'),
(2, 'Mortero Normal', 300, 'El mortero es una mezcla de aglutinantes inorgánicos, agregados finos y agua, y posibles aditivos que sirven para aparejar elementos de construcción. En este caso la version estandar o normal.', 'Normal'),
(3, 'Mortero Fino', 330, 'El mortero es una mezcla de aglutinantes inorgánicos, agregados finos y agua, y posibles aditivos que sirven para aparejar elementos de construcción. En este caso su ersion mas refinada.', 'Fino');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `ID_Producto` int(11) NOT NULL,
  `Nombre_Producto` varchar(30) NOT NULL,
  `Precio_Producto` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`ID_Producto`, `Nombre_Producto`, `Precio_Producto`) VALUES
(6, 'Cemento Blanco', 600),
(7, 'Cemento Gris', 600),
(8, 'Cemento Gris', 1200),
(9, 'Cemento Blanco', 600),
(10, 'Cemento Gris', 2400),
(11, 'Varilla', 266000),
(12, 'Cemento Gris', 1800),
(13, 'Cemento Gris', 2400),
(14, 'Varilla', 66500),
(15, 'Mortero Grueso', 270),
(16, 'Mortero Fino', 330),
(17, 'BLOCK 8', 270),
(18, 'BLOCK 6', 240),
(19, 'Yeso Cocido', 0),
(20, 'Yeso Cocido', 260),
(21, 'BLOCK 8', 135),
(22, 'BLOCK 6', 160),
(23, 'BLOCK 4', 175),
(24, 'Varilla', 66500),
(25, 'Mortero Fino', 330);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `ID_Usuario` int(10) NOT NULL,
  `Nom_Usuario` varchar(30) NOT NULL,
  `Pass_Usuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`ID_Usuario`, `Nom_Usuario`, `Pass_Usuario`) VALUES
(1, 'Omar', 'FRESA'),
(2, 'Omar', 'EXPO'),
(3, 'PRUEBA', 'PRUEBA');

-- --------------------------------------------------------

--
-- Table structure for table `varillas`
--

CREATE TABLE `varillas` (
  `ID_Varilla` int(10) NOT NULL,
  `Nombre_Varilla` varchar(30) NOT NULL,
  `Precio_Varilla` int(10) NOT NULL,
  `Descripcion_Varilla` varchar(300) NOT NULL,
  `Diametro_Varilla` varchar(10) NOT NULL,
  `Longitud_Varilla` int(10) NOT NULL,
  `Textura_Varilla` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `varillas`
--

INSERT INTO `varillas` (`ID_Varilla`, `Nombre_Varilla`, `Precio_Varilla`, `Descripcion_Varilla`, `Diametro_Varilla`, `Longitud_Varilla`, `Textura_Varilla`) VALUES
(1, 'Atado Grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '3/8', 20, 'Corrugada'),
(2, 'Atado grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '3/4', 20, 'Corrugado'),
(3, 'Atado Grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías', '1/2', 20, 'Corrugada'),
(4, 'Atado grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '1', 20, 'Corrugado'),
(5, 'Atado Grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '3/8', 25, 'Corrugada'),
(6, 'Atado grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '3/4', 25, 'Corrugado'),
(7, 'Atado Grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías', '1/2', 25, 'Corrugada'),
(8, 'Atado grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '1', 25, 'Corrugado'),
(9, 'Atado Grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '3/8', 30, 'Corrugada'),
(10, 'Atado grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '3/4', 30, 'Corrugado'),
(11, 'Atado Grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '1/2', 30, 'Corrugada'),
(12, 'Atado grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '1', 30, 'Corrugado'),
(13, 'Atado Grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '3/8', 35, 'Corrugada'),
(14, 'Atado grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '3/4', 35, 'Corrugado'),
(15, 'Atado Grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '1/2', 35, 'Corrugada'),
(16, 'Atado grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '1', 35, 'Corrugado'),
(17, 'Atado Grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías', '3/8', 40, 'Corrugada'),
(18, 'Atado grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '3/4', 40, 'Corrugado'),
(19, 'Atado Grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '1/2', 40, 'Corrugada'),
(20, 'Atado grado 60', 66500, 'La varilla es un producto de acero terminado de sección redonda con resaltes o estrías.', '1', 40, 'Corrugado');

-- --------------------------------------------------------

--
-- Table structure for table `yeso`
--

CREATE TABLE `yeso` (
  `ID_Yeso` int(10) NOT NULL,
  `Nombre_Yeso` varchar(30) NOT NULL,
  `Precio_Yeso` int(10) NOT NULL,
  `Descripcion_Yeso` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yeso`
--

INSERT INTO `yeso` (`ID_Yeso`, `Nombre_Yeso`, `Precio_Yeso`, `Descripcion_Yeso`) VALUES
(1, 'Yeso cocido', 260, 'material de construcción de sulfato de calcio hemihidrato.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`ID_Block`);

--
-- Indexes for table `cemento`
--
ALTER TABLE `cemento`
  ADD PRIMARY KEY (`ID_Cemento`);

--
-- Indexes for table `mortero`
--
ALTER TABLE `mortero`
  ADD PRIMARY KEY (`ID_Mortero`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Producto`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- Indexes for table `varillas`
--
ALTER TABLE `varillas`
  ADD PRIMARY KEY (`ID_Varilla`);

--
-- Indexes for table `yeso`
--
ALTER TABLE `yeso`
  ADD PRIMARY KEY (`ID_Yeso`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

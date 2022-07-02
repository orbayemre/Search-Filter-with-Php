-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 19 May 2022, 15:46:11
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `project`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Brand` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Description` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Color` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `Size` varchar(2) COLLATE utf8_turkish_ci NOT NULL,
  `Gender` varchar(10) COLLATE utf8_turkish_ci NOT NULL,
  `Price` decimal(5,2) NOT NULL,
  `ImgUrl` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`Id`, `Brand`, `Description`, `Color`, `Size`, `Gender`, `Price`, `ImgUrl`) VALUES
(1, 'Adidas', 'Breaknet Erkek Spor Ayakkabı', 'beyaz', '42', 'erkek', '590.00', 'https://cdn.dsmcdn.com/ty119/product/media/images/20210525/20/91810204/89893960/2/2_org_zoom.jpg'),
(2, 'Adidas', 'Strutter Kadın Günlük Spor Ayakkabı', 'pembe', '38', 'kadın', '819.99', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR2p6mQsIOvzfeW3Pto_0M3-tnQUhMM25NnflbTdQbm9wHJcpysY1wlC8TORKgZ_Or8ynoCVD-bETILN2m_Z8hTxI78rTwf_MX587_a6ZtejVfKlqURCxkXRw&usqp=CAE'),
(3, 'Nike', 'Air Force 1 Unisex Spor Ayakkabı', 'siyah', '40', 'unisex', '499.99', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ7UND1wD50e_UlBDc3GMNNJ0q7TWanvRSV60vq7riilpD2AatRb3wE4rp1TPV1muT9hSvCIhWECGqDPIp_ait_CSFQY99y&usqp=CAE'),
(4, 'Puma', 'Caven Erkek Spor Ayakkabı', 'beyaz', '41', 'erkek', '749.00', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTCo3G302HSrAtU1tcD3pLXib2H-eaggW3jMYrmZVllqh0wNikUtJKIc09iqE5hmdaiAI1Wt1hXaEV42_c2RKRgft9zMfvr3orwbySItaDfRWLoPsf3guT8-Gk&usqp=CAE'),
(5, 'Puma', 'Caven Erkek Spor Ayakkabı', 'beyaz', '42', 'erkek', '749.00', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTCo3G302HSrAtU1tcD3pLXib2H-eaggW3jMYrmZVllqh0wNikUtJKIc09iqE5hmdaiAI1Wt1hXaEV42_c2RKRgft9zMfvr3orwbySItaDfRWLoPsf3guT8-Gk&usqp=CAE'),
(6, 'Adidas', 'Strutter Kadın Günlük Spor Ayakkabı', 'beyaz', '40', 'kadın', '819.99', 'https://www.samuraysport.com/Uploads/UrunResimleri/buyuk/adidas-strutter-kadin-gunluk-ayakkabi-b584f2.jpg'),
(13, 'Adidas', 'Strutter Kadın Günlük Spor Ayakkabı', 'pembe', '41', 'kadın', '819.99', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR2p6mQsIOvzfeW3Pto_0M3-tnQUhMM25NnflbTdQbm9wHJcpysY1wlC8TORKgZ_Or8ynoCVD-bETILN2m_Z8hTxI78rTwf_MX587_a6ZtejVfKlqURCxkXRw&usqp=CAE'),
(8, 'Adidas', 'Breaknet Erkek Spor Ayakkabı', 'beyaz', '43', 'erkek', '590.00', 'https://cdn.dsmcdn.com/ty119/product/media/images/20210525/20/91810204/89893960/2/2_org_zoom.jpg'),
(9, 'Nike', 'Air Force 1 Unisex Spor Ayakkabı', 'beyaz', '40', 'unisex', '499.99', 'https://cdn03.ciceksepeti.com/cicek/kcm80362878-1/XL/nike-air-force-1-low-beyaz-unisex-spor-ayakkabi-outlet-kcm80362878-1-1af73a6d67364469b9280cbf7ffb800a.jpg'),
(10, 'Nike', 'Air Force 1 Unisex Spor Ayakkabı', 'lacivert', '40', 'unisex', '499.99', 'http://www.lastikpabuc.com/Uploads/UrunResimleri/buyuk/air-force-1-07-aa4083-401-c08b.jpg'),
(11, 'Adidas', 'Breaknet Erkek Spor Ayakkabı', 'beyaz', '39', 'erkek', '590.00', 'https://cdn.dsmcdn.com/ty119/product/media/images/20210525/20/91810204/89893960/2/2_org_zoom.jpg'),
(12, 'Adidas', 'Breaknet Erkek Spor Ayakkabı', 'beyaz', '40', 'erkek', '590.00', 'https://cdn.dsmcdn.com/ty119/product/media/images/20210525/20/91810204/89893960/2/2_org_zoom.jpg'),
(14, 'Adidas', 'Strutter Kadın Günlük Spor Ayakkabı', 'pembe', '40', 'kadın', '819.99', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR2p6mQsIOvzfeW3Pto_0M3-tnQUhMM25NnflbTdQbm9wHJcpysY1wlC8TORKgZ_Or8ynoCVD-bETILN2m_Z8hTxI78rTwf_MX587_a6ZtejVfKlqURCxkXRw&usqp=CAE'),
(15, 'Nike', 'Air Force 1 Unisex Spor Ayakkabı', 'siyah', '39', 'unisex', '499.99', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ7UND1wD50e_UlBDc3GMNNJ0q7TWanvRSV60vq7riilpD2AatRb3wE4rp1TPV1muT9hSvCIhWECGqDPIp_ait_CSFQY99y&usqp=CAE'),
(16, 'Nike', 'Air Force 1 Unisex Spor Ayakkabı', 'siyah', '42', 'unisex', '499.99', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ7UND1wD50e_UlBDc3GMNNJ0q7TWanvRSV60vq7riilpD2AatRb3wE4rp1TPV1muT9hSvCIhWECGqDPIp_ait_CSFQY99y&usqp=CAE'),
(17, 'Nike', 'Air Force 1 Unisex Spor Ayakkabı', 'siyah', '43', 'unisex', '499.99', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ7UND1wD50e_UlBDc3GMNNJ0q7TWanvRSV60vq7riilpD2AatRb3wE4rp1TPV1muT9hSvCIhWECGqDPIp_ait_CSFQY99y&usqp=CAE'),
(18, 'Puma', 'Caven Erkek Spor Ayakkabı', 'beyaz', '37', 'erkek', '749.00', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTCo3G302HSrAtU1tcD3pLXib2H-eaggW3jMYrmZVllqh0wNikUtJKIc09iqE5hmdaiAI1Wt1hXaEV42_c2RKRgft9zMfvr3orwbySItaDfRWLoPsf3guT8-Gk&usqp=CAE'),
(19, 'Puma', 'Caven Erkek Spor Ayakkabı', 'beyaz', '38', 'erkek', '749.00', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTCo3G302HSrAtU1tcD3pLXib2H-eaggW3jMYrmZVllqh0wNikUtJKIc09iqE5hmdaiAI1Wt1hXaEV42_c2RKRgft9zMfvr3orwbySItaDfRWLoPsf3guT8-Gk&usqp=CAE'),
(20, 'Adidas', 'Strutter Kadın Günlük Spor Ayakkabı', 'beyaz', '41', 'kadın', '819.99', 'https://www.samuraysport.com/Uploads/UrunResimleri/buyuk/adidas-strutter-kadin-gunluk-ayakkabi-b584f2.jpg'),
(21, 'Adidas', 'Strutter Kadın Günlük Spor Ayakkabı', 'beyaz', '42', 'kadın', '819.99', 'https://www.samuraysport.com/Uploads/UrunResimleri/buyuk/adidas-strutter-kadin-gunluk-ayakkabi-b584f2.jpg'),
(22, 'Nike', 'Air Force 1 Unisex Spor Ayakkabı', 'beyaz', '39', 'unisex', '499.99', 'https://cdn03.ciceksepeti.com/cicek/kcm80362878-1/XL/nike-air-force-1-low-beyaz-unisex-spor-ayakkabi-outlet-kcm80362878-1-1af73a6d67364469b9280cbf7ffb800a.jpg'),
(23, 'Nike', 'Air Force 1 Unisex Spor Ayakkabı', 'beyaz', '41', 'unisex', '499.99', 'https://cdn03.ciceksepeti.com/cicek/kcm80362878-1/XL/nike-air-force-1-low-beyaz-unisex-spor-ayakkabi-outlet-kcm80362878-1-1af73a6d67364469b9280cbf7ffb800a.jpg'),
(24, 'Nike', 'Air Force 1 Unisex Spor Ayakkabı', 'beyaz', '42', 'unisex', '499.99', 'https://cdn03.ciceksepeti.com/cicek/kcm80362878-1/XL/nike-air-force-1-low-beyaz-unisex-spor-ayakkabi-outlet-kcm80362878-1-1af73a6d67364469b9280cbf7ffb800a.jpg'),
(25, 'Nike', 'Air Force 1 Unisex Spor Ayakkabı', 'beyaz', '38', 'unisex', '499.99', 'https://cdn03.ciceksepeti.com/cicek/kcm80362878-1/XL/nike-air-force-1-low-beyaz-unisex-spor-ayakkabi-outlet-kcm80362878-1-1af73a6d67364469b9280cbf7ffb800a.jpg'),
(26, 'Nike', 'Air Force 1 Unisex Spor Ayakkabı', 'lacivert', '38', 'unisex', '499.99', 'http://www.lastikpabuc.com/Uploads/UrunResimleri/buyuk/air-force-1-07-aa4083-401-c08b.jpg'),
(27, 'Nike', 'Air Force 1 Unisex Spor Ayakkabı', 'lacivert', '42', 'unisex', '499.99', 'http://www.lastikpabuc.com/Uploads/UrunResimleri/buyuk/air-force-1-07-aa4083-401-c08b.jpg'),
(28, 'Adidas', 'Breaknet Erkek Spor Ayakkabı', 'siyah', '40', 'erkek', '590.00', 'https://assets.adidas.com/images/w_600,f_auto,q_auto/d641f18ab0144d80b6a9abb10116a6ce_9366/Breaknet_Ayakkabi_Siyah_FX8708_01_standard.jpg'),
(29, 'Adidas', 'Breaknet Erkek Spor Ayakkabı', 'siyah', '41', 'erkek', '590.00', 'https://assets.adidas.com/images/w_600,f_auto,q_auto/d641f18ab0144d80b6a9abb10116a6ce_9366/Breaknet_Ayakkabi_Siyah_FX8708_01_standard.jpg'),
(30, 'Adidas', 'Breaknet Erkek Spor Ayakkabı', 'siyah', '38', 'erkek', '590.00', 'https://assets.adidas.com/images/w_600,f_auto,q_auto/d641f18ab0144d80b6a9abb10116a6ce_9366/Breaknet_Ayakkabi_Siyah_FX8708_01_standard.jpg'),
(31, 'Puma', 'Caven Erkek Spor Ayakkabı', 'siyah', '40', 'erkek', '749.00', 'https://cdn.cimri.io/image/1000x1000/pumacavensiyaherkeksporayakkab_544125520.jpg'),
(32, 'Puma', 'Caven Erkek Spor Ayakkabı', 'siyah', '41', 'erkek', '749.00', 'https://cdn.cimri.io/image/1000x1000/pumacavensiyaherkeksporayakkab_544125520.jpg'),
(33, 'Puma', 'Caven Erkek Spor Ayakkabı', 'siyah', '39', 'erkek', '749.00', 'https://cdn.cimri.io/image/1000x1000/pumacavensiyaherkeksporayakkab_544125520.jpg'),
(34, 'Puma', 'Caven Erkek Spor Ayakkabı', 'siyah', '37', 'erkek', '749.00', 'https://cdn.cimri.io/image/1000x1000/pumacavensiyaherkeksporayakkab_544125520.jpg'),
(35, 'Adidas', 'Strutter Kadın Günlük Spor Ayakkabı', 'beyaz', '37', 'kadın', '819.99', 'https://www.samuraysport.com/Uploads/UrunResimleri/buyuk/adidas-strutter-kadin-gunluk-ayakkabi-b584f2.jpg'),
(36, 'Nike', 'W Court Vision Kadın Spor Ayakkabı', 'beyaz', '38', 'kadın', '719.99', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRBx8ZCJv9nSGU1lT7rvWXQ7tzccmwTbK-sWZMxqhLBAGWq04ReHpd5CWiIxmUSaY4vjqzySc8lJb9WUzR6T-xNH_XZLz4kG1j2vYshH8LsY_YmTEYh1VLI&usqp=CAE'),
(37, 'Nike', 'W Court Vision Kadın Spor Ayakkabı', 'beyaz', '40', 'kadın', '719.99', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRBx8ZCJv9nSGU1lT7rvWXQ7tzccmwTbK-sWZMxqhLBAGWq04ReHpd5CWiIxmUSaY4vjqzySc8lJb9WUzR6T-xNH_XZLz4kG1j2vYshH8LsY_YmTEYh1VLI&usqp=CAE'),
(38, 'Nike', 'W Court Vision Kadın Spor Ayakkabı', 'beyaz', '41', 'kadın', '719.99', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRBx8ZCJv9nSGU1lT7rvWXQ7tzccmwTbK-sWZMxqhLBAGWq04ReHpd5CWiIxmUSaY4vjqzySc8lJb9WUzR6T-xNH_XZLz4kG1j2vYshH8LsY_YmTEYh1VLI&usqp=CAE'),
(39, 'Nike', 'Air Huarache Kadın Spor Ayakkabı', 'beyaz', '37', 'kadın', '949.99', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b45b2241-4f3e-4c5b-a0f5-80fe567b8c03/air-huarache-ayakkab%C4%B1s%C4%B1-PhKXJF.png'),
(40, 'Adidas', 'Ozweego Unisex Spor Ayakkabı', 'beyaz', '41', 'unisex', '999.99', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/6bbd0d915ea441e29655adfb008cb1d0_9366/OZWEEGO_Ayakkabi_Beyaz_GX3324_01_standard.jpg'),
(41, 'Adidas', 'Ozweego Unisex Spor Ayakkabı', 'beyaz', '40', 'unisex', '999.99', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/6bbd0d915ea441e29655adfb008cb1d0_9366/OZWEEGO_Ayakkabi_Beyaz_GX3324_01_standard.jpg'),
(42, 'Adidas', 'Ozweego Unisex Spor Ayakkabı', 'beyaz', '42', 'unisex', '999.99', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/6bbd0d915ea441e29655adfb008cb1d0_9366/OZWEEGO_Ayakkabi_Beyaz_GX3324_01_standard.jpg'),
(43, 'Nike', 'Air Huarache Kadın Spor Ayakkabı', 'beyaz', '38', 'kadın', '949.99', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b45b2241-4f3e-4c5b-a0f5-80fe567b8c03/air-huarache-ayakkab%C4%B1s%C4%B1-PhKXJF.png'),
(44, 'Nike', 'Air Huarache Kadın Spor Ayakkabı', 'beyaz', '39', 'kadın', '949.99', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b45b2241-4f3e-4c5b-a0f5-80fe567b8c03/air-huarache-ayakkab%C4%B1s%C4%B1-PhKXJF.png'),
(45, 'Nike', 'Air Huarache Kadın Spor Ayakkabı', 'beyaz', '40', 'kadın', '949.99', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b45b2241-4f3e-4c5b-a0f5-80fe567b8c03/air-huarache-ayakkab%C4%B1s%C4%B1-PhKXJF.png'),
(46, 'Adidas', 'Ozweego Unisex Spor Ayakkabı', 'beyaz', '37', 'unisex', '999.99', 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/6bbd0d915ea441e29655adfb008cb1d0_9366/OZWEEGO_Ayakkabi_Beyaz_GX3324_01_standard.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

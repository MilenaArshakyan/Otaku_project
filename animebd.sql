SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Table structure for table `Animes`
--

DROP TABLE IF EXISTS `Animes`;
CREATE TABLE IF NOT EXISTS `Animes` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Img` varchar(255) NOT NULL,
  `Video` varchar(255) NOT NULL,
  `Genres` varchar(255) NOT NULL,
  `ReleaseDate` varchar(150) NOT NULL,
  `Type` varchar(150) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Animes`
--

INSERT INTO `Animes` (`Id`, `Title`, `Img`, `Video`, `Genres`, `ReleaseDate`,`Type`) VALUES 
(1, 'Դրագոն Բոլլ Զ', 'media/covers/yolo.jpg', 'media/movies/DBZ_Trailer.mp4', 'ֆենտեզի, մարտաֆիլմ, արկածներ', 'ապրիլ 1989', 'ֆիլմ'),
(2, 'Քայլերի Ձայն', 'media/covers/silent voice.jpg', 'media/movies/A Silent Voice - Official Trailer.mp4', 'ռոմանտիկա, դրամա, մելոդրամա','	
սեպտեմբեր 2016','ֆիլմ'),
(3, 'Արցունքների միջով ես կատու եմ ձևանում', 'media/covers/a whisker away.jpg', 'media/movies/A Whisker Away _ Official Trailer _ Netflix.mp4', 'մելոդրամա, ֆանտազիա, արկածային','հունիս 2020','ֆիլմ'),
(4, 'Դևերին ոչնչացնող թուրը', 'media/covers/Demon Slayer - Kimetsu no Yaiba.jpg', 'media/movies/Demon Slayer - Kimetsu no Yaiba.mp4', 'մարտաֆիլմ, Ֆանտազիա','փետրվար 2016','Ֆիլմ'),
(5, 'Վան Փիս: Կարմիր', 'media/covers/one piece red.webp', 'media/movies/one piece red.mp4', 'մարտաֆիլմ, կատակերգություն, արկածային', 'Հուլիս 2022', 'Ֆիլմ'),
(6, 'Ուրվականներից քշվածները', 'media/covers/spirited away.jpg', 'media/movies/Spirited Away - Official Trailer.mp4', 'ֆանտազիա, արկածային, ընտանեկան', 'հուլիս 2001 թ', 'Ֆիլմ'),
(7, 'Տղան և հրեշը', 'media/covers/the boy and the beast.jpg', 'media/movies/The Boy and The Beast.mp4', 'մարտաֆիլմ, Ֆանտաստիկա','հուլիս 2015', 'Ֆիլմ'),
(8, 'Կայծոռիկների գերեզմանը', 'media/covers/grave of the fireflies.jpeg', 'media/movies/Grave of the Fireflies.mp4', 'դրամա, ռազմական, պատմական', 'ապրիլ 1988', 'Ֆիլմ'),
(9, 'Արքայադուստր Մոնոնոկենը', 'media/covers/princess monoke.jpg', 'media/movies/Princess Mononoke - Official Trailer.mp4', 'դրամա, Ֆանտաստիկա' , 'հուլիս 1997', 'Ֆիլմ'),
(10, 'Վայոլեթ Էվերգարդենը', 'media/covers/violet evergarden the movie.jpeg', 'media/movies/Violet Evergarden THE MOVIE (2020) - Official Trailer.mp4', 'դրամա, մելոդրամա', 'հունվար 2018', 'Ֆիլմ'),
(11, 'Երբ Մարնին այնտեղ էր', 'media/covers/when marnie was there.jpeg', 'media/movies/When Marnie Was There - Official Trailer.mp4', 'դրամա, Ֆանտազիա', 'հուլիս 2014', 'Ֆիլմ'),
(12, 'Արիետտաի գաղտնի աշխարհը', 'media/covers/arrietty2.webp', 'media/movies/arriety.mp4', 'Ֆանտազիա', 'հուլիսի 2010', 'ֆիլմ'),
(13, 'Հաուլի թափառող դղյակը', 'media/covers/howls moving castel.jpg', 'media/movies/Howl_s Moving Castle - Official Trailer.mp4', 'ֆանտազիա, մելոդրամա, արկածային', 'նոյեմբեր 2004', 'Ֆիլմ'),
(14, 'Կախարդուհու առաքման ծառայությունը', 'media/covers/kikis delivery service.jpeg', 'media/movies/Kiki_s Delivery Service - Official Trailer.mp4', 'ֆենտեզի, արկածային', 'հուլիս 1989', 'Ֆիլմ'),
(15, 'Իմ հարևան Տոտորոն', 'media/covers/totoro.jpeg', 'media/movies/My Neighbor Totoro - Official Trailer.mp4', 'ֆենթեզի, դրամա', 'ապրիլ 1988', 'Ֆիլմ'),
(16, 'Սրտի շշուկը', 'media/covers/whisper of the heart.jpeg', 'media/movies/Whisper of the Heart - Official Trailer.mp4', 'դրամա, մելոդրամա', 'հուլիս 1995', 'Ֆիլմ'),
(17, 'Դետեկտիվ Կոնանը', 'media/covers/detective conan tdn.jpg', 'media/movies/DETECTIVE CONAN_ THE DARKEST NIGHTMARE - Official Trailer (In cinemas 7 July).mp4', 'մարտաֆիլմ, դետեկտիվ, արկածային', 'ապրիլ 2016', 'Ֆիլմ'),
(18, 'Պապրիկա', 'media/covers/paprika.jpg', 'media/movies/Paprika Trailer (HD 1080p).mp4', 'Ֆանտաստիկա,դետեկտիվ', 'սեպտեմբեր 2006', 'Ֆիլմ'),
(19, 'Ակիրա', 'media/covers/akira.jpg', 'media/movies/Akira (1988) Legendary.mp4', 'Ֆանտաստիկա, մարտաֆիլմ, դետեկտիվ', 'հուլիս 1988', 'Ֆիլմ'),
(20, 'Ես ուզում եմ ուտել քո ենթաստամոքսային գեղձը', 'media/covers/i want to eat your pancreas.webp', 'media/movies/I Want To Eat Your Pancreas - Official Theatrical Trailer.mp4', 'դրամա, մելոդրամա', 'հունիս 2015', 'Ֆիլմ'),
(21, 'Նրբագեղ բառերի այգի', 'media/covers/a garden of words.jpg', 'media/movies/The Garden of Words - Official Trailer.mp4', 'ռոմանտիկա, մելոդրամա', 'մայիս 2013', 'Ֆիլմ'),
(22, 'Քո անունը', 'media/covers/your name.jpeg', 'media/movies/Your Name (Japanese) - Coming Soon Trailer.mp4', 'ռոմանտիկա, դրամա', 'հուլիս 2016', 'Ֆիլմ'),
(23, 'Եղանակի երեխան','media/covers/weathering with you.webp','media/movies/Weathering With You.mp4', 'ռոմանտիկա, դրամա', 'հուլիս 2019', 'Ֆիլմ'),
(24, 'Հինգ սանտիմետր վայրկյանում', 'media/covers/5 centimeters per second.jpg', 'media/movies/5 centimeters per second.mp4', 'ռոմանտիկա, դրամա', 'մարտ 2007', 'Ֆիլմ');

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 12:05 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formula1`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendario`
--

CREATE TABLE `calendario` (
  `id` int(50) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `circuito` varchar(100) NOT NULL,
  `podio` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calendario`
--

INSERT INTO `calendario` (`id`, `fecha`, `circuito`, `podio`) VALUES
(1, '03 - 05 - March', 'Sakhir - Bahrain', '1° Verstappen -\r\n2° Perez -\r\n3° Alonso'),
(2, '17 - 19 - March', 'Saudi Arabia - Jeddah', '1° Perez -\r\n2° Verstappen -\r\n3° Alonso\r\n'),
(3, '31 - 02 - March - Apr', 'Australia - Albert Park', '1° Verstappen -\r\n2° Perez -\r\n3° Alonso'),
(4, '28 - 30 - Apr', 'Azerbaijan - Baku', '1° Perez -\r\n2° Verstappen -\r\n3° Leclerc'),
(5, '05 - 07 - May', 'United States - Miami', '1° Verstappen -\r\n2° Perez -\r\n3° Alonso'),
(6, '19 - 21 - May', 'Italy - Imola', 'Race Cancel'),
(7, '26 - 28 - May', 'Monaco - Monte Carlo', '1° Verstappen -\r\n2° Alonso -\r\n3° Ocon'),
(8, '02 - 04 - Jun', 'Sapin - Barcelona-Catalunya', '1° Verstappen -\r\n2° Hamilton -\r\n3° Russell'),
(9, '16 - 18 - Jun', 'Canada - Gilles Villeneuve', '1° Verstappen -\r\n2° Alonso -\r\n3° Hamilton'),
(10, '30 - 02 - Jun - Jul', 'Austria - Red Bull Ring', '1° Verstappen -\r\n2° Leclerc -\r\n3° Perez'),
(11, '07 - 09 - Jul', 'Great Britain - Silverstone', '1° Verstappen -\r\n2° Norris -\r\n3° Hamilton'),
(12, '21 - 23 - Aug', 'Hungary - Hungaroring', '1° Verstappen -\r\n2° Norris -\r\n3° Perez'),
(13, '28 - 30 - Jul', 'Belgium - Spa-Francorchamps', '1° Verstappen -\r\n2° Perez -\r\n3° Leclerc'),
(14, '25 - 27 - Aug', 'Netherlands - Zandvoort', '1° Verstappen -\r\n2° Alonso -\r\n3° Gasly'),
(15, '01 - 03 - Sep', 'Italy - Monza', '1° Verstappen -\r\n2° Perez -\r\n3° Sainz'),
(16, '15 - 17 - Sep', 'Singapore - Marina Bay', '1° Sainz -\r\n2° Norris -\r\n3° Hamilton'),
(17, '22 - 24 - Sep', 'Japon - Suzuka ', '1° Verstappen -\r\n2° Norris -\r\n3° Piastri'),
(18, '06 - 08 - Oct', 'Qatar - Lusail ', '1° Vestappen -\r\n2° Piastri -\r\n3° Norris'),
(19, '20 - 22 - Octubre', 'United States - Austin', ''),
(20, '27 - 29 - Octubre', 'México - Autódromo Hermanos Rodríguez', ''),
(21, '03 - 05 - Noviembre', 'Brasil - Interlagos', ''),
(22, '16 - 18 - Noviembre', 'United States - Las Vegas', ''),
(23, '24 - 26 - Noviembre', 'Abu Dhabi - Yas Marina', '');

-- --------------------------------------------------------

--
-- Table structure for table `escuderias`
--

CREATE TABLE `escuderias` (
  `id` int(11) NOT NULL,
  `equipos` varchar(250) NOT NULL,
  `img` varchar(50) DEFAULT NULL,
  `description` varchar(2000) NOT NULL,
  `puntos_equipo` int(11) NOT NULL,
  `pos_equipos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `escuderias`
--

INSERT INTO `escuderias` (`id`, `equipos`, `img`, `description`, `puntos_equipo`, `pos_equipos`) VALUES
(1, 'Red Bull', 'img/63476a959a57ef.png', 'Red Bull no era ajeno a la F1, como patrocinador, antes de ingresar formalmente como equipo oficial en 2004. Sin embargo, la escala de su éxito durante la década siguiente fue asombrosa. Después de un  primer podio en 2006, el equipo recuperó su ritmo en 2009, logrando seis victorias y segundo en la clasificación de constructores. Durante las siguientes cuatro temporadas fueron un tour de force, consiguiendo dobles títulos consecutivos entre 2010 y 2013, con Sebastian Vettel emergiendo como el cuádruple campeón más joven del deporte. Ahora están recuperando esa gloria con un talento igualmente emocionante: uno llamado Max Verstappen.', 583, 1),
(2, 'Mercedes AMG F1', 'img/63476aa90203af.png', 'El renacimiento moderno de Mercedes en la F1 comenzó con la creación de un equipo oficial para 2010, la plataforma para un ascenso meteórico en el orden de los Grandes Premios. El equipo generó un gran entusiasmo desde el principio con el sensacional regreso de Michael Schumacher, pero los titulares pronto siguieron en la pista: tres podios en su temporada de debut, todos gracias a Nico Rosberg, quien luego logró un doblete de pole y victoria en China en 2012. La temporada siguiente fue emparejado con Lewis Hamilton, y el dúo protagonizó algunas batallas épicas por el título cuando las Flechas de Plata arrasaron con todo lo que se les presentó para convertirse en una de las fuerzas más dominantes de la era moderna de la F1. Y con Hamilton ahora acompañado por el prometedor George Russell, Mercedes sigue siendo en gran medida el equipo al que todos quieren vencer.', 273, 2),
(3, 'Ferrari', 'img/634765aa6a7222.png', 'Para muchos, Ferrari y la Fórmula 1 se han vuelto inseparables. El único equipo que ha competido en todas las temporadas desde que comenzó el campeonato mundial, el Cavallino Rampante ha crecido desde el humilde sueño del fundador Enzo Ferrari hasta convertirse en una de las marcas más icónicas y reconocidas del mundo. El éxito llegó rápidamente de la mano de Alberto Ascari y John Surtees, y continuó –en tiempos de escasez– con Niki Lauda en la década de 1970 y luego Michael Schumacher en la década de 2000, cuando Ferrari consiguió cinco dobletes consecutivos sin precedentes, asegurando su estatus como el equipo más exitoso y condecorado en la historia de la F1.', 228, 3),
(4, 'Aston Martin', 'img/63f476ab5c263f.png', 'La incursión original de Aston Martin en la Fórmula 1 (hace más de medio siglo) duró sólo cinco carreras. Pero esta vez la cosa va en serio. Este equipo de F1 no es ajeno al éxito, ya que ganó con su forma original de Jordan y más recientemente como Racing Point en 2020. Reconocido por su capacidad para superar su peso, y ahora con un dos veces campeón liderando su alineación de pilotos. , Aston Martin es un equipo a seguir.', 217, 4),
(5, 'McLaren', 'img/6347h6abfefe3e.png', 'Desde que ingresó al deporte en 1966 bajo la guía y el incansable esfuerzo del fundador epónimo Bruce, el éxito de McLaren ha sido impresionante. Cinco brillantes décadas han dado lugar a innumerables victorias, poles y podios, sin mencionar ocho campeonatos de constructores. Es más, algunos de los mejores pilotos de este deporte se hicieron famosos con el equipo, incluidos Emerson Fittipaldi, Ayrton Senna, Mika Hakkinen y Lewis Hamilton.', 115, 5),
(6, 'Alpine', 'img/63476ayc5c7d32.png', 'Puede que Alpine sea un nombre relativamente nuevo en la Fórmula 1, pero la famosa división de autos deportivos de Renault tiene mucha herencia en el deporte del motor. El cambio de marca del equipo en 2021 marcó el siguiente paso en el resurgimiento de Renault en la F1, iniciado en 2016 con la adquisición del entonces equipo Lotus. Los ganadores de carreras con su nueva apariencia, los podios regulares y la lucha por el título deben ser su próximo objetivo.', 73, 6),
(7, 'Williams', 'img/63476ad0b24675.png', 'Impulsado por la brillantez y la pasión del fallecido Sir Frank Williams, Williams creció desde sus humildes comienzos hasta convertirse en un gigante de la Fórmula 1, sin rival, excepto Ferrari y McLaren, en términos de éxito duradero. Durante las últimas cuatro décadas, el equipo ha acumulado victorias en Grandes Premios y gloria en campeonatos, y en el proceso ha nutrido a algunos de los mayores talentos del deporte, tanto dentro como fuera de la cabina. Y, tras la decisión de la familia Williams de hacerse a un lado tras la venta del equipo en 2020 a Dorilton Capital, ha comenzado una nueva era', 21, 7),
(8, 'Haas', 'img/63476ad8b9d420.png', 'Haas, el equipo más joven de la parrilla, hizo su impresionante debut en 2016 y, en el proceso, se convirtió en el primer equipo de F1 liderado exclusivamente por estadounidenses en tres décadas. Fundada por el industrial Gene Haas, tiene su sede en los Estados Unidos en las mismas instalaciones de Kannapolis, Carolina del Norte, que su equipo ganador del campeonato de la Copa Sprint de NASCAR, Stewart-Haas Racing. El equipo impulsado por Ferrari, dirigido por el carismático Guenther Steiner, también tiene una fábrica en el Reino Unido en Banbury.', 12, 8),
(9, 'Alfa Romeo', 'img/63476ae4c35cdd.png', 'El nombre Alfa Romeo cuenta con conexiones con la Fórmula 1 que se remontan a los inicios del campeonato en 1950. Un avance rápido hasta el siglo XXI y el toque italiano se combina con la sensibilidad suiza en una nueva era para el equipo anteriormente conocido como Sauber.\r\nHabiendo disfrutado de un éxito considerable en el mundo de los autos deportivos, donde ayudó a nutrir los talentos emergentes de las futuras estrellas de la F1 Michael Schumacher y Heinz-Harald Frentzen, Peter Sauber guió a su equipo homónimo a la F1 en 1993.\r\nDesde entonces, el equipo se ha establecido como un pilar de la parrilla, convirtiéndose en ganadores de carreras bajo la breve propiedad de BMW y desarrollando una reputación bien ganada no sólo por producir autos competitivos, sino también por desarrollar pilotos jóvenes.', 10, 9),
(10, 'AlphaTauri', 'img/63476b340f9095.png', 'Establecido en 2006 como un equipo en el que los jóvenes pilotos del prodigioso grupo de talentos de Red Bull podían iniciarse en la F1, AlphaTauri (originalmente llamado Toro Rosso) se formó a partir de las cenizas del valiente equipo Minardi. Sebastian Vettel dio validez al enfoque casi de inmediato, logrando una victoria de cuento de hadas en 2008, antes de disfrutar del éxito en el campeonato mundial con el equipo matriz, Red Bull Racing. Hoy en día, el espíritu de fomentar el talento sigue siendo válido, aunque el equipo italiano ya no es simplemente un \'equipo B\' sino un constructor por derecho propio.', 3, 10),
(20, 'Audi', NULL, 'kjgdfgch', 600, 11),
(25, 'Bugatti', NULL, 'kjhgvfdxfcvgbhjn', 250, 12);

-- --------------------------------------------------------

--
-- Table structure for table `pilotos`
--

CREATE TABLE `pilotos` (
  `id` int(50) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `campeonato` int(200) NOT NULL,
  `puntos` int(100) NOT NULL,
  `id_escuderia` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pilotos`
--

INSERT INTO `pilotos` (`id`, `nombre`, `descripcion`, `campeonato`, `puntos`, `id_escuderia`) VALUES
(2, 'Max Verstasppen', 'Es Max por nombre y Max por naturaleza.\r\nVerstappen, que llegó como el competidor más joven de la Fórmula 1 con solo 17 años.\r\nEl holandés con cara de niño y corazón de león tomó al Toro Rosso (y luego al Red Bull) por los cuernos con su instintivo estilo de carrera.\r\nEl anotador de puntos más joven de la F1 pronto se convirtió en el ganador de carreras más joven (a la edad de 18 años y 228 días). \r\nDespués de convertirse en el primer campeón mundial de Holanda con sólo 24 años, las expectativas para el líder de la próxima generación están por las nubes, pero con Verstappen existe la sensación de que el cielo es el límite.\r\n', 1, 364, 1),
(3, 'Sergio Perez', 'Es el luchador con un toque gentil de la tierra de la Lucha Libre.\r\nLa reputación de Pérez en la F1 se ha construido sobre enfoques opuestos a las carreras de Gran Premio. Por un lado, es un combatiente contundente que se abre camino entre el grupo y llega a los puntos, por otro lado, Pérez es un operador suave, un maestro en el manejo de neumáticos para obtener un rendimiento extra y darle ventaja en la estrategia.\r\nEn Sakhir 2020 también igualó al héroe y compatriota Pedro Rodríguez al tomar la bandera a cuadros en primer lugar, una actuación que le valió un asiento con los aspirantes al título Red Bull.\r\nAllí brindó un fuerte apoyo a las campañas ganadoras del campeonato de 2021 y 2022 de Max Verstappen. Aunque puede que no estén aseguradas más victorias, especialmente con Verstappen como compañero de equipo, pero Pérez, trabajando duro y corriendo con el corazón, sí lo está.\r\n', 2, 219, 2),
(4, 'Fernando Alonso', 'Se necesitaba a alguien muy especial para derrocar a la leyenda de Ferrari, Michael Schumacher, de su trono, y el hecho de que fue Fernando Alonso quien lo hizo, dice todo lo que necesitas saber sobre el español.\r\nDespués de dos años alejado de las carreras de Fórmula 1, y con dos victorias en Le Mans en el bolsillo, Alonso regresó con Alpine en 2021. Su velocidad y determinación no disminuyeron, volvió al podio ese año, pero frustrado por la poca confiabilidad y la falta de contrato a largo plazo, así es como en la temporada siguiente optó por abandonar el barco una vez más.\r\nAhora Alonso espera que Aston Martin sea el equipo con el que finalmente vuelva a ganar, ya que tiene asuntos pendientes con la F1.', 3, 170, 3),
(5, 'Lewis Hamilton', '\'Still I Rise\': estas son las palabras estampadas en la parte posterior del casco de Lewis Hamilton y tatuadas en sus hombros, y desde que aniquiló las expectativas con una de las mejores actuaciones de novato en la historia de la F1 en 2007, eso es literalmente todo lo que ha hecho: ascender a encabezó la lista de poles de todos los tiempos por delante de su héroe Ayrton Senna, saltó al primer lugar en la columna de victorias superando al inimitable Michael Schumacher y luego igualó los siete títulos mundiales del legendario alemán.', 4, 164, 4),
(6, 'Carlos Sainz', 'Es el matador de la realeza del hipismo madrileño. \r\nDespués de ingresar al Bull Ring de la F1 junto a Max Verstappen en Toro Rosso en 2015, Sainz rápidamente mostró su espíritu de lucha. Un corredor tenaz, pone el auto al límite mientras se abre paso entre el pelotón.\r\nDespués de seguir las huellas de neumáticos de su famoso padre, Sainz ha tenido grandes botas que llenar: primero en McLaren, donde reemplazó a su héroe de la infancia, Fernando Alonso, y ahora en Ferrari, en el asiento que antes pertenecía a Sebastian Vettel. ', 5, 117, 5),
(7, 'Charles Leclerc', 'Al ascender a la F1 en 2018, Leclerc mostró destellos de ritmo vertiginoso los sábados y brillantez en las carreras los domingos, arrastrando su Sauber más allá de sus límites y ganándose un asiento de carrera en Ferrari que el dinero no se puede comprar para 2019, poniéndose en los zapatos. del último campeón del mundo de la Scuderia, Kimi Raikkonen. \r\nLas temporadas 2020 y 21 dieron pocos frutos para Ferrari, pero Leclerc mantuvo su determinación de emerger como un verdadero contendiente al título en 2022. Con tres victorias, 11 podios y nueve poles, fue el único hombre capaz de luchar consistentemente por el campeón. Max Verstappen.', 6, 111, 6),
(8, 'George Russell', 'Es el conductor con el lema: “En caso de duda, vaya a toda velocidad”. George Russell lo ha vivido a lo largo de su carrera en la F1 hasta la fecha, superando a su experimentado compañero de equipo Robert Kubica en los 21 Grandes Premios de su temporada de novato, volviendo a colocar a Williams en el podio en 2021 y logrando su primera victoria con Mercedes en 2022.', 7, 109, 7),
(9, 'Lando Norris', 'McLaren tuvo al adolescente británico en sus libros durante dos años antes de acelerarlo hacia la galaxia de estrellas de la F1 en 2019. Norris, un petardo en su carrera junior, con predilección por las poles y las peleas rueda con rueda, no dejó ellos abajo.\r\nEn 2020 consiguió su primer podio, y le siguieron más en las dos temporadas siguientes (estuvo a punto de ganar en Rusia 2021), mientras dominaba a otro compañero de equipo de mayor rango, Daniel Ricciardo, para establecerse firmemente en el nivel superior de la F1.', 8, 79, 8),
(10, 'Lance Stroll', 'troll tiene el potencial de ser un elemento fijo a largo plazo en la Fórmula 1, como lo ilustra ampliamente su primera pole y otros dos podios en 2020.\r\nEsto se produjo después de que su padre Lawrence liderara el consorcio que se hizo cargo de Force India a mediados de la temporada 2018 y luego lo transformara de Racing Point a Aston Martin para 2021', 9, 47, 9),
(11, 'Pierre Gasly', 'El piloto francés fue convocado para debutar en 2017 en Malasia en lugar de Daniil Kvyat y, tras demostrar su valía, fue nombrado piloto de Toro Rosso al año siguiente. Tras 21 carreras más en su incipiente carrera, Gasly ascendió nuevamente, esta vez para reemplazar al pez gordo de Red Bull, Daniel Ricciardo.\r\nCuando el impulso de AlphaTauri se estancó en 2022, Gasly decidió que era hora de un cambio, en la forma del equipo francés Alpine, con su compatriota francés y viejo adversario, Esteban Ocon, como compañero de equipo. La pregunta ahora es si podrá recuperar el impulso y tener otra oportunidad de llegar a lo más alto de la F1.', 10, 37, 10),
(12, 'Esteban Ocon', 'Ocon esperó el momento oportuno y, después de un año al margen como piloto reserva de Mercedes, encontró el camino de regreso a un asiento de carrera para 2020 con Renault, que se convirtió en Alpine para 2021, cuando su espera finalmente dio sus frutos, ya que anotó. su primera victoria en F1 (y la de la famosa marca francesa).\r\nNada en la carrera de Ocon en el deporte del motor ha sido fácil, pero si Ocon ha logrado regresar a la parrilla de F1 y subir al podio, es gracias a una combinación de confianza en sí mismo, determinación y un talento que está a la altura de los mejores.', 0, 4, 11),
(13, 'Oscar Piastri', 'Subcampeón británico de F4. Campeón de Fórmula Renault. Campeón de F3. Campeón de F2 (por más de 50 puntos). Piastri no se limitó a subir la escalera del monoplaza júnior, sino que la subió para llamar ruidosamente a la puerta de la F1.\r\n\r\nPiastri fue tan impresionante que dos equipos de F1 se pelearon por sus servicios para 2023, añadiendo una nueva dimensión al mercado de pilotos y a la llamada \'temporada tonta\'.\r\nDespués de una reunión de la Junta de Reconocimiento de Contratos, se confirmó que era McLaren, y no su patrocinador de larga data Alpine, quien tenía derecho a los servicios de Piastri, y con quien el joven de 21 años está listo para hacer realidad su sueño de F1.', 12, 36, 12),
(14, 'Alexander Albon', 'Graduado en la gran liga de F1 junto con otro contemporáneo, Lando Norris, en 2019, Albon habló en la pista con Toro Rosso en las primeras carreras, lo que le valió un ascenso a mitad de temporada a Red Bull Racing.\r\nAlbon, un elegante adelantador con mentalidad de campeonato, no se inmutó al asociarse con Max Verstappen durante la segunda mitad de su temporada de novato, logrando resultados entre los seis primeros en ocho de sus nueve carreras de 2019 con Red Bull.\r\nEl desafío de Albon ahora es grande: aprovechar al máximo una segunda oportunidad poco común en la F1.', 13, 21, 13),
(15, 'Nico Hulkenberg', 'Cuando alcanzó el récord no deseado de más salidas de carreras sin un podio, se rió de ello y lo consideró el comienzo de la \"era Hulkenberg\".\r\nAfortunadamente, incluso después de que Renault lo abandonara a finales de 2019, la era del popular alemán continuó con algunas unidades suplentes (y destacadas) en 2020 y 2022', 14, 9, 14),
(16, ' Valtteri Bottas', 'Bottas subió un nivel en 2019, cuatro victorias le aseguraron un convincente segundo lugar en el campeonato detrás de Hamilton, pero eso se redujo a dos victorias frente a las 11 de su compañero de equipo en 2020 y luego solo una en 2021, lo que llevó a Mercedes a dejarlo después de cinco temporadas.\r\nEn 2022, comenzó un nuevo capítulo en su carrera en la F1, reemplazando a su compatriota Kimi Raikkonen para liderar una alineación completamente nueva en Alfa Romeo y tomando al novato chino Zhou Guanyu bajo su protección.', 15, 6, 15),
(17, 'Zhou Guanyu ', 'Su paso a la academia de Renault para 2019 coincidió con su debut en la Fórmula 2, con Zhou fortaleciendo su confianza en la serie a través de múltiples victorias y poles a lo largo de tres temporadas, lo que lo llevó a competir por el título de pilotos en 2021. \r\nEso fue suficiente para convencer al director del equipo Alfa Romeo, Fred Vasseur, de confiar en Zhou para 2022 y presentarlo junto al ex piloto de Mercedes Valtteri Bottas, lo que le permitió a Zhou lograr su sueño de competir en F1, e incluso ver cómo le va frente a su rival. propio héroe de la infancia, Fernando Alonso.', 16, 4, 16),
(18, 'Yuki Tsunoda ', 'Después de un comienzo lento en la F3, seguido de una campaña de debut enormemente impresionante en la F2 que lo vio terminar tercero en el campeonato y conseguir tres victorias en el camino, Tsunoda demostró que tenía la velocidad y el arte de competir para abrirse camino hacia la cima. Cuadrícula F1.\r\nPuede que no se haya adaptado a las carreras de Gran Premio tan rápido como lo hizo a la F2, pero con el tiempo aún podría encontrarse luchando en la parte más dura con un Red Bull.', 17, 3, 17),
(19, 'Kevin Magnussen ', 'Después de un año en Estados Unidos, compitiendo en Indy y autos deportivos, entre otras cosas, regresó al equipo estadounidense en 2022, consiguiendo su primera pole position en el Gran Premio de Brasil.\r\nSus maniobras sustanciosas y su enfoque descarado le han ganado una reputación de chico malo en la pista, algo que todavía lo deja desconcertado. Fuera del coche, Magnussen se muestra relajado y afable. Después de todo, tiene el trabajo de sus sueños y sólo está aquí para competir.', 18, 2, 18),
(20, 'Logan Sargeant ', 'Desde el quinteto de apariciones de Alexander Rossi con Manor al final de la temporada 2015, un estadounidense no ha aparecido en la parrilla de F1, y Sargeant espera cambiar eso en su primera temporada.\r\nY con tres carreras que se celebrarán en los EE. UU. en 2023, la última estrella de la F1 de Estados Unidos contará con un gran apoyo local durante su campaña de novato.', 19, 0, 19),
(21, 'Liam Lawson', '', 20, 0, 20),
(30, 'aaaaaaaaaaaaaaaaaaaaa', '', 20, 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'webadmin@admin.com', '$2a$12$JAlNkulDau/d5oimrog0f.Y1G7k4LuGOqyxXgjQkzlIVvQzdkB8qi'),
(3, 'admin@admin.com', '$2a$12$DvsTDLzjxueyPWfbszgIM.OscyNZaPEVYCa4LKC8duchmL4EVYJQ6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `escuderias`
--
ALTER TABLE `escuderias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pilotos`
--
ALTER TABLE `pilotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_escuderia` (`id_escuderia`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendario`
--
ALTER TABLE `calendario`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `escuderias`
--
ALTER TABLE `escuderias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pilotos`
--
ALTER TABLE `pilotos`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

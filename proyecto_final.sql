SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `appointment` (
  `codcit` int(11) NOT NULL,
  `dates` date NOT NULL,
  `hour` time NOT NULL,
  `codpaci` int(11) NOT NULL,
  `coddoc` int(11) NOT NULL,
  `codespe` int(11) NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `appointment`
--

INSERT INTO `appointment` (`codcit`, `dates`, `hour`, `codpaci`, `coddoc`, `codespe`, `estado`, `fecha_create`) VALUES
(2, '2024-12-5', '09:00:00', 1, 2, 4, '1', '2024-12-5 05:57:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers-paciente`
--

CREATE TABLE `customers` (
  `codpaci` int(11) NOT NULL,
  `dnipa` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nombrep` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellidop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `seguro` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `tele` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`codpaci`, `dnipa`, `nombrep`, `apellidop`, `seguro`, `tele`, `sexo`, `usuario`, `clave`, `cargo`, `estado`, `fecha_create`) VALUES
(1, '75745848', 'Manuel', 'Aparicio', 'Si', '999993939', 'Masculino', 'manu', 'b0baee9d279d34fa1dfd71aadb908c3f', '2', '1', '2024-12-02 02:56:18'),
(2, '98584548', 'Leonardo', 'Pazos', 'Si', '959595959', 'Masculino', 'leonar1', 'b0baee9d279d34fa1dfd71aadb908c3f', '2', '1', '2024-12-02 06:30:20');
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `coddoc` int(11) NOT NULL,
  `dnidoc` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `nomdoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apedoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `codespe` int(11) NOT NULL,
  `sexo` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `telefo` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `fechanaci` date NOT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `naciona` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `estado` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`coddoc`, `dnidoc`, `nomdoc`, `apedoc`, `codespe`, `sexo`, `telefo`, `fechanaci`, `correo`, `naciona`, `estado`, `fecha_create`) VALUES
(2, '74747384', 'Manuel', 'Alban', 4, 'Masculino', '998766554', '1995-09-09', '', 'Peruana(o)', '1', '2024-12-02 03:08:38'),
(3, '78493949', 'jose', 'martinez juarez', 3, 'Masculino', '988833333', '2022-03-30', '', 'Peruana(o)', '1', '2024-12-4 01:43:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `codhor` int(11) NOT NULL,
  `nomhor` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `coddoc` int(11) NOT NULL,
  `estado` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`codhor`, `nomhor`, `coddoc`, `estado`, `fere`) VALUES
(1, 'solo martes', 3, '1', '2024-12-10 01:46:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `specialty` (
  `codespe` int(11) NOT NULL,
  `nombrees` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `specialty`
--

INSERT INTO `specialty` (`codespe`, `nombrees`, `fecha_create`) VALUES
(1, 'Cirujia', '2024-12-05 15:56:12'),
(2, 'Cardiologia', '2024-12-05 14:00:07'),
(3, 'Otorrino', '2024-12-05 02:41:46'),
(4, 'Pediatría', '2024-12-05 02:41:59'),
(5, 'Gastroenterología', '2024-12-058 02:42:27'),
(7, ' Infectología', '2024-12-05 02:43:37'),
(8, 'Enfermería', '2024-12-05 02:44:05');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `email`, `clave`, `cargo`) VALUES
(1, 'Edwin Serin', 'Admin', 'edserin@unitru.edu.pe', 'b0baee9d279d34fa1dfd71aadb908c3f', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`codcit`),
  ADD KEY `codpaci` (`codpaci`,`coddoc`,`codespe`),
  ADD KEY `coddoc` (`coddoc`),
  ADD KEY `codespe` (`codespe`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`codpaci`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`coddoc`),
  ADD KEY `codespe` (`codespe`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`codhor`),
  ADD KEY `coddoc` (`coddoc`);

--
-- Indices de la tabla `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`codespe`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `appointment`
--
ALTER TABLE `appointment`
  MODIFY `codcit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `codpaci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `doctor`
--
ALTER TABLE `doctor`
  MODIFY `coddoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `codhor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `specialty`
--
ALTER TABLE `specialty`
  MODIFY `codespe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`codpaci`) REFERENCES `customers` (`codpaci`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`coddoc`) REFERENCES `doctor` (`coddoc`),
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`codespe`) REFERENCES `specialty` (`codespe`);

--
-- Filtros para la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`codespe`) REFERENCES `specialty` (`codespe`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`coddoc`) REFERENCES `doctor` (`coddoc`);
COMMIT;

CREATE TABLE `ontiveros_mundo` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255),
  `nivel` int,
  `moneda` int,
  `id_jugador` int
);

CREATE TABLE `ontiveros_jugador` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `cantidad_monedas` int,
  `mando` varchar(255),
  `personaje_nombre` varchar(255),
  `personaje_apariencia` varchar(255),
  `id_princesa` int
);

CREATE TABLE `ontiveros_articulo` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `aspecto` varchar(255),
  `habilidad` varchar(255),
  `nombre` varchar(255),
  `id_jugador` int
);

CREATE TABLE `ontiveros_enemigo` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nivel` int,
  `nombre` varchar(255),
  `vida` int,
  `habilidad` varchar(255),
  `jefe_habilidad` varchar(255),
  `jefe_nombre` varchar(255),
  `jefe_nivel` int,
  `id_jugador` int,
  `id_princesa` int,
  `id_mundo` int
);

CREATE TABLE `ontiveros_princesa` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `apariencia` varchar(255),
  `id_enemigo` int
);

ALTER TABLE `ontiveros_mundo` ADD FOREIGN KEY (`id_jugador`) REFERENCES `ontiveros_jugador` (`id`);

ALTER TABLE `ontiveros_articulo` ADD FOREIGN KEY (`id_jugador`) REFERENCES `ontiveros_jugador` (`id`);

ALTER TABLE `ontiveros_enemigo` ADD FOREIGN KEY (`id_jugador`) REFERENCES `ontiveros_jugador` (`id`);

ALTER TABLE `ontiveros_enemigo` ADD FOREIGN KEY (`id_princesa`) REFERENCES `ontiveros_princesa` (`id`);

ALTER TABLE `ontiveros_jugador` ADD FOREIGN KEY (`id_princesa`) REFERENCES `ontiveros_princesa` (`id`);

ALTER TABLE `ontiveros_enemigo` ADD FOREIGN KEY (`id_mundo`) REFERENCES `ontiveros_mundo` (`id`);

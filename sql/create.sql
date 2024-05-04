CREATE TABLE `session` (
  `id` integer PRIMARY KEY,
  `player_one_id` varchar(255),
  `player_two_id` varchar(255)
);

CREATE TABLE `civilian` (
  `session_id` integer PRIMARY KEY,
  `player` ENUM ('one', 'two'),
  `three` integer,
  `four` integer,
  `five` integer,
  `six` integer,
  `seven` integer
);

CREATE TABLE `coins` (
  `session_id` integer PRIMARY KEY,
  `player` ENUM ('one', 'two'),
  `total` integer
);

CREATE TABLE `commercial` (
  `session_id` integer PRIMARY KEY,
  `player` ENUM ('one', 'two'),
  `three` integer
);

CREATE TABLE `divinity` (
  `session_id` integer PRIMARY KEY,
  `player` ENUM ('one', 'two'),
  `aphrodite` boolean,
  `astarte` integer
);

CREATE TABLE `grand_temple` (
  `session_id` integer PRIMARY KEY,
  `player` ENUM ('one', 'two'),
  `score` ENUM ('0', '5', '12', '21')
);

CREATE TABLE `guild` (
  `session_id` integer PRIMARY KEY,
  `player` ENUM ('one', 'two'),
  `builders` integer,
  `moneylenders` integer,
  `magistrates` integer,
  `merchants` integer,
  `scientists` integer,
  `shipowners` integer,
  `tactician` integer
);

CREATE TABLE `military` (
  `session_id` integer PRIMARY KEY,
  `player` ENUM ('one', 'two'),
  `score` ENUM ('0', '2', '5', '10')
);

CREATE TABLE `progress` (
  `session_id` integer PRIMARY KEY,
  `player` ENUM ('one', 'two'),
  `agriculture` boolean,
  `mathematics` integer,
  `mysticism` integer,
  `philosophy` boolean
);

CREATE TABLE `science` (
  `session_id` integer PRIMARY KEY,
  `player` ENUM ('one', 'two'),
  `one` integer,
  `two` integer,
  `three` integer
);

CREATE TABLE `wonders` (
  `session_id` integer PRIMARY KEY,
  `player` ENUM ('one', 'two'),
  `wonder` ENUM ('appianWay', 'circusMaximus', 'colossus', 'divineTheater', 'greatLibrary', 'greatLighthouse', 'hangingGardens', 'mausoleum', 'piraeus', 'pyramids', 'sphinx', 'statueOfZeus', 'templeOfArtemis'),
  `owned` boolean,
  `built` boolean
);

ALTER TABLE `coins` ADD FOREIGN KEY (`session_id`) REFERENCES `session` (`id`);

ALTER TABLE `commercial` ADD FOREIGN KEY (`session_id`) REFERENCES `session` (`id`);

ALTER TABLE `civilian` ADD FOREIGN KEY (`session_id`) REFERENCES `session` (`id`);

ALTER TABLE `divinity` ADD FOREIGN KEY (`session_id`) REFERENCES `session` (`id`);

ALTER TABLE `grand_temple` ADD FOREIGN KEY (`session_id`) REFERENCES `session` (`id`);

ALTER TABLE `guild` ADD FOREIGN KEY (`session_id`) REFERENCES `session` (`id`);

ALTER TABLE `military` ADD FOREIGN KEY (`session_id`) REFERENCES `session` (`id`);

ALTER TABLE `progress` ADD FOREIGN KEY (`session_id`) REFERENCES `session` (`id`);

ALTER TABLE `science` ADD FOREIGN KEY (`session_id`) REFERENCES `session` (`id`);

ALTER TABLE `wonders` ADD FOREIGN KEY (`session_id`) REFERENCES `session` (`id`);

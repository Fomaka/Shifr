-- phpMyAdmin SQL Dump
-- version 
-- http://www.phpmyadmin.net
--
-- Хост: h905154554.mysql
-- Время создания: Июн 10 2019 г., 02:11
-- Версия сервера: 5.6.41-84.1
-- Версия PHP: 5.6.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `h905154554_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `disease`
--
-- Создание: Май 30 2019 г., 14:44
--

DROP TABLE IF EXISTS `disease`;
CREATE TABLE IF NOT EXISTS `disease` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_bin NOT NULL,
  `info` varchar(1000) COLLATE utf8_bin NOT NULL,
  `stops` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `disease`
--

INSERT INTO `disease` (`id`, `name`, `info`, `stops`) VALUES
(5, 'Остеохондроз', 'Склероз костных пластин', 'Становая тяга,приседания со штангой,жим гантелей'),
(6, 'Грыжа позвоночника', 'Появление грыжи в межпозвоночном пространстве', 'Все силовые упражнения'),
(7, 'Сколиоз', 'Искривление позвоночника', 'Становая тяга,приседания'),
(8, 'Разрыв мениска', 'фывфывфыв', 'Бег,приседания');

-- --------------------------------------------------------

--
-- Структура таблицы `Person`
--
-- Создание: Май 28 2019 г., 18:45
--

DROP TABLE IF EXISTS `Person`;
CREATE TABLE IF NOT EXISTS `Person` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Info` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `Person`
--

INSERT INTO `Person` (`id`, `Name`, `Info`) VALUES
(1, 'Димон', 'Самый крупный кочка'),
(2, 'Андрей', 'Тренер по кроссфиту');

-- --------------------------------------------------------

--
-- Структура таблицы `prog`
--
-- Создание: Май 30 2019 г., 15:06
--

DROP TABLE IF EXISTS `prog`;
CREATE TABLE IF NOT EXISTS `prog` (
  `id` int(11) NOT NULL COMMENT 'id программы',
  `Info` varchar(45) COLLATE utf8_bin NOT NULL,
  `part` varchar(45) COLLATE utf8_bin NOT NULL,
  `type` varchar(45) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `prog`
--

INSERT INTO `prog` (`id`, `Info`, `part`, `type`) VALUES
(1, 'День груди', 'Грудь', 'силовая'),
(3, 'День ног', 'Ноги', 'силовая'),
(5, 'День спины', 'Спина', 'силовая'),
(6, 'Косые мышцы живота', 'Пресс', 'силовая');

-- --------------------------------------------------------

--
-- Структура таблицы `upr`
--
-- Создание: Май 30 2019 г., 14:48
--

DROP TABLE IF EXISTS `upr`;
CREATE TABLE IF NOT EXISTS `upr` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `info` varchar(1000) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `upr`
--

INSERT INTO `upr` (`id`, `name`, `info`) VALUES
(1, 'Жим лежа', 'Классический жим делается лёжа на спине на скамье для жима лежа. В исходном положении штанга удерживается на вытянутых руках над грудью. Затем штанга опускается на грудь и выжимается снова вверх на вытянутые руки. Есть и альтернативный вариант: штанга в исходной позиции покоится на ограничителях рамы на высоте груди и затем выжимается из этого положения на вытянутые руки и снова опускается на упоры.'),
(2, 'Жим гантелей', 'Жим гантелей лежа на скамье'),
(3, 'Разведение гантелей', 'Разводка гантелей лежа на скамье'),
(4, 'Тяга кроссовера', 'Сведение рук стоя в кроссовере'),
(17, 'Скручивания', 'Скручивание лежа на полу'),
(18, 'Кардио-упражнение', 'Бег на беговой дорожке'),
(19, 'Становая тяга', 'Стоя тяну гриф от земли'),
(21, 'Жим ногами', 'Лежа в станке жать вес'),
(22, 'Разгибание ног', 'Сидя в тренажере разгибать ноги'),
(23, 'Сгибание ног', 'Сидя в тренажере сгибать ноги');

-- --------------------------------------------------------

--
-- Структура таблицы `upr_to_prog`
--
-- Создание: Май 26 2019 г., 18:58
--

DROP TABLE IF EXISTS `upr_to_prog`;
CREATE TABLE IF NOT EXISTS `upr_to_prog` (
  `id` int(11) NOT NULL,
  `id_prog` int(11) DEFAULT NULL,
  `id_upr` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `upr_to_prog`
--

INSERT INTO `upr_to_prog` (`id`, `id_prog`, `id_upr`) VALUES
(1, 6, 17),
(2, 1, 1),
(3, 1, 2),
(5, 1, 4),
(6, 3, 21),
(7, 3, 22),
(8, 3, 23);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Person`
--
ALTER TABLE `Person`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `prog`
--
ALTER TABLE `prog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `upr`
--
ALTER TABLE `upr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `upr_to_prog`
--
ALTER TABLE `upr_to_prog`
  ADD PRIMARY KEY (`id`), ADD KEY `ID_upr` (`id_upr`), ADD KEY `ID_prog` (`id_prog`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `disease`
--
ALTER TABLE `disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `Person`
--
ALTER TABLE `Person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `prog`
--
ALTER TABLE `prog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id программы',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `upr`
--
ALTER TABLE `upr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `upr_to_prog`
--
ALTER TABLE `upr_to_prog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `upr_to_prog`
--
ALTER TABLE `upr_to_prog`
ADD CONSTRAINT `upr_to_prog_ibfk_1` FOREIGN KEY (`id_upr`) REFERENCES `upr` (`id`),
ADD CONSTRAINT `upr_to_prog_ibfk_2` FOREIGN KEY (`id_prog`) REFERENCES `prog` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

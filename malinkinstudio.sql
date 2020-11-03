-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 28 2019 г., 22:50
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `malinkinstudio`
--

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `text`, `date`) VALUES
(4, 'Олег Хабалов', 'oleg.habalov@mail.ru', 'Григорий с работой справился на УРА! Две задачи решил за 15 минут! \r\nБуду еще обращаться 100%. Если вам нужны специалисты для решения задач - обращайтесь к нему, он мастер своего дела.\r\nСпасибо огромное!', '2019-04-28 08:15:18'),
(6, 'Олег Смирнов', 'smirnov@bk.ru', 'Отличный программист, все в срок. Цена - качество, исполнителен. Рекомендую!', '2019-04-29 00:01:34'),
(7, 'Наталья Свиридова', 'natalia.sviridova@yandex.ru', 'Заказ был сделан на 3 дня, но программа была написана на следующий день! Огромное Даниле спасибо!', '2019-04-09 16:16:09'),
(8, 'Семён', 'semen225328@yandex.ru', 'парень действительно рубит в своем деле.\r\nВсе было быстро,четко и недорого', '2019-04-18 04:10:41'),
(9, 'Георгий Мандаринов', 'mail@mail.ru', 'Заказываю написание программ не первый раз. Все ОТЛИЧНО, всем советую. Качественно, в срок, без задержек. Сто процентная гарантия, что не \"надурят\". В общем советую', '2019-03-07 17:11:27');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

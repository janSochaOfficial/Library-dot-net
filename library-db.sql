-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Mar 2023, 22:59
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `library`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books`
--

CREATE TABLE `books` (
  `Id` int(11) NOT NULL,
  `Authors` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Release_date` char(10) NOT NULL,
  `ISBN` char(20) NOT NULL,
  `Format` char(3) NOT NULL,
  `Pages` smallint(6) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `books`
--

INSERT INTO `books` (`Id`, `Authors`, `Title`, `Release_date`, `ISBN`, `Format`, `Pages`, `Description`) VALUES
(2, 'Adam Mickiewicz', 'Dziady II', '1871.11.12', 'dkshfjah', 'jpg', 123, 'Wywołują sobie duchy'),
(20, 'Juliusz Słowacki', 'Balladyna', '1839', 'dafq3fgdsgf', 'pdf', 238, 'Balladyna zabija siostrę bo lepiej zbierała maliny'),
(22, 'Juliusz Słowacki', 'Kordian', '1841', 'ashdou234yxcy86', 'jpg', 113, 'Kordian próbuję zabić cara, ale dostaje ataku schizofrenii i mdleje przed jego sypialnią.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`name`, `password`, `email`, `id`) VALUES
('root', 'OHUDTheFW6wDo8yeEHsdKKm0QxPTgcMzVYhSW05wtVs=', 'jan@gmail.com', 1),
('cornHarvester', 'nvoShAqNcOvL5SinvT/iiBtFM7ezqPdEEmVtvq/8AGo=', 'janek@wp.pl', 2),
('goodGame', 'RdJav/6MeS100wNGQptbwkS4Fe6zeKnDg5X3pGbPaJQ=', 'gg@gg.gg', 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `books`
--
ALTER TABLE `books`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

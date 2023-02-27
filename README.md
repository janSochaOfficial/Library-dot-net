# Projekt 'Biblioteka' .Net Framework

Ten projekt został wykonany na lekcję .net Framework, nie jest on w pełni działającą aplikacją, i wymaga dodatkowych narzędzi do uruchomienia.

## Uruchamianie projektu

Aby uruchomić projekt należy wykonać poniższe kroki: 

- pobrać całość projektu na komputer
- uruchomić program [xampp](https://www.apachefriends.org/pl/index.html)
- uruchomić opcję Apache oraz MySQL
- wejść w link (http://localhost/phpmyadmin/) i zaiportować bazę sql podaną pod nazwą **library-db.sql**
- uruchomić plik Library.sln (wymagane jest Visual Studio oraz odpowiednie pakiety)
- zkompilować którykolwiek plik i uruchomić aplikację

Po wykonaniu powyższych kroków powinna uruchomić się przeglądarka z stroną do wpisywania danych bazy.

## Sposób urzycia

## 1. łączenie z bazą danych

przy łączeniu się z bazą za pomocą XAMPPa w kolejne pola należy wpisać:

- nazwa serweraa: localhost
- baza danych: nazwa podana pzry importowaniu bazy z pliku
- nazwa urzytkownika: fabrycznie root
- hasło: fabrycznie puste

## 2. logowanie i tworzenie urzytkowników

1. logowanie
    jeśli dodatkowe konto nie zostało stworzone, możesz zalogować się na poniższe konto:
    
    - nazwa urzytkownika: root
    - hasło Qwerty123!
2. rejestracja
    jedynym wymaganiem rejestracji jest unikalność nazwy urzytkownika i adresu e-mail

## 3. strona z tabelą danych

### 1. Wyszukiwanie<br/>

Na samym dole strony znajduje się przycisk wyszukaj, po kliknięciu przekierowywuje on do podstrony do wyszukiwania. Wyszukiwanie działa na zasadzie AND (np. gdy dane są Authors="Adam Mickiewicz" oraz Title="Balladyna" zostanie zwrócona pusta tabela)

### 2. Zarządzanie danymi
1. dodawanie rekordów

    Przycisk "dodaj rekord" znajduje się pod tabelą z danymi nad przyciskiem wyszukaj, po kliknięciu przekierowywuje on do podstrony do dodawania rekordu, gdzie należy uzupełnić pola i nacisnąć przycisk "Dodaj", po czym rekord zostanie dodany, a uzytkownik zostanie przekierowany do podstrony z tabelą
2. edycja rekordów

    Po lewej stronie karzdego rekordu w tabeli znajduje się przycisk "Edytuj". Po kliknięciu przekierowywuje on do podstrony do edycji książki, z wypełnionymi poprzednimi danymi książki. Po zmianie wybranych wartości należy kliknąć przycisk "Edytuj" aby zatwierdzić zmiany do bazy. Po klikcięciu nastąpi przekierowanie do podstrony z tabelą.
3. usuwanie rekordów

    w drógiej kolumnie każdego rekordu znajduję się przycisk usuń. Po kliknięciu następuje natuchmiastowe usunięcie rekordy z bazy i przeładowanie strony.
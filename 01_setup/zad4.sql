-- DANE WYGENEROWANE PRZEZ SZTUCZNĄ INTELIGNECJĘ, ZBIEŻNOŚĆ NAZWISK PRZYPADKOWA, LOSOWA

INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Kowalski', 'ul. Kwiatowa 1, Warszawa', '123-456-789'),
('Anna', 'Nowak', 'ul. Słoneczna 5, Kraków', '987-654-321'),
('Piotr', 'Wiśniewski', 'ul. Leśna 10, Gdańsk', '555-444-333'),
('Katarzyna', 'Wójcik', 'ul. Polna 2, Poznań', '111-222-333'),
('Marek', 'Kowalczyk', 'ul. Ogrodowa 7, Wrocław', '777-888-999'),
('Joanna', 'Zielińska', 'ul. Krótka 3, Łódź', '222-555-888'),
('Tomasz', 'Szymański', 'ul. Długa 12, Szczecin', '333-666-999'),
('Magdalena', 'Woźniak', 'ul. Boczna 9, Bydgoszcz', '666-333-111'),
('Krzysztof', 'Dąbrowski', 'ul. Prosta 15, Lublin', '999-111-222'),
('Agnieszka', 'Lewandowska', 'ul. Nowa 20, Katowice', '444-777-555');

INSERT INTO ksiegowosc.pensja (stanowisko, kwota) VALUES
('Kierownik', 5500.00),
('Analityk', 4200.00),
('Specjalista ds. Marketingu', 3800.00),
('Programista', 7000.00),
('Asystent', 2800.00),
('Księgowy', 4000.00),
('Przedstawiciel Handlowy', 3500.00),
('Grafik Komputerowy', 4500.00),
('Młodszy Programista', 4100.00),
('Starszy Specjalista', 4800.00);

INSERT INTO ksiegowosc.premia (rodzaj, kwota) VALUES
('Uznaniowa', 500.00),
('Projektowa', 1500.00),
('Świąteczna', 300.00),
('Za wyniki', 1000.00),
('Motywacyjna', 250.00),
('Jubileuszowa', 2000.00),
('Regulaminowa', 150.00),
('Specjalna', 750.00),
('Za nadgodziny', 400.00),
('Kwartalna', 800.00);

INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-09-30', 168, 1),
('2025-09-30', 160, 2),
('2025-09-30', 175, 3),
('2025-09-30', 160, 4),
('2025-09-30', 180, 5),
('2025-09-30', 155, 6),
('2025-09-30', 160, 7),
('2025-09-30', 170, 8),
('2025-09-30', 190, 9),
('2025-09-30', 160, 10);

INSERT INTO ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-10-10', 1, 1, 1, 1),
('2025-10-10', 2, 2, 6, 3),
('2025-10-10', 3, 3, 7, NULL),
('2025-10-10', 4, 4, 3, 5),
('2025-10-10', 5, 5, 4, 2),
('2025-10-10', 6, 6, 5, NULL),
('2025-10-10', 7, 7, 9, 4),
('2025-10-10', 8, 8, 8, NULL),
('2025-10-10', 9, 9, 4, 2),
('2025-10-10', 10, 10, 10, NULL);

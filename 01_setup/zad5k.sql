SELECT pen.stanowisko, COUNT(p.id_pracownika) AS liczba_pracownikow
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
GROUP BY pen.stanowisko;

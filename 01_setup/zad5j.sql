SELECT p.imie, p.nazwisko, pen.kwota AS pensja, COALESCE(pr.kwota, 0) AS premia
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
ORDER BY pen.kwota DESC, premia DESC;

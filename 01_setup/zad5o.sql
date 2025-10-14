SELECT
    pen.stanowisko,
    COUNT(w.id_premii) AS liczba_przyznanych_premii
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
WHERE w.id_premii IS NOT NULL
GROUP BY pen.stanowisko
ORDER BY liczba_przyznanych_premii DESC;

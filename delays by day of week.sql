USE airlines_db;

SELECT
    DayOfWeek,
    COUNT(*) AS NumberOfDelayedFlights
FROM
    final_data
WHERE
    Delay = 1
GROUP BY
    DayOfWeek
ORDER BY
    DayOfWeek;
USE airlines_db;

SELECT
    Airline,
    COUNT(*) AS NumberOfDelayedFlights
FROM
    final_data
WHERE
    Delay = 1
GROUP BY
    Airline
ORDER BY
    NumberOfDelayedFlights DESC;
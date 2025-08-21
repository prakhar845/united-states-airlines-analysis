USE airlines_db;

SELECT
    COUNT(*) AS DelayedFlightsToLargeAirports
FROM
    final_data
WHERE
    Delay = 1
    AND number_of_runways_to_runway >= 10;
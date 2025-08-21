USE airlines_db;

WITH AvgElevation AS (
    SELECT AVG(elevation_ft_from) as avg_elev FROM final_data
)
SELECT
    CASE
        WHEN elevation_ft_from > (SELECT avg_elev FROM AvgElevation) THEN 'Higher Than Average Elevation'
        ELSE 'Lower Than Average Elevation'
    END AS ElevationCategory,
    COUNT(*) AS NumberOfDelayedDepartures
FROM
    final_data
WHERE
    Delay = 1
GROUP BY
    ElevationCategory;
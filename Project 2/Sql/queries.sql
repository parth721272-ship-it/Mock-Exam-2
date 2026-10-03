SELECT
    r.service_type,
    SUM(GREATEST(d.actual_days - d.Promised_days, 0)) AS total_delay_days
FROM delivery d
JOIN routes r
    ON d.route_id = r.route_id
GROUP BY r.service_type
ORDER BY total_delay_days DESC;

SELECT
    r.route_id,
    SUM(GREATEST(d.actual_days - d.promised_days, 0)) AS total_delay_days
FROM delivery d
JOIN routes r
    ON d.route_id = r.route_id
GROUP BY r.route_id
HAVING SUM(GREATEST(d.actual_days - d.promised_days, 0)) > 8;

SELECT
    d.hub,
    SUM(GREATEST(d.actual_days - d.promised_days, 0)) AS total_delay_days
FROM delivery d
JOIN routes r
    ON d.route_id = r.route_id
GROUP BY d.hub
ORDER BY
    total_delay_days DESC,
    d.hub ASC
LIMIT 2;
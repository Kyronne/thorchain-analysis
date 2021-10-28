WITH swaps_from  AS
(
    SELECT DISTINCT(from_address) AS from_addresses FROM thorchain.swaps
)
SELECT COUNT(b.from_addresses) total_addresses, from_asset, date_trunc('day', block_timestamp) AS date
  FROM thorchain.swaps as a
  JOIN swaps_from as b ON a.from_address = b.from_addresses
  WHERE
  date > CURRENT_DATE - 30
GROUP BY 
 2, 3
ORDER BY 
total_addresses DESC;


  
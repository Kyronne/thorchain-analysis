SELECT COUNT(BLOCK_ID) as Swaps, to_asset, date_trunc('day', block_timestamp) AS date
FROM 
 thorchain.swaps
WHERE
  date > CURRENT_DATE - 30
GROUP BY 
2, 3
ORDER BY 
to_asset
SELECT
  sum(swap_volume_rune) AS Swap_Volume_Rune, pool_name,  date_trunc('day', day) AS date
FROM 
 thorchain.daily_pool_stats
WHERE
  date > CURRENT_DATE - 30
GROUP BY 
 2, 3 
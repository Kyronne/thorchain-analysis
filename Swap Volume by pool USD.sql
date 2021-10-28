SELECT
  sum(swap_volume_rune_usd) AS Swap_Volume_USD, swap_volume_rune, pool_name,  date_trunc('day', day) AS date
FROM 
 thorchain.daily_pool_stats
WHERE
  date > CURRENT_DATE - 30
GROUP BY 
 2, 3, 4
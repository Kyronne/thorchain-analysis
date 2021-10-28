SELECT COUNT( DISTINCT FROM_ADDRESS ) as BNBUnique, date_trunc('week', block_timestamp) AS date
FROM 
 thorchain.upgrades
WHERE 
  burn_asset = 'BNB.RUNE-B1A'
GROUP BY
2
ORDER BY 
2

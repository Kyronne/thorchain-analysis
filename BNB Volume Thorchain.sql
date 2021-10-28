SELECT
  sum(rune_amount_usd) AS Rune_Amount_USD, burn_asset,  date_trunc('day', block_timestamp) AS date
FROM 
 thorchain.upgrades
WHERE burn_asset =  'BNB.RUNE-B1A'
AND date > CURRENT_DATE - 30
GROUP BY 
 2, 3 

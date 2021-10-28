SELECT
  sum(rune_amount_usd) AS Rune_Amount_USD, burn_asset,  date_trunc('day', block_timestamp) AS date
FROM 
 thorchain.upgrades
WHERE burn_asset =  'ETH.RUNE-0X3155BA85D5F96B2D030A4966AF206230E46849CB'
AND date > CURRENT_DATE - 30
GROUP BY 
 2, 3 

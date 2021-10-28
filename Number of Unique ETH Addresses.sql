SELECT COUNT
  ( DISTINCT FROM_ADDRESS ) as ETHUnique, date_trunc('week', block_timestamp) AS date 
FROM 
 thorchain.upgrades
WHERE
  burn_asset = 'ETH.RUNE-0X3155BA85D5F96B2D030A4966AF206230E46849CB'
GROUP BY 
2
ORDER BY
2




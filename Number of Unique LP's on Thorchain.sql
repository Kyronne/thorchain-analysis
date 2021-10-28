SELECT COUNT (DISTINCT from_address, to_address) AS addresses, pool_name, date_trunc('day', block_timestamp) AS date 
FROM thorchain.liquidity_actions
  WHERE
  date > CURRENT_DATE - 30
GROUP BY 
 2, 3
ORDER BY
   addresses DESC
MATCH (n)
WHERE (n:User OR n:Computer)
  AND (
    n.unconstraineddelegation = true
    OR n.trustedtoauth = true
    OR n.allowedtodelegate IS NOT NULL
  ) AND NOT (n.unconstraineddelegation = true AND n.primarygroupid = '516') //remove DCs
RETURN n

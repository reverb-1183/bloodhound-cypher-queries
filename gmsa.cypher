// run this and look for "Msds Groupmsamembership" property
MATCH (u:User)
WHERE u.samaccountname ENDS WITH '$'
RETURN u

MATCH (n:Report { text: 'Data Issue'})
SET n.report_type_id = 1
RETURN n
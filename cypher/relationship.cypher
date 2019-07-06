MATCH (a:Business),(b:Provider) WHERE a.provider_id= b.provider_id CREATE (a)-[r:has_provider]->(b) RETURN r
MATCH (a:Business),(b:Report) WHERE a.business_id= b.business_id CREATE (a)-[r:has_report]->(b) RETURN r
MATCH (a:User),(b:Report) WHERE a.user_id= b.user_id CREATE (a)-[r:has_reported]->(b) RETURN r
MATCH (a:Report),(b:ReportType) WHERE a.report_type_id= b._id CREATE (a)-[r:has_report_type]->(b) RETURN r
MATCH (a:Report),(b:Cities) WHERE a.zipcode= b.zipcode CREATE (a)-[r:has_city]->(b) RETURN r
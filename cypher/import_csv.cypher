LOAD CSV WITH HEADERS FROM 'file:///zipcode.csv' AS line
CREATE (:Cities { zipcode: line.Zipcode, city: line.City, state:line.State, lat: line.Lat, long: line.Long, county: line.Country})

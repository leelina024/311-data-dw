### Developing a data warehouse project.

Using dbt Cloud as our transformation (ETL) tool and Google BigQuery as our designated data warehouse. 

------------
#### The data we chose were from NYC OpenData: 

|Data|Source|
| ------------ | ------------ |
|NYC 311 Service Requests |[data.cityofnewyork.us/Social-Services](https://data.cityofnewyork.us/Social-Services/311-Service-Requests-from-2010-to-Present/erm2-nwe9 "data.cityofnewyork.us")|
|NYC Rodent Inspection|[data.cityofnewyork.us/Health/Rodent-Inspection](https://data.cityofnewyork.us/Health/Rodent-Inspection/p937-wjvj "data.cityofnewyork.us/Health/Rodent-Inspection")|

- Cleanup and transformation of data was done through dbt Cloud.
- Creating dimension tables, populating dimension tables, and creating and populating fact tables were all done through dbt Cloud.

------------
#### Data Visualization using Tableau

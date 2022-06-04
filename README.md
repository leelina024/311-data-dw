### Developing a data warehouse project.

Using dbt Cloud as our transformation (ETL pipeline) tool and Google BigQuery as our designated data warehouse. 

------------
#### The data we chose were from NYC OpenData: 

|Data|Source|
| ------------ | ------------ |
|NYC 311 Service Requests |[data.cityofnewyork.us/Social-Services](https://data.cityofnewyork.us/Social-Services/311-Service-Requests-from-2010-to-Present/erm2-nwe9 "data.cityofnewyork.us")|
|NYC Rodent Inspection|[data.cityofnewyork.us/Health/Rodent-Inspection](https://data.cityofnewyork.us/Health/Rodent-Inspection/p937-wjvj "data.cityofnewyork.us/Health/Rodent-Inspection")|

The data consists of over 10 years of data concerning rodent sightings and associated inspections.

- Cleanup and transformation of data was done through dbt Cloud.
- Creating dimension tables, populating dimension tables, and creating and populating fact tables were all done through dbt Cloud.

------------
#### Data Visualization using Tableau
```
Complaints per Borough
Complaints per Zip Code

Inspections per Borough
Inspections per Zip Code
```

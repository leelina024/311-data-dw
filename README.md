### Dimension and fact table models created using SQL language in dbt Cloud and pushing it to our Google BigQuery data warehouse where we can populate each table. 

Staging models are materialzied as views.
Dimension and fact tables are materialzied as tables. 

Each model has its own checks of its unique column null and unique. Checked using dbt test command. 

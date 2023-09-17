## Introduction:
The goal of this project is to perform data analytics on Uber data using various tools and technologies, including GCP Storage, Python, Compute Instance, Mage Data Pipeline Tool, BigQuery, and Looker Studio.

## Architecture
![architecture](https://github.com/Ridham-Shah-25/Uber-Data-Engineering-Project/assets/76242216/c56a7f3f-1375-4fa0-97a2-b29fa919e2f9)

## Technology Used:
* Programming Language - Python<br>
Google Cloud Platform

1. Google Storage
2. Compute Instance
3. BigQuery
4. Looker Studio<br>
Modern Data Pipeine Tool - https://www.mage.ai/

## Dataset Used:
The Dataset used is obtained from the following website-
https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
Column Description is given in The Dataset folder.

## Data Model
![data_model](https://github.com/Ridham-Shah-25/Uber-Data-Engineering-Project/assets/76242216/e3c16c64-8357-4863-8eac-77a1f88be8c0)

## Looker Studio Dashboard:
https://lookerstudio.google.com/reporting/8864f979-3c04-454c-a439-1c35d0de8413

## Entire Process Explained:
* I got the dataset from https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page. The Dataset contains features like pick-up and drop-off dates/times, pick-up and drop-off locations, trip distances, itemized fares, rate types, payment types, and driver-reported passenger counts.
* I created a GCP Account.
* I created a new GCS Bucket and uploaded the dataset on the Bucket.
* Now, we will build our ETL Pipeline using Mage.
* Start a VM Instance on GCP.
* Install Python and the necessary libraries which are given in requirements.txt
* Create a new project on Mage by following the Steps given on its GitHub(https://github.com/mage-ai/mage-ai)
* Create a Data Loader Block(Extract) and load the Data from the GCS Bucket into that Mage Block.
* Create a new Transformer Block(Transform) and Transform the data ensuring columns are in the correct format, creating Fact and Dimension Tables, and creating a final table
* Create a Data Exporter Block(Load) to Export the Transformed Data Table to BigQuery
* The cleansed Table is now available on BigQuery. I wrote a few SQL Queries to Gather some interesting insights from the dataset.
* I created a new table that will only include the necessary columns from the Fact Table and various Dimension Tables to be used for making a Dashboard
* I built The Dashboard on Looker Studio including interesting insights from the dataset.

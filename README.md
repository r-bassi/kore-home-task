# KORE MINT SSIS Home Task

## Overview

This project involves extracting data from a CSV file, transforming it, and loading it into a staging table and eventually into a production database. The goal is to demonstrate proficiency with SQL Server Integration Services (SSIS) by handling various data formats and potential errors that may arise during the ETL process.

## Process

- **Source:** CSV file located at `data.csv`.
- **Data Flow Task:** Reads the CSV file and loads the data into a staging table after running a script for date format inconsistency and converting the data types with a derived column transformation.
- **Execute SQL Task:** Removes records with NULL UserID's, full duplicates, and non-existant Staging ID's in the staging table.
- **Conditional Split:** Moves suspicious records (with NULL values or other issues) into the ErrorRecords table, and good records forward towards production.
- **OLE DB Production Destination:** After merge joining the staging and production table on UserID, applied a conditional split to update existing records and add new records to the production table.

## Outcome


- **Suspicious Data Handling:**
  - Records identified as suspicious (e.g., duplicates, NULL values, special characters, impossible dates, incorrect emails, etc.) were moved from the staging table to the `ErrorRecords` table for further evaluation.
  
- **Production Table Updates:**
  - Complete and valid records from the staging table were successfully transferred to the production table.
  - Existing records in the production table were updated with new information.
  - New records were added to the production table.

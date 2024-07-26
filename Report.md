# SSIS Package Execution Report

## Excluded Records and Reasons
- **Invalid Format and NULL Values**: Records with missing, invalid format (e.g. negative Age), or null values. NULL values were allowed based on the database schema but I judged based on existing production data to remove records with NULL values to the ErrorRecords table.
- **Invalid Dates**: Records containing dates that do not exist (e.g., 2022-02-30).
- **Future Dates**: Records with dates set in the future.
- **Old Dates**: Records with dates that are too old to be considered valid.
- **Large Total**: Records with unusually large purchase totals.
- **Incorrect Email Format**: Records with invalid email addresses.
- **Duplicates**: Records with duplicate `UserID`s.


## Challenges Faced and Solutions
- **Date Validation and Formatting**: Addressed issues with various date formats and invalid dates by implementing  date handling logic in a Script Component.
- **Data Type Conversions**: Managed conversion errors by ensuring proper data cleansing before type conversion.
- **Error Handling and Logging**: Configured SSIS to redirect problematic records to an error table for further analysis.

## Summary
- **Records Added to Production**: 15
- **Records Updated**: UserID 101
- **Records Moved to ErrorRecords**: 14

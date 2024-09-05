# English Monarchs Project

## Overview

The English Monarchs Project aims to provide a comprehensive database of English monarchs, detailing their reigns, personal life dates, genders, and royal houses. This project uses MySQL to create a structured dataset for historical research and analysis.

## Database Structure

The database consists of the following tables:

1. **`monarchs`**: Contains basic information about each monarch.
2. **`monarchs_life_dates`**: Stores the birth and death dates of each monarch.
3. **`monarchs_gender`**: Indicates the gender of each monarch.
4. **`monarchs_reigns`**: Records the reign periods of each monarch.
5. **`monarchs_royal_houses`**: Lists the royal houses.
6. **`monarchs_royal_house_links`**: Links each monarch to their royal house.
7. **`monarchs_info`**: A view combining information from all tables for easy querying.

## Setup

To set up the database, execute the following SQL scripts in your MySQL environment:

1. **Create and Populate Tables**: This script will create the necessary tables and populate them with data.

2. **Create View**: The `monarchs_info` view combines data from various tables, simplifying complex queries.

3. **Stored Procedures and Functions**: Includes a procedure to calculate the length of a monarch’s reign and a function to determine if a monarch was under 18 at the start of their reign.

## Sample Queries

### Retrieve Monarch Information

```sql
SELECT * FROM monarchs;
```

### Find Reign Period of a Monarch

Replace `31` with the `monarch_id` of interest:

```sql
SELECT
mi.monarch_name,
mi.reign_sequence,
mi.reign_start_date,
mi.reign_end_date
FROM monarchs_info mi
JOIN monarchs m ON mi.monarch_name = m.name
WHERE m.monarch_id = 31
ORDER BY mi.reign_sequence;
```

### Calculate Reign Length

Replace `59` with the `monarch_id` of interest:

```sql
CALL calculate_reign_length(59);
```

### Check if a Monarch Was Under 18 at Ascension

Replace `37` with the `monarch_id` of interest:

```sql
SELECT under_18_at_reign_start(37) AS under_18_result;
```

### Count Monarchs by Royal House

```sql
SELECT
rh.royal_house_name AS `Royal House`,
COUNT(mrl.monarch_id) AS `Number of Monarchs`
FROM monarchs_royal_house_links mrl
JOIN monarchs_royal_houses rh ON mrl.royal_houses_id = rh.royal_houses_id
GROUP BY rh.royal_house_name;
```

## Notes

- Ensure that your MySQL server is configured to support foreign key constraints and date operations.
- Modify queries as needed to suit specific research needs or database modifications.

## Contributing

Contributions to the database are welcome. Please follow the guidelines for adding data, maintaining consistency, and verifying historical accuracy.

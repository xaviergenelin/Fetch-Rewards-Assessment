# Fetch-Rewards-Assessment

This file contains answers to the Fetch Rewards Assessment or points to the files that will have the answers necessary. I haven't worked with a .json file before, the jupyter notebook code is how I converted this into something that was usable to my current knowledge for checking the data for quality issues as well as getting something that I can use for a SQL query. That code is in the JSON to dataframes.jpynb file. 

## Part 1
The image within this repo has what I believe the relational diagram would look like (Fetch Assesment part 1.jpg)

## Part 2
The query that I wrote helps answer the questions about the average spend and total number of items purchased from receipts with rewardsReceiptStatus of Accepted or Rejected.

## Part 3
The .Rmd file is where the code is to examine any possible data issues along with comments or text explaining the code. 

## Part 4

One of the main questions I have is how this data is collected. The brands and receipts datasets that were provided had a large amount of data missing for some columns, which is a little concerning. There is also a lot of duplicated rows within the users dataset. This may be due to the fact that as the user logs in again, a new record is created. The problem then would be that it's saving the new log in date over the old record while creating a new record. For both of these, I looked quick to see if the total rows in the dataset was equal to the distinct rows within the dataset. The other two tables didn't look to have duplicated rows. I think that by having a better idea of how this data is collected then we can start to try and resolve these issues and prevent/limit them from happening in the future.

Other information that I think would be helpful is to know what data is necessary for us to be making decisions. For instance, in the receipts table there are many different date values, but we may not be interested in all of them and we can focus our time on what we need to know. I think as our database becomes larger over time with more receipts, users, and brands, that can slow down our analysis for the entire query. Even if we want to filter this data down, that still requires the system to check it all to see what fits our criteria. We could possibly limit this data to a certain time range for different tables or views, so that common information that we want to see is readily available in a sql query for our users. 

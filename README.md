# Crowdfunding_ETL
For the ETL project, Jason and I split the data laoding and cleaning. He worked with the contacts data and I worked with the crowdfunding data. The first thing I did was to split the category and subcategory column into two columns. Then created two new dataframes based on the category and subcategory and then wrote those to csv's. Then I cleaned up the rest of the crowdfunding data by changing data types and getting rid of unneccesary columns and then wrote that to a csv. Jason took the contacts data and pulled it out of JSON format and into lists and then created a dataframe where he split the name column into  two columns: first_name and last_name. Then got rid of the name column and wrote it to a csv. We then took those csv's and loaded them into Postresql based on the tables that we created. 

# Crowdfunding_ETL
## Instructions

The instructions for this mini project are divided into the following subsections:

    Create the Category and Subcategory DataFrames
    Create the Campaign DataFrame
    Create the Contacts DataFrame
    Create the Crowdfunding Database

### Create the Category and Subcategory DataFrames

    Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

        A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories

        A "category" column that contains only the category titles

        The following image shows this category DataFrame:

        category DataFrame

    Export the category DataFrame as category.csv and save it to your GitHub repository.

    Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

        A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories

        A "subcategory" column that contains only the subcategory titles

        The following image shows this subcategory DataFrame:

        subcategory DataFrame

    Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository. 

### Create the Category and Subcategory DataFrames

    Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

           
 # Read the data into a Pandas DataFrame

     crowdfunding_info_df = pd.read_excel('Resources/crowdfunding.xlsx')
     crowdfunding_info_df.head()

        A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories

   # Get the crowdfunding_info_df columns.

     crowdfunding_info_df.columns     
        
       
        
A "category" column that contains only the category titles

 # Assign the category and subcategory values to category and subcategory columns.

   crowdfunding_info_df[['category', 'subcategory']] = crowdfunding_info_df['category & sub-category'].str.split('/',     expand=True)

  crowdfunding_info_df.head()



        The following image shows this category DataFrame: 

        

        category DataFrame 


        # Get the unique categories and subcategories in separate lists.
categories = crowdfunding_info_df['category'].unique().tolist()
subcategories = crowdfunding_info_df['subcategory'].unique().tolist()

print(categories)

    Export the category DataFrame as category.csv and save it to your GitHub repository.

# Export categories_df and subcategories_df as CSV files.

   category_df.to_csv("Resources/category.csv", index=False)

   subcategory_df.to_csv("Resources/subcategory.csv", index=False)


    Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

        A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories

        A "subcategory" column that contains only the subcategory titles

        The following image shows this subcategory DataFrame:

        subcategory DataFrame

    Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository. 

### Create the Contacts DataFrame

    Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:

        Option 1: Use Python dictionary methods.

        Option 2: Use regular expressions.

    If you chose Option 1, complete the following steps:
        Import the contacts.xlsx file into a DataFrame.
        Iterate through the DataFrame, converting each row to a dictionary.
        Iterate through each dictionary, doing the following:
            Extract the dictionary values from the keys by using a Python list comprehension.
            Add the values for each row to a new list.
        Create a new DataFrame that contains the extracted data.
        Split each "name" column value into a first and last name, and place each in a new column.
        Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

### Check that your final DataFrame resembles the one in the following image:

![image](https://github.com/user-attachments/assets/63772c52-4077-4c28-af15-5a82fb548001)





### Create the Crowdfunding Database

    Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBD 

<img width="942" src="images/Crowdfunding_ERD.png" />



Links to an external site..

Use the information from the ERD to create a table schema for each CSV file.

Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.

Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.

Create a new Postgres database, named crowdfunding_db.

Using the database schema, create the tables in the correct order to handle the foreign keys.

Verify the table creation by running a SELECT statement for each table.

Import each CSV file into its corresponding SQL table.

Verify that each table has the correct data by running a SELECT statement for each.



# Web-Scrapping-using-R
In this project we have scrapped the top 50 richest athletes data using R language.   

## Overview
We have used R language to do web scraping for top richest 50 athletes. We scrap the data from this [website](https://www.therichest.com/top-lists/top-100-richest-athletes/). We have installed some libraries first. These are:
* rvest - helps to scrape (or harvest) data from web pages.
* stringr - provides a cohesive set of functions designed to make working with strings as easy as possible
* tibble - helps to create create data frames

### Then we create a loop to scrap multiple pages and convert the html format into xml using read_html() function and put them into a dataframe
![image](https://user-images.githubusercontent.com/69957858/210407207-b455358b-4a96-4a5f-a4ac-9fd126109c28.png)


### Extracting names
![image](https://user-images.githubusercontent.com/69957858/210407284-4fd0f061-4075-4213-a435-ab200961b888.png)


### Extracting networth
![image](https://user-images.githubusercontent.com/69957858/210407455-224739a5-5eae-46d6-adad-2332fb34cf3d.png)


### Extracting Age
![image](https://user-images.githubusercontent.com/69957858/210407601-f25771f8-411b-4154-a631-2c69cc99c65b.png)


### Extracting Country
![image](https://user-images.githubusercontent.com/69957858/210407759-b4a57184-960d-4d16-afed-fb34b6a3c3f6.png)


### Combining all the lists and creating a dataframe and save the dataframe into a csv file
![image](https://user-images.githubusercontent.com/69957858/210408194-8cb27827-fbf3-4207-8d75-b8389265d140.png)


# Conclusion
After all the steps followed we finally able to find the scrapped data into this csv file - [top athletes](https://github.com/MunimAhmed/Web-Scrapping-using-R/blob/main/Top_athlete.csv)

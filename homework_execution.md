## Question 1:
Install Spark and PySpark

Install Spark
Run PySpark
Create a local spark session
Execute spark.version.
What's the output?

```console
// Run the python script  
python src/local_spark.py  

// Run the Jupyter notebook hw05_question1.ipynb  
jupyter lab notebooks/hw05_question1.ipynb
```

**3.5.0**


## Question 2:
FHV October 2019

Read the October 2019 FHV into a Spark Dataframe with a schema as we did in the lessons.
Repartition the Dataframe to 6 partitions and save it to parquet.
What is the average size of the Parquet (ending with .parquet extension) Files that were created (in MB)? Select the answer which most closely matches.

```console
// Run the Jupyter notebook hw05_question2.ipynb  
// hw05_question2.ipynb will download fhv data, so it must run before question 3, 4, and 6  

jupyter lab notebooks/hw05_question2.ipynb

```

**6MB**


## Question 3:
Count records

How many taxi trips were there on the 15th of October?

Consider only trips that started on the 15th of October.

```console
// Run the Jupyter notebook hw05_question3.ipynb  
// Must run hw05_question2.ipynb before to download fhv data  

jupyter lab notebooks/hw05_question3.ipynb

```

**62,610**

## Question 4:
Longest trip for each day

What is the length of the longest trip in the dataset in hours?

```console
// Run the Jupyter notebook hw05_question4.ipynb  
// Must run hw05_question2.ipynb before to download fhv data  

jupyter lab notebooks/hw05_question4.ipynb

```

**631,152.50 Hours**

## Question 5:
User Interface

Spark’s User Interface which shows the application's dashboard runs on which local port?

**4040**

## Question 6:
Least frequent pickup location zone

Load the zone lookup data into a temp view in Spark
Zone Data

Using the zone lookup data and the FHV October 2019 data, what is the name of the LEAST frequent pickup location Zone?

```console
// Run the Jupyter notebook hw05_question6.ipynb  
// Must run hw05_question2.ipynb before to download fhv data  

jupyter lab notebooks/hw05_question6.ipynb

```

**Jamaica Bay**

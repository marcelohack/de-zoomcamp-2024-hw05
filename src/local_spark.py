from pyspark.sql import SparkSession

print("Starting de-zoomcamp hw05 question 1...")
spark = SparkSession.builder \
    .master("local[*]") \
    .appName("local_hw05_question1") \
    .getOrCreate()

print("Spark Version:", spark.version)

print("Stopping the SparkSession...")
spark.stop()

print("de-zoomcamp hw05 question 1 is completed.")

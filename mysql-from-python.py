import os
import pymysql

# Get username
username = os.getenv('Tom-Nagy')

# Connect to the database
connection = pymysql.connect(
    host='localhost',
    user=username,
    password='',
    db='Chinook')

try:
    # Run a query
    with connection.cursor() as cursor:
        sql = "SELECT * FROM Artist;"
        cursor.execute(sql)
        result = cursor.fetchall()
        print(result)
finally:
    # Close the connection, regardless of whether th above was successful
    connection.close()

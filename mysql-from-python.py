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
        list_of_names = ['Jim', 'Fred', 'Bob']
        # Prepare a string with the same number of placeholders
        # as in list_of_names
        format_strings = ','.join(['%s']*len(list_of_names))
        cursor.execute("delete from Friends where name in ({});".format(format_strings), list_of_names)
        connection.commit()
finally:
    # Close the connection, regardless of whether th above was successful
    connection.close()

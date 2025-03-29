#!/usr/bin/python3
import psycopg2

conn = psycopg2.connect("host=192.168.56.30 dbname=cs_dashboard user=webuser1 password=ecupirate")

cursor = conn.cursor()

print ("Content-type: text/html\n\n")
print("PGSQL version:<br>")
cursor.execute("SELECT version();")
print("Result ",cursor.fetchall())

print("<br>First 10 from table faculty:")
cursor.execute("SELECT * FROM faculty limit 10;")
print("Result ",cursor.fetchall())
cursor.close()
conn.close


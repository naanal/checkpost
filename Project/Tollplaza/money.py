import xlrd
import MySQLdb

# Open the workbook and define the worksheet
book = xlrd.open_workbook("cash.xlsx")
sheet = book.sheet_by_name("Sheet1")

# Establish a MySQL connection
database = MySQLdb.connect (host="localhost", user = "root", passwd = "p@ssw0rd", db = "testing")

# Get the cursor, which is used to traverse the database, line by line
cursor = database.cursor()

# Create the INSERT INTO sql query
query = """INSERT INTO Tollapp_cash_update (User_Name,Cash_2000, Cash_500, Cash_100, Cash_50, Cash_10, Cash_5, Type, Total,Date,Cash_20) VALUES ( %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"""

# Create a For loop to iterate through each row in the XLS file, starting at row 2 to skip the headers
for r in range(1, sheet.nrows):
      user  = sheet.cell(r,).value
      c_2000 = sheet.cell(r,1).value
      c_500  = sheet.cell(r,2).value
      c_100 = sheet.cell(r,3).value
      c_50  = sheet.cell(r,4).value
      c_10 = sheet.cell(r,5).value
      c_5  = sheet.cell(r,6).value
      Type  = sheet.cell(r,7).value
      total = sheet.cell(r,8).value
      date   = sheet.cell(r,9).value
      c_20  = sheet.cell(r,10).value
     

      # Assign values from each row
      values = (user,c_2000,c_500,c_100,c_50,c_10,c_5,Type,total,date,c_20)

      # Execute sql Query
      cursor.execute(query, values)

# Close the cursor
cursor.close()

# Commit the transaction
database.commit()

# Close the database connection
database.close()

# Print results
print ""
print "All Done! Bye, for now."
print "upload sucessfully!!!!!!!!!!!!!!!"

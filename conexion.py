import mysql.connector

conexion = mysql.connector.connect(user='root', password='19961004Omar.',
                             host='localhost',
                             database='tienda',
                             port='3306')
if conexion.is_connected():
    print("conexion exitosa")
    conexion.close()
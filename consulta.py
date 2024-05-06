import mysql.connector

conexion = mysql.connector.connect(user='root', password='19961004Omar.',
                             host='localhost',
                             database='tienda',
                             port='3306')
if conexion.is_connected():
    print("conexion exitosa")
    cursor= conexion.cursor()
    #ejecuta una consulta select
    query = "SELECT * FROM marca"
    cursor.execute(query)
    #recupera los resutados 
    results=cursor.fetchall()
    #itera sobre los resultados e imprime los datos
    for row in results:
        print(row)
    
    
    cursor.close()
    conexion.close()
    
  
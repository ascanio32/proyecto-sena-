import mysql.connector

conexion = mysql.connector.connect(user='root', password='19961004Omar.',
                             host='localhost',
                             database='tienda',
                             port='3306')
if conexion.is_connected():
    print("conexion exitosa")
    cursor= conexion.cursor()
   #ejecute una consulta update
    query = "UPDATE marca set ID_Marca = '13' WHERE ID_Marca = '3'"
    cursor.execute(query)
    #confirma los cambios
    conexion.commit()
    #imprime la cantidad de registros afectados
    print(f"{cursor.rowcount} registro(s) afectaod(s)")
    cursor.close()
    conexion.close()
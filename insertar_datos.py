import mysql.connector

conexion = mysql.connector.connect(user='root', password='19961004Omar.',
                             host='localhost',
                             database='tienda',
                             port='3306')
if conexion.is_connected():
    print("conexion exitosa")
    #acceso a datos
    cursor= conexion.cursor()
    #ingresar datos
    sentencia1 = "INSERT INTO marca(ID_Marca,Nombre_mar,Descripcion_mar) Values(%s,%s,%s)"
    val = [
    ('1','BOSS ','Una Buzo en felpa francesa '), 
    ('2','Nike','Buzo nike es ideal su diseño y material'),
    ('3','adidas','confeccionado en tejido de punto doble'),
      ]
        
    cursor.executemany(sentencia1,val)
    conexion.commit()
    print("registro con exito")
    conexion.close()
drop database if exists tienda;
create database Tienda;
use Tienda;
create table Clientes (
ID_Cliente int not null,
Nombre_cli varchar (30) not null,
Apellido_cli varchar (30) not null,
Direccion_cli varchar (60) not null,
Email_cli varchar (40) not null,
Telefono_cli int not null,
primary key(ID_Cliente)
);
create table Producto(
ID_Producto  int  not null,
Nombre_pro varchar (30) not null,
Descripcion_pro varchar (50) not null,
Precio_pro float not null ,
Categoria_pro varchar (40) not null,
Talla_pro int not null,
Color_pro varchar (30) not null,
stock_pro int not null,
primary key(ID_Producto)
);
create table categoria(
ID_Categoria int not null,
Nombre_cat varchar (30) not null,
Descripcion_cat varchar (90) not null,
primary key (ID_Categoria)
);
create table  Marca(
ID_Marca int not null,
Nombre_mar varchar (30) not null,
Descripcion_mar varchar (40) not null,
primary key (ID_Marca)
);

create table carrito_de_compras(
ID_Carrito_de_compras int not null,
ID_Cliente int not null,
Fecha_car date not null,
Total_car float not null,
primary key(ID_Carrito_de_compras,ID_Cliente ),
foreign key(ID_Cliente)references Clientes (ID_Cliente)
)engine=InnoDB;
create table  detalle_de_compras(
ID_Detalle_de_compras int not null,
ID_Producto int not null,
ID_Carrito_de_compras int not null,
cantidad_det int not null,
precio_unitario_del float not null,
sudtotal_det float not null,
primary key(ID_Detalle_de_compras,ID_Producto,ID_Carrito_de_compras),
foreign key(ID_Producto) references producto (ID_Producto),
foreign key (ID_Carrito_de_compras) references carrito_de_compras(ID_Carrito_de_compras)
)engine=InnoDB;
create table pedido(
ID_Pedido int not null,
ID_Cliente int not null,
fecha_ped datetime not null,
total_ped float not null,
Direccion_de_envio_ped varchar(90) not null,
Metodo_de_pago_ped varchar (50) not null,
Estado_de_pedido_ped varchar(50),
primary key(ID_Pedido,ID_Cliente),
foreign key (ID_Cliente) references clientes (ID_Cliente)
)engine=InnoDB;
CREATE TABLE detalle_de_pedido (
    ID_Detalle_de_pedido_det VARCHAR(90),
    ID_Producto INT NOT NULL,
    ID_Pedido INT NOT NULL,
    Cantidad_det INT NOT NULL,
    precio_unitario_det FLOAT NOT NULL,
    subtotal_det FLOAT NOT NULL,
    PRIMARY KEY (ID_Detalle_de_pedido_det , ID_Producto , ID_Pedido),
    FOREIGN KEY (ID_Producto)
        REFERENCES producto (ID_Producto),
    FOREIGN KEY (ID_Pedido)
        REFERENCES pedido (ID_Pedido)
)  ENGINE=INNODB
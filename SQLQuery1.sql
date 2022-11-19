create database Venta
use Ventas

Create Table Productos(
idProducto  char(3) not null primary key,
NombreProducto varchar(40) not null,
)
go

Create Table Categorias(
idCategorias int not null primary key,
NombreCategorias varchar(40) not null,
Descripcion varchar null
)
go

Create table Clientes(
idCliente char(5) not null primary key,
NomCliente varchar(40) not null,
idProducto char(3) not null,
constraint fk_Clientes_Producto foreign key(idProducto) references Productos(idProducto)
)

Create table Producto(
idProducto int not null primary key,
NomProducto varchar(80) not null,
idCategorias int not null,
CantxUnidad varchar(50) not null,
PrecioUnidad decimal(10,2) not null,

constraint fk_Producto_Categorias foreign key(idCategorias)references Categorias



)
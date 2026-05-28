create database hoteldb_in4cm;
-- drop database hoteldb_in4cm;
use hoteldb_in4cm;

-- Habitaciones

create table habitaciones (
	numero_habitacion int primary key not null auto_increment,
    precio_noche decimal(12,2) , 
    tipo_habitacion VARCHAR(50) ,
    piso_habitacion int, 
    estado_habitacion VARCHAR(20) default 'Libre'
);
-- clientes

create table cliente (
	cui varchar(20) primary key not null,
    nombre_cliente VARCHAR(100),
    nacionalidad_cliente VARCHAR(50) default"Guatemala",
    telefono_cliente VARCHAR (20)
);
-- Reserva

create table reserva (
	id_reserva int primary key auto_increment,
	fecha_inicio timestamp default current_timestamp,
    fecha_fin timestamp, 
    estado_reserva VARCHAR(20) not null default "Libre",
    cui varchar(20), 
    constraint fk_cui foreign key (cui) references cliente(cui)
    ON DELETE CASCADE
);
-- Empleado

create table empleado (
	id_empleado int  primary key not null auto_increment , 
    nombre_empleado VARCHAR (100), 
    cargo_empleado VARCHAR (50) default "Limpiador", 
    id_reserva int ,
    constraint fk_id_reserva foreign key (id_reserva) references reserva(id_reserva) on delete cascade
);
-- Detalles_reserva (Controlador muchos a muchos)

create table detalles_reserva (
    id_detalle int primary key auto_increment,
    detalles_habitacion varchar(50),
    numero_habitacion int,
    id_reserva int,

    constraint fk_numero_habitacion foreign key (numero_habitacion) references habitaciones(numero_habitacion) on delete cascade,

    constraint fk_id_r foreign key(id_reserva) references reserva(id_reserva) on delete cascade 
);








	
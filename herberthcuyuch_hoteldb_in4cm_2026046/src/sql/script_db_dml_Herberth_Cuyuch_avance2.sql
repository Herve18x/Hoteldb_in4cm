use hoteldb_in4cm;
-- Inserts

INSERT INTO HABITACIONES
(numero_habitacion, precio_noche, tipo_habitacion, piso_habitacion)
VALUES
(101, 250.00, 'Sencilla', 1),
(102, 300.00, 'Doble', 1),
(103, 750.00, 'Suite', 1),
(104, 500.00, 'Familiar', 1),
(105, 1200.00, 'Presidencial', 1),
(106, 260.00, 'Sencilla', 2),
(107, 320.00, 'Doble', 2),
(108, 800.00, 'Suite', 2),
(109, 550.00, 'Deluxe', 2),
(110, 220.00, 'Económica', 2),
(111, 350.00, 'Matrimonial', 3),
(112, 950.00, 'Premium', 3),
(113, 280.00, 'Estándar', 3),
(114, 400.00, 'Doble Deluxe', 3),
(115, 850.00, 'Familiar Suite', 3),
(116, 210.00, 'Económica', 4),
(117, 1100.00, 'VIP', 4),
(118, 450.00, 'Triple', 4),
(119, 980.00, 'Moderna', 4),
(120, 600.00, 'Ejecutiva', 4);

INSERT INTO Cliente 
(cui, nombre_cliente, nacionalidad_cliente, telefono_cliente)
VALUES
('1000000000001', 'Juan Pérez', 'Guatemalteca', '5555-1001'),
('1000000000002', 'María López', 'Salvadoreña', '5555-1002'),
('1000000000003', 'Carlos Ramírez', 'Hondureña', '5555-1003'),
('1000000000004', 'Ana García', 'Mexicana', '5555-1004'),
('1000000000005', 'Luis Hernández', 'Costarricense', '5555-1005'),
('1000000000006', 'Sofía Morales', 'Nicaragüense', '5555-1006'),
('1000000000007', 'José Castillo', 'Panameña', '5555-1007'),
('1000000000008', 'Daniela Flores', 'Guatemalteca', '5555-1008'),
('1000000000009', 'Miguel Torres', 'Colombiana', '5555-1009'),
('1000000000010', 'Fernanda Cruz', 'Peruana', '5555-1010'),
('1000000000011', 'Andrés Mendoza', 'Argentina', '5555-1011'),
('1000000000012', 'Paula Reyes', 'Chilena', '5555-1012'),
('1000000000013', 'Ricardo Ortiz', 'Ecuatoriana', '5555-1013'),
('1000000000014', 'Valeria Navarro', 'Uruguaya', '5555-1014'),
('1000000000015', 'Diego Aguilar', 'Paraguaya', '5555-1015'),
('1000000000016', 'Camila Rojas', 'Boliviana', '5555-1016'),
('1000000000017', 'Javier Silva', 'Venezolana', '5555-1017'),
('1000000000018', 'Natalia Vega', 'Brasileña', '5555-1018'),
('1000000000019', 'Pedro Alvarado', 'Guatemalteca', '5555-1019'),
('1000000000020', 'Lucía Herrera', 'Dominicana', '5555-1020');


INSERT INTO reserva
(id_reserva, fecha_inicio, fecha_fin, estado_reserva, cui)
VALUES
(1, '2026-05-01 08:00:00', '2026-05-03 12:00:00', 'Activa', '1000000000001'),
(2, '2026-05-02 09:30:00', '2026-05-04 11:00:00', 'Cancelada', '1000000000002'),
(3, '2026-05-03 10:00:00', '2026-05-05 14:00:00', 'Finalizada', '1000000000003'),
(4, '2026-05-04 07:45:00', '2026-05-06 13:30:00', 'Activa', '1000000000004'),
(5, '2026-05-05 11:15:00', '2026-05-07 15:45:00', 'Pendiente', '1000000000005'),
(6, '2026-05-06 12:00:00', '2026-05-08 10:00:00', 'Cancelada', '1000000000006'),
(7, '2026-05-07 13:20:00', '2026-05-09 16:00:00', 'Finalizada', '1000000000007'),
(8, '2026-05-08 14:10:00', '2026-05-10 18:00:00', 'Activa', '1000000000008'),
(9, '2026-05-09 15:00:00', '2026-05-11 17:30:00', 'Pendiente', '1000000000009'),
(10, '2026-05-10 08:40:00', '2026-05-12 12:10:00', 'Finalizada', '1000000000010'),
(11, '2026-05-11 09:00:00', '2026-05-13 13:00:00', 'Activa', '1000000000011'),
(12, '2026-05-12 10:30:00', '2026-05-14 15:20:00', 'Cancelada', '1000000000012'),
(13, '2026-05-13 11:45:00', '2026-05-15 16:10:00', 'Pendiente', '1000000000013'),
(14, '2026-05-14 07:50:00', '2026-05-16 11:40:00', 'Finalizada', '1000000000014'),
(15, '2026-05-15 12:25:00', '2026-05-17 18:15:00', 'Activa', '1000000000015'),
(16, '2026-05-16 13:35:00', '2026-05-18 19:00:00', 'Pendiente', '1000000000016'),
(17, '2026-05-17 14:50:00', '2026-05-19 20:30:00', 'Cancelada', '1000000000017'),
(18, '2026-05-18 15:15:00', '2026-05-20 21:00:00', 'Finalizada', '1000000000018'),
(19, '2026-05-19 16:40:00', '2026-05-21 22:10:00', 'Activa', '1000000000019'),
(20, '2026-05-20 17:00:00', '2026-05-22 23:00:00', 'Pendiente', '1000000000020');


INSERT INTO empleado
(id_empleado, nombre_empleado, cargo_empleado, id_reserva)
VALUES
(1, 'Pedro Gómez', 'Recepcionista', 1),
(2, 'Laura Martínez', 'Limpiador', 2),
(3, 'Carlos Méndez', 'Gerente', 3),
(4, 'Andrea López', 'Cocinero', 4),
(5, 'Miguel Herrera', 'Seguridad', 5),
(6, 'Sofía Ramírez', 'Limpiador', 6),
(7, 'Daniel Castro', 'Recepcionista', 7),
(8, 'Valeria Torres', 'Gerente', 8),
(9, 'Jorge Morales', 'Cocinero', 9),
(10, 'Paola Sánchez', 'Seguridad', 10),
(11, 'Ricardo Flores', 'Limpiador', 11),
(12, 'Camila Reyes', 'Recepcionista', 12),
(13, 'Fernando Ortiz', 'Gerente', 13),
(14, 'Natalia Cruz', 'Cocinero', 14),
(15, 'Luis Vega', 'Seguridad', 15),
(16, 'Mariana Silva', 'Limpiador', 16),
(17, 'Kevin Aguilar', 'Recepcionista', 17),
(18, 'Gabriela Navarro', 'Gerente', 18),
(19, 'Óscar Mendoza', 'Cocinero', 19),
(20, 'Daniela Rojas', 'Seguridad', 20);

INSERT INTO detalles_reserva(
    detalles_habitacion,
    numero_habitacion,
    id_reserva
)
VALUES
('Vista al mar', 101, 1),
('Incluye desayuno', 102, 1),
('Cama King Size', 103, 2),
('Jacuzzi privado', 104, 2),
('Balcón incluido', 105, 3),
('Aire acondicionado', 106, 3),
('TV inteligente', 107, 4),
('Mini bar premium', 108, 4),
('Habitación familiar', 109, 5),
('Servicio VIP', 110, 5);

-- CRUD de HABITACIONES
-- Agregar
delimiter // 
create procedure sp_agregar_habitaciones(
    in _precio_noche decimal(12,2),
    in _tipo_habitacion VARCHAR(50),
    in _piso_habitacion int)
begin 
INSERT INTO habitaciones(
        precio_noche,
        tipo_habitacion,
        piso_habitacion
    )
    VALUES (
        _precio_noche,
        _tipo_habitacion,
        _piso_habitacion
        );
end //
delimiter ;

-- CONTROLADOR BUSCAR HABITACIONES 
delimiter // 
create procedure sp_buscar_habitaciones(	
	in _numero_habitacion int)
begin
    select *
    from habitaciones H
    where H.numero_habitacion = _numero_habitacion;
    end // 
delimiter ;

-- CONTROLADOR ACTUALIZAR HABITACIONES

delimiter //
create procedure sp_actualizar_habitaciones(
	in _numero_habitacion int,
	in _estado_habitacion VARCHAR(20)
    )
begin 
	update habitaciones 
    set estado_habitacion = _estado_habitacion
		where numero_habitacion = _numero_habitacion;
	end //
delimiter ;
call sp_actualizar_habitaciones('120', 'Libre');
call sp_buscar_habitaciones(120);

delimiter //
create procedure sp_eliminar_habitaciones(
	in _numero_habitacion int)
begin 
	delete from habitaciones
    where numero_habitacion = _numero_habitacion;
end //
delimiter ;

-- CRUD DE CLIENTE 
-- CONTROLADOR AGREGAR CLIENTES 

delimiter // 
create procedure sp_agregar_cliente(
	in _cui varchar(20), 
    in _nombre_cliente VARCHAR(100),
    in _nacionalidad_cliente VARCHAR(50),
    in _telefono_cliente VARCHAR(20)
	)
begin 
	insert into cliente(
    cui, 
    nombre_cliente,
    nacionalidad_cliente,
    telefono_cliente
    )
    values( 
    _cui,
    _nombre_cliente,
    _nacionalidad_cliente, 
    _telefono_cliente
    );
end //
delimiter ; 

-- CONTROLADOR BUSCAR CLIENTES
	
delimiter //
create procedure sp_buscar_cliente(
	in _cui VARCHAR(20)
	)
begin
	select * 
    from cliente 
    where cui = _cui;
    end //
delimiter ; 

-- CONTROLADOR ACTUALIZAR CLIENTES 
select * from cliente;
delimiter // 
create procedure sp_actualizar_clientes(
	in _cui VARCHAR(20), 
    in _nombre_cliente VARCHAR(100),
    in _nacionalidad_cliente VARCHAR(50),
    in _telefono_cliente VARCHAR(60)
	)
begin 
	update cliente
    set cui = _cui,
		nombre_cliente = _nombre_cliente,
        nacionalidad_cliente = _nacionalidad_cliente, 
        telefono_cliente = _telefono_cliente
	where cui = _cui;
	end// 
delimiter ;

-- CONTROLADOR ELIMINAR CLIENTES

delimiter //
create procedure sp_eliminar_cliente(
	in _cui VARCHAR(20))
begin 
	delete from cliente
    where cui = _cui;
    end // 
delimiter ; 

-- CRUD RESERVA 
-- CONTROLADOR AGREGAR RESERVA

delimiter // 
create procedure sp_agregar_reserva(
	in _fecha_inicio timestamp ,
    in _fecha_fin timestamp, 
    in _estado_reserva VARCHAR(20),
    in _cui varchar(20)
    )
begin 
	insert into reserva(
    fecha_inicio,
    fecha_fin, 
    estado_reserva, 
    cui
    )
    values (
	_fecha_inicio ,
    _fecha_fin , 
    _estado_reserva ,
	_cui 
    );
    end //
delimiter ; 

-- CONTROLADOR BUSCAR RESERVA

delimiter //
create procedure sp_buscar_reserva(
	in _cui VARCHAR(20)
	)
begin 
	select * from reserva 
    where cui = _cui;
    end // 
delimiter ;

-- CONTROLADOR ACTUALIZAR RESERVA

delimiter // 
create procedure sp_actualizar_reserva(
	in _fecha_fin timestamp,
    in _id_reserva int,
    in _estado_reserva VARCHAR(20)
	)
begin 
	update reserva
    set fecha_fin = _fecha_fin,
        estado_reserva = _estado_reserva
    where id_reserva = _id_reserva;
    end //
delimiter ;

-- CONTROLADOR ELIMINAR RESERVA

delimiter //
create procedure sp_eliminar_reserva(
	in _cui VARCHAR(20)
	)
begin 
	delete from reserva
    where cui = _cui ;
	end //
delimiter ; 

-- CRUD EMPLEADO 
-- CONTROLADOR AGREGAR EMPLEADO

delimiter //
create procedure sp_agregar_empleado(
    in _nombre_empleado VARCHAR(100),
    in _cargo_empleado VARCHAR(50),
    in _id_reserva int
)
begin
    insert into empleado(
        nombre_empleado,
        cargo_empleado,
        id_reserva)
    values(
        _nombre_empleado,
        _cargo_empleado,
        _id_reserva);
end //
delimiter ;

-- CONTROLADOR BUSCAR EMPLEADO

delimiter //
create procedure sp_buscar_empleado(
	in _id_empleado int
	)
begin 
	select * from empleado 
    where id_empleado = _id_empleado;
    end // 
delimiter ; 

-- CONTROLADOR ACTUALIZAR EMPLEADO

delimiter // 
create procedure sp_actualizar_empleado(
	in _id_empleado int, 
	in _cargo_empleado VARCHAR(100),
    in _id_reserva int
	)
begin 
	update empleado 
    set cargo_empleado = _cargo_empleado, 
		id_reserva = _id_reserva
	where id_empleado = _id_empleado;
    end //
delimiter ; 

-- CONTROLADOR ELIMINAR EMPLEADO

delimiter //
create procedure sp_eliminar_empleado(
	in _id_empleado int 
    )
begin 
	delete from empleado 
    where id_empleado = _id_empleado;
    end //
delimiter ;

-- CRUD DETALLES_RESERVA
-- CONTROLADOR AGREGAR DETALLES

delimiter // 
create procedure sp_agregar_detalles (
	in _detalles_habitacion varchar(50), 
    in _numero_habitacion int, 
    in _id_reserva int
	)
begin 
	insert into detalles_reserva(
    detalles_habitacion, 
    numero_habitacion, 
    id_reserva
    )
    values (
    _detalles_habitacion,
    _numero_habitacion, 
    _id_reserva
    );
    end // 
delimiter ; 

-- CONTROLADOR BUSCAR DETALLES

delimiter // 
create procedure sp_buscar_detalles(
	in _id_reserva int
	)
begin 
	select * from detalles_reserva
    where id_reserva = _id_reserva; 
    end // 
delimiter ; 

-- CONTROLADOR ACTUALIZAR DETALLES

delimiter // 
create procedure sp_actualizar_detalles(	
	in _detalles_habitacion VARCHAR(100),
	in _id_reserva int
    )
begin 
	update detalles_reserva 
    set detalles_habitacion = _detalles_habitacion
    where id_reserva = _id_reserva;
    end // 
delimiter ; 

-- CONTROLADOR ELMINAR DETALLES

delimiter // 
create procedure sp_eliminar_detalles(
	in _id_reserva int
	)
begin 
	delete from detalles_reserva
    where id_reserva = _id_reserva; 
    end // 
delimiter ;

-- Agregar Datos con los nuevos controladores 
-- HABITACIONES
CALL sp_agregar_habitaciones(250.00, 'Simple', 5);
CALL sp_agregar_habitaciones(320.00, 'Doble', 5);
CALL sp_agregar_habitaciones(450.00, 'Suite', 5);
CALL sp_agregar_habitaciones(500.00, 'Premium', 5);
CALL sp_agregar_habitaciones(650.00, 'VIP', 5);
CALL sp_agregar_habitaciones(275.00, 'Simple Plus', 6);
CALL sp_agregar_habitaciones(340.00, 'Doble Deluxe', 6);
CALL sp_agregar_habitaciones(700.00, 'Ejecutiva', 6);
CALL sp_agregar_habitaciones(850.00, 'Real', 6);
CALL sp_agregar_habitaciones(900.00, 'Presidencial', 6);
CALL sp_agregar_habitaciones(240.00, 'Eco', 7);
CALL sp_agregar_habitaciones(380.00, 'Matrimonial', 7);
CALL sp_agregar_habitaciones(420.00, 'Familiar', 7);
CALL sp_agregar_habitaciones(760.00, 'Suite Familiar', 7);
CALL sp_agregar_habitaciones(810.00, 'Panorámica', 7);
CALL sp_agregar_habitaciones(299.00, 'Sencilla Plus', 8);
CALL sp_agregar_habitaciones(399.00, 'Triple', 8);
CALL sp_agregar_habitaciones(499.00, 'Triple Deluxe', 8);
CALL sp_agregar_habitaciones(999.00, 'Imperial', 8);
CALL sp_agregar_habitaciones(1500.00, 'Royal Suite', 8);

-- CLIENTES

CALL sp_agregar_cliente('1000000000021', 'Carlos Ruiz', 'Guatemalteca', '5555-2001');
CALL sp_agregar_cliente('1000000000022', 'Andrea López', 'Mexicana', '5555-2002');
CALL sp_agregar_cliente('1000000000023', 'Mario Pérez', 'Hondureña', '5555-2003');
CALL sp_agregar_cliente('1000000000024', 'Karla Díaz', 'Salvadoreña', '5555-2004');
CALL sp_agregar_cliente('1000000000025', 'José Martínez', 'Costarricense', '5555-2005');
CALL sp_agregar_cliente('1000000000026', 'Luis Castro', 'Panameña', '5555-2006');
CALL sp_agregar_cliente('1000000000027', 'Paola Herrera', 'Guatemalteca', '5555-2007');
CALL sp_agregar_cliente('1000000000028', 'Fernanda Silva', 'Argentina', '5555-2008');
CALL sp_agregar_cliente('1000000000029', 'Kevin Flores', 'Peruana', '5555-2009');
CALL sp_agregar_cliente('1000000000030', 'Sofía Ramírez', 'Chilena', '5555-2010');
CALL sp_agregar_cliente('1000000000031', 'Miguel Torres', 'Colombiana', '5555-2011');
CALL sp_agregar_cliente('1000000000032', 'Lucía Gómez', 'Uruguaya', '5555-2012');
CALL sp_agregar_cliente('1000000000033', 'Daniel Reyes', 'Boliviana', '5555-2013');
CALL sp_agregar_cliente('1000000000034', 'Valeria Cruz', 'Venezolana', '5555-2014');
CALL sp_agregar_cliente('1000000000035', 'Samuel Navarro', 'Paraguaya', '5555-2015');
CALL sp_agregar_cliente('1000000000036', 'Natalia Vega', 'Brasileña', '5555-2016');
CALL sp_agregar_cliente('1000000000037', 'Javier Morales', 'Dominicana', '5555-2017');
CALL sp_agregar_cliente('1000000000038', 'Camila Ortiz', 'Ecuatoriana', '5555-2018');
CALL sp_agregar_cliente('1000000000039', 'Ricardo Mendoza', 'Guatemalteca', '5555-2019');
CALL sp_agregar_cliente('1000000000040', 'Mariana Flores', 'Mexicana', '5555-2020');

-- RESERVAS

CALL sp_agregar_reserva('2026-06-01 10:00:00','2026-06-03 12:00:00','Activa','1000000000021');
CALL sp_agregar_reserva('2026-06-02 10:00:00','2026-06-04 12:00:00','Pendiente','1000000000022');
CALL sp_agregar_reserva('2026-06-03 10:00:00','2026-06-05 12:00:00','Finalizada','1000000000023');
CALL sp_agregar_reserva('2026-06-04 10:00:00','2026-06-06 12:00:00','Cancelada','1000000000024');
CALL sp_agregar_reserva('2026-06-05 10:00:00','2026-06-07 12:00:00','Activa','1000000000025');
CALL sp_agregar_reserva('2026-06-06 10:00:00','2026-06-08 12:00:00','Pendiente','1000000000026');
CALL sp_agregar_reserva('2026-06-07 10:00:00','2026-06-09 12:00:00','Finalizada','1000000000027');
CALL sp_agregar_reserva('2026-06-08 10:00:00','2026-06-10 12:00:00','Cancelada','1000000000028');
CALL sp_agregar_reserva('2026-06-09 10:00:00','2026-06-11 12:00:00','Activa','1000000000029');
CALL sp_agregar_reserva('2026-06-10 10:00:00','2026-06-12 12:00:00','Pendiente','1000000000030');
CALL sp_agregar_reserva('2026-06-11 10:00:00','2026-06-13 12:00:00','Finalizada','1000000000031');
CALL sp_agregar_reserva('2026-06-12 10:00:00','2026-06-14 12:00:00','Cancelada','1000000000032');
CALL sp_agregar_reserva('2026-06-13 10:00:00','2026-06-15 12:00:00','Activa','1000000000033');
CALL sp_agregar_reserva('2026-06-14 10:00:00','2026-06-16 12:00:00','Pendiente','1000000000034');
CALL sp_agregar_reserva('2026-06-15 10:00:00','2026-06-17 12:00:00','Finalizada','1000000000035');
CALL sp_agregar_reserva('2026-06-16 10:00:00','2026-06-18 12:00:00','Cancelada','1000000000036');
CALL sp_agregar_reserva('2026-06-17 10:00:00','2026-06-19 12:00:00','Activa','1000000000037');
CALL sp_agregar_reserva('2026-06-18 10:00:00','2026-06-20 12:00:00','Pendiente','1000000000038');
CALL sp_agregar_reserva('2026-06-19 10:00:00','2026-06-21 12:00:00','Finalizada','1000000000039');
CALL sp_agregar_reserva('2026-06-20 10:00:00','2026-06-22 12:00:00','Cancelada','1000000000040');

-- EMPLEADOS 

CALL sp_agregar_empleado('Mario López', 'Recepcionista', 1);
CALL sp_agregar_empleado('Andrea Ruiz', 'Limpiador', 2);
CALL sp_agregar_empleado( 'Kevin Morales', 'Gerente', 3);
CALL sp_agregar_empleado('Lucía Pérez', 'Seguridad', 4);
CALL sp_agregar_empleado('Carlos Díaz', 'Cocinero', 5);
CALL sp_agregar_empleado('Natalia Gómez', 'Recepcionista', 6);
CALL sp_agregar_empleado('Luis Herrera', 'Limpiador', 7);
CALL sp_agregar_empleado('Paola Martínez', 'Gerente', 8);
CALL sp_agregar_empleado('Ricardo Flores', 'Seguridad', 9);
CALL sp_agregar_empleado('Camila Torres', 'Cocinero', 10);
CALL sp_agregar_empleado('José Castillo', 'Recepcionista', 11);
CALL sp_agregar_empleado('Fernanda Cruz', 'Limpiador', 12);
CALL sp_agregar_empleado('Miguel Reyes', 'Gerente', 13);
CALL sp_agregar_empleado('Valeria Silva', 'Seguridad', 14);
CALL sp_agregar_empleado('Daniel Navarro', 'Cocinero', 15);
CALL sp_agregar_empleado('Mariana Vega', 'Recepcionista', 16);
CALL sp_agregar_empleado('Samuel Ortiz', 'Limpiador', 17);
CALL sp_agregar_empleado('Gabriela Mendoza', 'Gerente', 18);
CALL sp_agregar_empleado('Javier Aguilar', 'Seguridad', 19);
CALL sp_agregar_empleado('Sofía Ramírez', 'Cocinero', 20);
CALL sp_agregar_empleado('Sofía Ramírez', 'Cocinero', 20);

-- DETALLES_RESERVAS

CALL sp_agregar_detalles('Televisión HD', 101, 1);
CALL sp_agregar_detalles('WiFi Gratis', 102, 2);
CALL sp_agregar_detalles('Mini Bar', 103, 3);
CALL sp_agregar_detalles('Jacuzzi', 104, 4);
CALL sp_agregar_detalles('Vista al jardín', 105, 5);
CALL sp_agregar_detalles('Cama King', 106, 6);
CALL sp_agregar_detalles('Balcón privado', 107, 7);
CALL sp_agregar_detalles('Aire central', 108, 8);
CALL sp_agregar_detalles('Escritorio ejecutivo', 109, 9);
CALL sp_agregar_detalles('Cafetera incluida', 110, 10);
CALL sp_agregar_detalles('Ducha premium', 111, 11);
CALL sp_agregar_detalles('Smart TV', 112, 12);
CALL sp_agregar_detalles('Iluminación LED', 113, 13);
CALL sp_agregar_detalles('Caja fuerte', 114, 14);
CALL sp_agregar_detalles('Decoración moderna', 115, 15);
CALL sp_agregar_detalles('Sillón reclinable', 116, 16);
CALL sp_agregar_detalles('Servicio a cuarto', 117, 17);
CALL sp_agregar_detalles('Ventanas panorámicas', 118, 18);
CALL sp_agregar_detalles('Piso alfombrado', 119, 19);
CALL sp_agregar_detalles('Lavandería incluida', 120, 20);

-- BUSCAR DATOS NUEVOS CONTROLADORES 
-- HABITACIONES 
CALL sp_buscar_habitaciones(101);
CALL sp_buscar_habitaciones(105);
CALL sp_buscar_habitaciones(110);
CALL sp_buscar_habitaciones(115);
CALL sp_buscar_habitaciones(120);
CALL sp_buscar_habitaciones(121);
CALL sp_buscar_habitaciones(125);
CALL sp_buscar_habitaciones(130);
CALL sp_buscar_habitaciones(135);
CALL sp_buscar_habitaciones(140);

-- CLIENTES 
CALL sp_buscar_cliente('1000000000001');
CALL sp_buscar_cliente('1000000000005');
CALL sp_buscar_cliente('1000000000010');
CALL sp_buscar_cliente('1000000000015');
CALL sp_buscar_cliente('1000000000020');
CALL sp_buscar_cliente('1000000000025');
CALL sp_buscar_cliente('1000000000030');
CALL sp_buscar_cliente('1000000000035');
CALL sp_buscar_cliente('1000000000038');
CALL sp_buscar_cliente('1000000000040');

-- RESERVA 
CALL sp_buscar_reserva('1000000000001');
CALL sp_buscar_reserva('1000000000005');
CALL sp_buscar_reserva('1000000000010');
CALL sp_buscar_reserva('1000000000015');
CALL sp_buscar_reserva('1000000000020');
CALL sp_buscar_reserva('1000000000025');
CALL sp_buscar_reserva('1000000000030');
CALL sp_buscar_reserva('1000000000035');
CALL sp_buscar_reserva('1000000000038');
CALL sp_buscar_reserva('1000000000040');

-- EMPLEADOS 
CALL sp_buscar_empleado(1);
CALL sp_buscar_empleado(5);
CALL sp_buscar_empleado(10);
CALL sp_buscar_empleado(15);
CALL sp_buscar_empleado(20);
CALL sp_buscar_empleado(25);
CALL sp_buscar_empleado(30);
CALL sp_buscar_empleado(35);
CALL sp_buscar_empleado(38);
CALL sp_buscar_empleado(40);

-- DETALLES_RESERVA 
CALL sp_buscar_detalles(1);
CALL sp_buscar_detalles(2);
CALL sp_buscar_detalles(3);
CALL sp_buscar_detalles(4);
CALL sp_buscar_detalles(5);
CALL sp_buscar_detalles(10);
CALL sp_buscar_detalles(15);
CALL sp_buscar_detalles(18);
CALL sp_buscar_detalles(19);
CALL sp_buscar_detalles(20);

-- ACTUALIZAR CON LOS CONTROLADORES
-- HABITACIONES 
CALL sp_actualizar_habitaciones(101, 'Ocupada');
CALL sp_actualizar_habitaciones(102, 'Mantenimiento');
CALL sp_actualizar_habitaciones(103, 'Reservada');
CALL sp_actualizar_habitaciones(104, 'Limpieza');
CALL sp_actualizar_habitaciones(105, 'Libre');
CALL sp_actualizar_habitaciones(106, 'Ocupada');
CALL sp_actualizar_habitaciones(107, 'Reservada');
CALL sp_actualizar_habitaciones(108, 'Mantenimiento');
CALL sp_actualizar_habitaciones(109, 'Limpieza');
CALL sp_actualizar_habitaciones(110, 'Libre');
CALL sp_actualizar_habitaciones(111, 'Ocupada');
CALL sp_actualizar_habitaciones(112, 'Reservada');
CALL sp_actualizar_habitaciones(113, 'Libre');
CALL sp_actualizar_habitaciones(114, 'Mantenimiento');
CALL sp_actualizar_habitaciones(115, 'Ocupada');

-- CLIENTES 
CALL sp_actualizar_clientes('1000000000001', 'Juan Pérez Actualizado', 'Guatemalteca', '5555-3001');
CALL sp_actualizar_clientes('1000000000002', 'María López Actualizada', 'Salvadoreña', '5555-3002');
CALL sp_actualizar_clientes('1000000000003', 'Carlos Ramírez Actualizado', 'Hondureña', '5555-3003');
CALL sp_actualizar_clientes('1000000000004', 'Ana García Actualizada', 'Mexicana', '5555-3004');
CALL sp_actualizar_clientes('1000000000005', 'Luis Hernández Actualizado', 'Costarricense', '5555-3005');
CALL sp_actualizar_clientes('1000000000006', 'Sofía Morales Actualizada', 'Nicaragüense', '5555-3006');
CALL sp_actualizar_clientes('1000000000007', 'José Castillo Actualizado', 'Panameña', '5555-3007');
CALL sp_actualizar_clientes('1000000000008', 'Daniela Flores Actualizada', 'Guatemalteca', '5555-3008');
CALL sp_actualizar_clientes('1000000000009', 'Miguel Torres Actualizado', 'Colombiana', '5555-3009');
CALL sp_actualizar_clientes('1000000000010', 'Fernanda Cruz Actualizada', 'Peruana', '5555-3010');
CALL sp_actualizar_clientes('1000000000011', 'Andrés Mendoza Actualizado', 'Argentina', '5555-3011');
CALL sp_actualizar_clientes('1000000000012', 'Paula Reyes Actualizada', 'Chilena', '5555-3012');
CALL sp_actualizar_clientes('1000000000013', 'Ricardo Ortiz Actualizado', 'Ecuatoriana', '5555-3013');
CALL sp_actualizar_clientes('1000000000014', 'Valeria Navarro Actualizada', 'Uruguaya', '5555-3014');
CALL sp_actualizar_clientes('1000000000015', 'Diego Aguilar Actualizado', 'Paraguaya', '5555-3015');

-- RESERVA 
CALL sp_actualizar_reserva('2026-06-05 12:00:00', 1, 'Finalizada');
CALL sp_actualizar_reserva('2026-06-06 13:00:00', 2, 'Activa');
CALL sp_actualizar_reserva('2026-06-07 14:00:00', 3, 'Cancelada');
CALL sp_actualizar_reserva('2026-06-08 15:00:00', 4, 'Pendiente');
CALL sp_actualizar_reserva('2026-06-09 16:00:00', 5, 'Finalizada');
CALL sp_actualizar_reserva('2026-06-10 17:00:00', 6, 'Activa');
CALL sp_actualizar_reserva('2026-06-11 18:00:00', 7, 'Cancelada');
CALL sp_actualizar_reserva('2026-06-12 19:00:00', 8, 'Pendiente');
CALL sp_actualizar_reserva('2026-06-13 20:00:00', 9, 'Finalizada');
CALL sp_actualizar_reserva('2026-06-14 21:00:00', 10, 'Activa');
CALL sp_actualizar_reserva('2026-06-15 22:00:00', 11, 'Cancelada');
CALL sp_actualizar_reserva('2026-06-16 23:00:00', 12, 'Pendiente');
CALL sp_actualizar_reserva('2026-06-17 10:00:00', 13, 'Finalizada');
CALL sp_actualizar_reserva('2026-06-18 11:00:00', 14, 'Activa');
CALL sp_actualizar_reserva('2026-06-19 12:00:00', 15, 'Cancelada');

-- EMPLEADOS 
CALL sp_actualizar_empleado(1, 'Supervisor', 2);
CALL sp_actualizar_empleado(2, 'Recepcionista Senior', 3);
CALL sp_actualizar_empleado(3, 'Gerente General', 4);
CALL sp_actualizar_empleado(4, 'Chef Ejecutivo', 5);
CALL sp_actualizar_empleado(5, 'Jefe de Seguridad', 6);
CALL sp_actualizar_empleado(6, 'Supervisor de Limpieza', 7);
CALL sp_actualizar_empleado(7, 'Recepcionista VIP', 8);
CALL sp_actualizar_empleado(8, 'Director Operativo', 9);
CALL sp_actualizar_empleado(9, 'Chef Principal', 10);
CALL sp_actualizar_empleado(10, 'Guardia Líder', 11);
CALL sp_actualizar_empleado(11, 'Encargado de Piso', 12);
CALL sp_actualizar_empleado(12, 'Asistente Recepción', 13);
CALL sp_actualizar_empleado(13, 'Gerente Administrativo', 14);
CALL sp_actualizar_empleado(14, 'Sous Chef', 15);
CALL sp_actualizar_empleado(15, 'Seguridad Nocturna', 16);

-- DETALLES 
CALL sp_actualizar_detalles('TV 4K Ultra HD', 1);
CALL sp_actualizar_detalles('WiFi Empresarial', 2);
CALL sp_actualizar_detalles('Mini Bar Premium', 3);
CALL sp_actualizar_detalles('Jacuzzi Inteligente', 4);
CALL sp_actualizar_detalles('Vista Panorámica', 5);
CALL sp_actualizar_detalles('Cama King Premium', 6);
CALL sp_actualizar_detalles('Balcón Ejecutivo', 7);
CALL sp_actualizar_detalles('Aire Acondicionado Central', 8);
CALL sp_actualizar_detalles('Escritorio Corporativo', 9);
CALL sp_actualizar_detalles('Cafetera Italiana', 10);
CALL sp_actualizar_detalles('Ducha Hidromasaje', 11);
CALL sp_actualizar_detalles('Smart TV OLED', 12);
CALL sp_actualizar_detalles('Luces Inteligentes', 13);
CALL sp_actualizar_detalles('Caja Fuerte Digital', 14);
CALL sp_actualizar_detalles('Decoración Minimalista', 15);

-- ELMINAR DATOS CON LOS CONTROLADORES 
-- HABITACIONES 
CALL sp_eliminar_habitaciones(131);
CALL sp_eliminar_habitaciones(132);
CALL sp_eliminar_habitaciones(133);
CALL sp_eliminar_habitaciones(134);
CALL sp_eliminar_habitaciones(135);
CALL sp_eliminar_habitaciones(136);
CALL sp_eliminar_habitaciones(137);
CALL sp_eliminar_habitaciones(138);
CALL sp_eliminar_habitaciones(139);
CALL sp_eliminar_habitaciones(140);

-- CLIENTES 
CALL sp_eliminar_cliente('1000000000031');
CALL sp_eliminar_cliente('1000000000032');
CALL sp_eliminar_cliente('1000000000033');
CALL sp_eliminar_cliente('1000000000034');
CALL sp_eliminar_cliente('1000000000035');
CALL sp_eliminar_cliente('1000000000036');
CALL sp_eliminar_cliente('1000000000037');
CALL sp_eliminar_cliente('1000000000038');
CALL sp_eliminar_cliente('1000000000039');
CALL sp_eliminar_cliente('1000000000040');

-- RESERVAS 
CALL sp_eliminar_reserva('1000000000021');
CALL sp_eliminar_reserva('1000000000022');
CALL sp_eliminar_reserva('1000000000023');
CALL sp_eliminar_reserva('1000000000024');
CALL sp_eliminar_reserva('1000000000025');
CALL sp_eliminar_reserva('1000000000026');
CALL sp_eliminar_reserva('1000000000027');
CALL sp_eliminar_reserva('1000000000028');
CALL sp_eliminar_reserva('1000000000029');
CALL sp_eliminar_reserva('1000000000030');

-- EMPLEADOS 
CALL sp_eliminar_empleado(31);
CALL sp_eliminar_empleado(32);
CALL sp_eliminar_empleado(33);
CALL sp_eliminar_empleado(34);
CALL sp_eliminar_empleado(35);
CALL sp_eliminar_empleado(36);
CALL sp_eliminar_empleado(37);
CALL sp_eliminar_empleado(38);
CALL sp_eliminar_empleado(39);
CALL sp_eliminar_empleado(40);

-- DETALLES_RESERVA 
CALL sp_eliminar_detalles(11);
CALL sp_eliminar_detalles(12);
CALL sp_eliminar_detalles(13);
CALL sp_eliminar_detalles(14);
CALL sp_eliminar_detalles(15);
CALL sp_eliminar_detalles(16);
CALL sp_eliminar_detalles(17);
CALL sp_eliminar_detalles(18);
CALL sp_eliminar_detalles(19);
CALL sp_eliminar_detalles(20);



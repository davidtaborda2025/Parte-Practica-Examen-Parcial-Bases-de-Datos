-- DESARROLLO PARTE PRÁCTICA EXAMEN PARCIAL.

CREATE TABLE usuario(
    usuario_id INTEGER PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    tipo_usuario VARCHAR(100),
    condicion_especial VARCHAR(100),
    ciudad_id INTEGER,
    FOREIGN KEY (ciudad_id) REFERENCES ciudad(ciudad_id)
);

-- Tabla de Empleado, quien es una especialización de Usuario.
CREATE TABLE empleado(
    empleado_id INT PRIMARY KEY,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE cargo(
    cargo_id INTEGER PRIMARY KEY,
    nombre_cargo VARCHAR(100),
    empleado_id INTEGER,
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id)
);

CREATE TABLE departamento(
    departamento_id INT PRIMARY KEY,
    nombre_departamento VARCHAR(100),
    empleado_id INT,
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id)
);

CREATE TABLE ciudad(
    ciudad_id INTEGER PRIMARY KEY,
    nombre_ciudad VARCHAR(100),
    codigo_postal VARCHAR(100)
);

CREATE TABLE medio(
    medio_id INT PRIMARY KEY,
    tipo VARCHAR(100),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE notificacion(
    notificacion_id INTEGER PRIMARY KEY,
    fecha_envio DATE,
    mensaje TEXT,
    estado VARCHAR(100),
    medio_id INTEGER,
    FOREIGN KEY (medio_id) REFERENCES medio(medio_id)
);

CREATE TABLE servicio(
    servicio_id INT PRIMARY KEY,
    nombre_servicio VARCHAR(100),
    descripcion TEXT,
    estado VARCHAR(100)
);

CREATE TABLE turno(
    turno_id INTEGER PRIMARY KEY,
    fecha DATE,
    hora_inicio TIME,
    hora_fin TIME,
    estado VARCHAR(100),
    usuario_id INT,
    empleado_id INT,
    servicio_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id),
    FOREIGN KEY (servicio_id) REFERENCES servicio(servicio_id)
);
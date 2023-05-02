



CREATE TABLE Empleados (
    ID_empleado INT PRIMARY KEY,
    ID_usuario INT,
    Genero VARCHAR(20),
    Primer_nombre VARCHAR(50),
    Primer_apellido VARCHAR(50),
    Grupo_personal VARCHAR(50),
    Equipo_area VARCHAR(50),
    Equipo_vicepresidencia VARCHAR(50),
    Compania VARCHAR(50),
    Pais_region VARCHAR(50),
    Estado_provincia VARCHAR(50),
    Ciudad VARCHAR(50),
    Ubicacion_principal VARCHAR(50),
    ID_supervisor INT
);


CREATE TABLE Informes (
    ID_informe INT PRIMARY KEY,
    Categoria_informe VARCHAR(50),
    Nombre_trabajo VARCHAR(50),
    Equipo_area VARCHAR(50),
    Equipo_vicepresidencia VARCHAR(50),
    Compania VARCHAR(50),
    Pais_region VARCHAR(50),
    Estado_provincia VARCHAR(50),
    Ciudad VARCHAR(50),
    Ubicacion_principal VARCHAR(50),
    ID_empleado INT,
    ID_supervisor INT,
    Usuario_HR VARCHAR(50),
    Primer_nombre_HR VARCHAR(50),
    Apellido_HR VARCHAR(50),
    FOREIGN KEY (ID_empleado) REFERENCES Empleados(ID_empleado),
    FOREIGN KEY (ID_supervisor) REFERENCES Empleados(ID_empleado)
);


CREATE TABLE Articulos (
    ID_articulo INT PRIMARY KEY,
    ID_categoria_tematica INT,
    Descripcion_categoria_tematica VARCHAR(50),
    Tipo_articulo VARCHAR(50),
    Titulo VARCHAR(100),
    Calificacion VARCHAR(20),
    Estado_progreso VARCHAR(50),
    Fecha_finalizacion DATE,
    Horas_totales FLOAT,
    Horas_credito FLOAT,
    Horas_credito_educacion_prof FLOAT,
    Horas_contacto FLOAT,
    Usuario_ultima_actualizacion VARCHAR(50),
    Hora_ultima_actualizacion TIME
);


CREATE TABLE Cursos (
    ID_curso INT PRIMARY KEY,
    Origen VARCHAR(50),
    Idioma VARCHAR(20),
    Descripcion_categoria_tematica VARCHAR(50),
    Area_conocimiento VARCHAR(50),
    Proposito_formacion VARCHAR(50),
    Tipo_contenido VARCHAR(50),
    Fecha_creacion DATE,
    Fecha_publicacion DATE,
    Costo_curso FLOAT,
    Responsable VARCHAR(50),
    Experto_curso VARCHAR(50),
    Duracion_horas FLOAT
);


CREATE TABLE Creditos (
    ID_credito INT PRIMARY KEY,
    ID_curso INT,
    Tipo_articulo VARCHAR(50),
    Titulo_articulo VARCHAR(100),
    Descripcion VARCHAR(500),
    Contenido_curso VARCHAR(500),
    Proveedor VARCHAR(50),
    Horas_credito FLOAT,
    Horas_contacto FLOAT,
    Horas_credito_educacion_prof FLOAT,
    FOREIGN KEY (ID_curso) REFERENCES Cursos(ID_curso)
);

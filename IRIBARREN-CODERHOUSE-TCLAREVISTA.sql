use tc_la_revista ;

ALTER TABLE CATEGORIAS MODIFY CATEGORIA VARCHAR(100);

-- INSERCION DE CATEGORIAS PARA LAS TABLAS
INSERT INTO CATEGORIAS (CATEGORIA, TIPO, FECHAS, CIRCUITOS, PILOTOS)
VALUES
-- Categorías Nacionales
('TURISMO CARRETERA', 'Nacional', 0, 0, 0),
('TURISMO CARRETERA PISTA', 'Nacional', 0, 0, 0),
('TURISMO CARRETERA MOURAS', 'Nacional', 0, 0, 0),
('TURISMO CARRETERA PISTA MOURAS', 'Nacional', 0, 0, 0),
('TURISMO CARRETERA PICK UP', 'Nacional', 0, 0, 0),
('TURISMO CARRETERA PISTA PICK UP', 'Nacional', 0, 0, 0),
('TOP-RACE', 'Nacional', 0, 0, 0),
('TOP-RACE SERIES', 'Nacional', 0, 0, 0),
('TURISMO PISTA C1', 'Nacional', 0, 0, 0),
('TURISMO PISTA C2', 'Nacional', 0, 0, 0),
('TURISMO PISTA C3', 'Nacional', 0, 0, 0),
('TC2000', 'Nacional', 0, 0, 0),
('TURISMO NACIONAL', 'Nacional', 0, 0, 0),
('RALLY-ARGENTINO', 'Nacional', 0, 0, 0),

-- Categorías Internacionales
('FORMULA 1', 'Internacional', 0, 0, 0),
('RALLY MUNDIAL', 'Internacional', 0, 0, 0),
('NASCAR', 'Internacional', 0, 0, 0),
('MOTO-GP', 'Internacional', 0, 0, 0),
('FORMULA E', 'Internacional', 0, 0, 0),
('INDYCAR', 'Internacional', 0, 0, 0);

SELECT * FROM CATEGORIAS ;
SELECT * FROM PILOTOS;
SELECT * FROM CAMPEONATOS;

-- INSERCION DE CAMPEONATOS DE LAS TRES CATEGORIAS UTILIZADAS PARA EL PROYECTO 

-- Insertar campeonatos en la tabla CAMPEONATOS
INSERT INTO CAMPEONATOS (NOMBRE_CAMPEONATO, FECHA_INICIO, FECHA_FIN, TIPO_CAMPEONATO)
VALUES
('ANUAL TURISMO CARRETERA', '2024-01-01', '2024-12-31', 'Anual'),
('ANUAL TURISMO CARRETERA PICK UP', '2024-01-01', '2024-12-31', 'Anual'),
('ANUAL TURISMO CARRETERA PISTA', '2024-01-01', '2024-12-31', 'Anual');


-- INSERCION DE LOS CIRCUITOS PARA CADA CATEGORIA 

-- INSERT CIRCUITOS
INSERT INTO CIRCUITOS (NOMBRE_CIRCUITO, UBICACION, LONGITUD, ID_CATEGORIA)
VALUES
('Autódromo Enrique “Quique” Freile', 'El Calafate', 4.2, 21),
('Viedma', 'Viedma', 3.8, 21),
('Parque Provincia de Neuquén', 'Neuquén', 4.5, 21),
('Autódromo Pcia. de La Pampa', 'Toay, La Pampa', 4.0, 21),
('Termas de Río Hondo - Largo', 'Termas de Río Hondo', 4.7, 21),
('Concepción del Uruguay', 'Concepción del Uruguay', 4.3, 21),
('Autódromo Ciudad de Rafaela', 'Rafaela', 4.1, 21),
('Rosamonte', 'Posadas', 4.6, 21),
('San Juan Villicum - 2', 'San Juan', 4.4, 21),
('Oscar y Juan Gálvez', 'Ciudad de Buenos Aires', 4.9, 21),
('Rosendo Hernández', 'San Luis', 4.0, 21),
('Ciudad de Paraná', 'Paraná', 4.2, 21),
('Juan Maria Traverso', 'San Nicolás', 4.8, 21),
('Roberto José Mouras', 'La Plata', 4.5, 21);

SELECT * FROM CIRCUITOS;

-- DROP DE FECHA DE NACIMIENTO NO SE VA A UTILIZAR

ALTER TABLE Pilotos
DROP COLUMN FECHA_NACIMIENTO;

-- INSERCION DE PILOTOS EN LAS CATEGORIAS USADAS PARA EL PROYECTO 

-- INSERT PILOTOS TC
INSERT INTO PILOTOS (NOMBRE, APELLIDO, NACIONALIDAD, MARCA)
VALUES
('Mariano', 'Werner', 'Argentina', 'Fadel Werner Competición'),
('Germán', 'Todino', 'Argentina', 'Maquin Parts Racing'),
('Jonatan', 'Castellano', 'Argentina', 'Tomas Abdala Racing'),
('Santiago', 'Mangoni', 'Argentina', 'Canning Motorsport'),
('Mauricio', 'Lambiris', 'Argentina', 'Maquin Parts Racing'),
('Marcos', 'Landa', 'Argentina', 'Trotta Competición'),
('Juan Martín', 'Trucco', 'Argentina', 'Di Meglio Motorsport'),
('Valentín', 'Aguirre', 'Argentina', 'Canning Motorsport'),
('Christian', 'Ledesma', 'Argentina', 'PRADECON RACING'),
('Gastón', 'Mazzacane', 'Argentina', 'Coiro Competición'),
('Juan Tomás', 'Catalán Magni', 'Argentina', 'Catalan Magni MotorSport'),
('Leonel', 'Pernía', 'Argentina', 'Las Toscas Racing'),
('Diego', 'Ciantini', 'Argentina', 'Canning Motorsport'),
('Otto', 'Fritzler', 'Argentina', 'PRADECON RACING'),
('Juan José', 'Ebarlín', 'Argentina', 'LRD Racing Team'),
('Esteban', 'Gini', 'Argentina', 'Maquin Parts Racing'),
('Gabriel', 'Ponce de León', 'Argentina', 'Ponce de León Competición'),
('Emiliano', 'Spataro', 'Argentina', 'SP Racing'),
('Facundo', 'Della Motta', 'Argentina', 'Coiro Dole Racing'),
('Nicolás', 'Cotignola', 'Argentina', 'Sprint Racing'),
('Matías', 'Rodríguez', 'Argentina', 'Midas Carrera Team'),
('Norberto', 'Fontana', 'Argentina', 'HNOS. ALVAREZ'),
('Gustavo', 'Micheloud', 'Argentina', 'Azar Motor Sport'),
('Federico', 'Iribarne', 'Argentina', 'Alifraco Sport'),
('Leandro', 'Mulet', 'Argentina', 'SSB Competicion'),
('Christian', 'Dose', 'Argentina', 'DOSE COMPETICION'),
('Nicolás', 'Bonelli', 'Argentina', 'RUS MED Team'),
('Julián', 'Santero', 'Argentina', 'LCA Racing'),
('Sebastián', 'Abella', 'Argentina', 'LCA Racing'),
('Martín', 'Serrano', 'Argentina', 'Coiro Competición'),
('Sergio', 'Alaux', 'Argentina', 'Giavedoni SPORT'),
('Augusto', 'Carinelli', 'Argentina', 'Fancio Competición'),
('Facundo', 'Chapur', 'Argentina', 'A&P Competición'),
('Facundo', 'Ardusso', 'Argentina', 'RV Competición'),
('Ricardo', 'Risatti', 'Argentina', 'LRD Racing Team'),
('Agustín', 'Canapino', 'Argentina', 'Canning Motorsport'),
('Nicolás', 'Trosset', 'Argentina', 'MV Racing'),
('Lautaro', 'De La Iglesia', 'Argentina', 'Di Meglio Motorsport'),
('Agustín', 'Martínez', 'Argentina', 'Guri Martínez Competición'),
('Juan Cruz', 'Benvenuti', 'Argentina', 'Alifraco Sport'),
('Lionel', 'Ugalde', 'Argentina', 'Ugalde Competición'),
('Christian Iván', 'Ramos', 'Argentina', 'RV Competición'),
('Tobías', 'Martínez', 'Argentina', 'Trotta Competición'),
('Juan', 'Garbelino', 'Argentina', 'Alifraco Sport'),
('Gastón', 'Ferrante', 'Argentina', 'FPA Racing'),
('Diego', 'De Carlo', 'Argentina', 'LRD Racing Team'),
('Alan', 'Ruggiero', 'Argentina', 'DTA Racing'),
('Guillermo', 'Ortelli', 'Argentina', 'Canning Motorsport'),
('Humberto', 'Krujoski', 'Argentina', 'SAP Team'),
('Elio', 'Craparo', 'Argentina', 'HNOS. ALVAREZ'),
('Andrés', 'Jakos', 'Argentina', 'Toyota Gazoo Racing'),
('Martín', 'Vázquez', 'Argentina', 'MV Racing'),
('Rudi', 'Bundziak', 'Argentina', 'Coiro Dole Racing'),
('Marcelo', 'Agrelo', 'Argentina', 'Maquin Parts Racing'),
('Matías', 'Jalaf', 'Argentina', 'Matias Jalaf Competicion'),
('Juan B.', 'De Benedictis', 'Argentina', 'DTA Racing'),
('Kevin', 'Candela', 'Argentina', 'Candela Competición'),
('Santiago', 'Álvarez', 'Argentina', 'Canning Motorsport'),
('Ayrton', 'Londero', 'Argentina', 'Las Toscas Racing'),
('Marcos', 'Quijada', 'Argentina', 'UR Racing'),
('Omar', 'Martínez', 'Argentina', 'Guri Martínez Competición'),
('José Manuel', 'Urcera', 'Argentina', 'Emanuel Moriatis Competicion');

-- ACTUALIZAR TABLA PARA GUARDAR CAT_1 CAT_2 Y CAT_3
ALTER TABLE PILOTOS
ADD COLUMN CAT_1 VARCHAR(30),
ADD COLUMN CAT_2 VARCHAR(30),
ADD COLUMN CAT_3 VARCHAR(30);

-- ACTUALIZAR PILOTOS CON CATEGORIA TURISMO CARRETERA
UPDATE PILOTOS
SET CAT_1 = 'TURISMO CARRETERA';

-- ACTUALIZAR TABLA FECHAS
ALTER TABLE FECHAS
ADD COLUMN ID_PILOTO INT;

ALTER TABLE FECHAS
ADD CONSTRAINT fk_id_piloto
FOREIGN KEY (ID_PILOTO) REFERENCES PILOTOS(ID_PILOTO);

-- ACTUALIZAR TABLA FECHAS
ALTER TABLE FECHAS
MODIFY COLUMN GANADOR VARCHAR(30);

DESCRIBE FECHAS ; 

-- INSERT EN TABLA FECHAS 

-- Insertar fechas en la tabla FECHAS para el campeonato con ID_CAMPEONATO = 1
INSERT INTO FECHAS (ID_CAMPEONATO, GANADOR, VICTORIAS, MARCA)
VALUES
-- Fecha 1
(1, 'Juan Martín Trucco', 1, 'Maquin Parts Racing'),
-- Fecha 2
(1, 'Germán Todino', 2, 'Canning Motorsport'),
-- Fecha 3
(1, 'Santiago Mangoni', 3, 'Trotta Competición'),
-- Fecha 4
(1, 'Mauricio Lambiris', 1, 'Di Meglio Motorsport'),
-- Fecha 5
(1, 'Marcos Landa', 2, 'PRADECON RACING'),
-- Fecha 6
(1, 'Valentín Aguirre', 1, 'Coiro Competición'),
-- Fecha 7
(1, 'Christian Ledesma', 3, 'Catalan Magni MotorSport'),
-- Fecha 8
(1, 'Gastón Mazzacane', 2, 'Maquin Parts Racing'),
-- Fecha 9
(1, 'Juan Tomás Catalán Magni', 1, 'Tomas Abdala Racing'),
-- Fecha 10
(1, 'Leonel Pernía', 1, 'Canning Motorsport');

-- Insertar fechas en la tabla FECHAS para el campeonato con ID_CAMPEONATO = 2
INSERT INTO FECHAS (ID_CAMPEONATO, GANADOR, VICTORIAS, MARCA)
VALUES
-- Fecha 1 - El Calafate
(3, 'Jeremías Scialchi', 1, 'Marca 1'),
-- Fecha 2 - Viedma
(3, 'Diego Azar', 1, 'Marca 2'),
-- Fecha 3 - Neuquén
(3, 'Jeremías Olmedo', 1, 'Marca 3'),
-- Fecha 4 - Toay, La Pampa
(3, 'Joaquín Ochoa', 1, 'Marca 4'),
-- Fecha 5 - Termas de Río Hondo
(3, 'Lucas Valle', 1, 'Marca 5'),
-- Fecha 6 - Concepción del Uruguay
(3, 'Matías Canapino', 1, 'Marca 6'),
-- Fecha 7 - Rafaela
(3, 'Hernán Palazzo', 1, 'Marca 7'),
-- Fecha 8 - Posadas
(3, 'Ignacio Faín', 1, 'Marca 8'),
-- Fecha 9 - San Juan
(3, 'Diego Azar', 1, 'Marca 9'),
-- Fecha 10 - Ciudad de Buenos Aires
(3, 'Diego Azar', 1, 'Marca 10'),
-- Fecha 11 - San Luis
(3, 'Jeremías Olmedo', 1, 'Marca 11');


-- Insertar fechas en la tabla FECHAS para el campeonato con ID_CAMPEONATO = 2
INSERT INTO FECHAS (ID_CAMPEONATO, GANADOR, VICTORIAS, MARCA)
VALUES
-- Fecha 1 - La Plata (Roberto José Mouras)
(2, 'Gastón Mazzacane', 1, 'Marca 1'),
-- Fecha 2 - La Plata (Roberto José Mouras)
(2, 'Matías Rodríguez', 1, 'Marca 2'),
-- Fecha 3 - La Plata (Roberto José Mouras)
(2, 'Mariano Werner', 1, 'Marca 3'),
-- Fecha 4 - La Plata (Roberto José Mouras)
(2, 'Juan Pablo Gianini', 1, 'Marca 4'),
-- Fecha 5 - La Plata (Roberto José Mouras)
(2, 'Juan Pablo Gianini', 1, 'Marca 5'),
-- Fecha 6 - La Plata (Roberto José Mouras)
(2, 'Juan Pablo Gianini', 1, 'Marca 6'),
-- Fecha 7 - La Plata (Roberto José Mouras)
(2, 'Valentín Aguirre', 1, 'Marca 7'),
-- Fecha 8 - La Plata (Roberto José Mouras)
(2, 'Gastón Mazzacane', 1, 'Marca 8');


-- PROCEDIMIENTO PARA NO PODER INSERTAR PILOTOS REPETIDOS E INSERTAR SU NUEVA CATEGORIA
DELIMITER //
CREATE PROCEDURE InsertOrUpdatePiloto(
    IN p_nombre VARCHAR(30),
    IN p_apellido VARCHAR(30),
    IN p_nacionalidad VARCHAR(30),
    IN p_marca VARCHAR(30),
    IN p_categoria VARCHAR(30)
)
BEGIN
    DECLARE v_id INT;
    DECLARE v_cat2 VARCHAR(30);
    DECLARE v_cat3 VARCHAR(30);

    -- Verificar si el piloto ya existe
    SELECT ID_PILOTO, CAT_2, CAT_3
    INTO v_id, v_cat2, v_cat3
    FROM Pilotos
    WHERE APELLIDO = p_apellido
    LIMIT 1;  -- Limitar a un único resultado

    -- Si el piloto existe, actualizar las categorías
    IF v_id IS NOT NULL THEN
        IF v_cat2 IS NULL OR v_cat2 = '' THEN
            UPDATE Pilotos
            SET CAT_2 = p_categoria
            WHERE ID_PILOTO = v_id;
        ELSE
            UPDATE Pilotos
            SET CAT_3 = p_categoria
            WHERE ID_PILOTO = v_id;
        END IF;
    ELSE
        -- Si el piloto no existe, insertarlo
        INSERT INTO Pilotos (NOMBRE, APELLIDO, NACIONALIDAD, MARCA, CAT_1)
        VALUES (p_nombre, p_apellido, p_nacionalidad, p_marca, p_categoria);
    END IF;
END //

DELIMITER ;


-- EJEMPLO CON MARIANO WERNER PILOTO DE TURISMO CARRETERA Y TURISMO CARRETERA PICK UP
CALL InsertPiloto('Mariano', 'Werner', 'Argentina', '1989-01-01', 'Toyota Gazoo Racing', 'TURISMO CARRETERA PICK UP');

SELECT * FROM PILOTOS WHERE NOMBRE = 'Mariano' AND APELLIDO = 'Werner';

-- AGREGANDO PILOTOS CON LA NUEVA FUNCION 
CALL InsertOrUpdatePiloto('Mariano', 'Werner', 'Argentina', 'Toyota Gazoo Racing', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Diego', 'Ciantini', 'Argentina', 'JP Carrera', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Gastón', 'Mazzacane', 'Argentina', 'Coiro Racing Team', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Omar', 'Martínez', 'Argentina', 'Guri Martínez Competición', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Agustín', 'Martínez', 'Argentina', 'Guri Martínez Competición', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Juan Martín', 'Trucco', 'Argentina', 'Di Meglio Motorsport', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Facundo', 'Chapur', 'Argentina', 'LCA Racing', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Nicolás', 'Pezzucchi', 'Argentina', 'Pezzucchi Team', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Lucas', 'Valle', 'Argentina', 'RV Competición', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Mauricio', 'Lambiris', 'Argentina', 'Canning Motorsport', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Matías', 'Rodríguez', 'Argentina', 'Giavedoni SPORT', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Marcos', 'Quijada', 'Argentina', 'SAP Team', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Federico', 'Iribarne', 'Argentina', 'Coiro Dole Racing', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Mariano', 'Oyhanart', 'Argentina', 'Oyhanart Competición', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Christian', 'Dose', 'Argentina', 'Christian Dose Competición', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Gonzalo', 'Montenegro', 'Argentina', 'Giavedoni SPORT', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Santiago', 'Álvarez', 'Argentina', 'Canning Motorsport', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Leandro', 'Mulet', 'Argentina', 'SSB Competicion', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Juan Pablo', 'Gianini', 'Argentina', 'JPG Racing', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Germán', 'Todino', 'Argentina', 'Azul Sport Team', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Franco', 'Morillo', 'Argentina', 'Giavedoni SPORT', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Javier', 'Jack', 'Argentina', 'Di Meglio Motorsport', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Julián', 'Santero', 'Argentina', 'LCA Racing', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Eddy', 'Mión', 'Argentina', 'Eddy Mion Competición', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Facundo', 'Ardusso', 'Argentina', 'RUS MED Team', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Nicolás', 'Impiombato', 'Argentina', 'Impiombato Competición', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Tobías', 'Martínez', 'Argentina', 'RUS MED Team', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Rodrigo', 'Lugón', 'Argentina', 'Guri Martínez Competición', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Gastón', 'Ferrante', 'Argentina', 'SAP Team', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Diego', 'De Carlo', 'Argentina', 'LRD Racing Team', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Alan', 'Ruggiero', 'Argentina', 'Giavedoni SPORT', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Tomás', 'Abdala', 'Argentina', 'Tomas Abdala Racing', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Hernán', 'Palazzo', 'Argentina', 'Coiro Racing Team', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Andrés', 'Jakos', 'Argentina', 'Coiro Racing Team', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Marcelo', 'Agrelo', 'Argentina', 'Midas Carrera Team', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Valentín', 'Aguirre', 'Argentina', 'Canning Motorsport', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Otto', 'Fritzler', 'Argentina', 'LCA RACING', 'TURISMO CARRETERA PICK UP');
CALL InsertOrUpdatePiloto('Mariano', 'Werner', 'Argentina', 'Toyota Gazoo Racing', 'TURISMO CARRETERA');
CALL InsertOrUpdatePiloto('Mariano', 'Werner', 'Argentina', 'Toyota Gazoo Racing', 'TURISMO CARRETERA PICK UP');


-- FUNCION PARA CONTAR PILOTOS TOTALES
DELIMITER //

CREATE FUNCTION contar_pilotos() 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_pilotos INT;
    
    -- Contar el número total de pilotos en la tabla PILOTOS
    SELECT COUNT(*) INTO total_pilotos
    FROM PILOTOS;
    
    RETURN total_pilotos;
END //

DELIMITER ;

SELECT contar_pilotos();


-- PROCEDIMIENTO PARA ACTUALIZAR EL NUMERO DE PILOTOS POR CATEGORIA EN LA TABLA CATEGORIAS
DELIMITER //
CREATE PROCEDURE actualizar_cantidad_pilotos()
BEGIN
    -- Primero, actualiza el conteo de pilotos para cada categoría en CAT_1
    UPDATE CATEGORIAS c
    JOIN (
        SELECT CAT_1 AS CATEGORIA, COUNT(*) AS CANTIDAD
        FROM PILOTOS
        GROUP BY CAT_1
    ) p1 ON c.CATEGORIA = p1.CATEGORIA
    SET c.PILOTOS = p1.CANTIDAD;
    
    -- Luego, actualiza el conteo de pilotos para cada categoría en CAT_2
    UPDATE CATEGORIAS c
    JOIN (
        SELECT CAT_2 AS CATEGORIA, COUNT(*) AS CANTIDAD
        FROM PILOTOS
        WHERE CAT_2 IS NOT NULL
        GROUP BY CAT_2
    ) p2 ON c.CATEGORIA = p2.CATEGORIA
    SET c.PILOTOS = c.PILOTOS + p2.CANTIDAD;
    
    -- Finalmente, actualiza el conteo de pilotos para cada categoría en CAT_3
    UPDATE CATEGORIAS c
    JOIN (
        SELECT CAT_3 AS CATEGORIA, COUNT(*) AS CANTIDAD
        FROM PILOTOS
        WHERE CAT_3 IS NOT NULL
        GROUP BY CAT_3
    ) p3 ON c.CATEGORIA = p3.CATEGORIA
    SET c.PILOTOS = c.PILOTOS + p3.CANTIDAD;
END //

DELIMITER ;

CALL actualizar_cantidad_pilotos();

-- IDEM AHORA PARA ACTUALIZAR LA CANTIDAD DE CIRCUITOS EN LA TABLA CATEGORIAS

DELIMITER //

CREATE PROCEDURE actualizar_cantidad_circuitos()
BEGIN
    -- Primero, resetea el conteo de circuitos a 0 para todas las categorías
    UPDATE CATEGORIAS
    SET CIRCUITOS = 0;

    -- Luego, actualiza el conteo de circuitos para cada categoría
    UPDATE CATEGORIAS c
    JOIN (
        SELECT ID_CATEGORIA, COUNT(*) AS CANTIDAD
        FROM CIRCUITOS
        GROUP BY ID_CATEGORIA
    ) cir ON c.ID_CATEGORIA = cir.ID_CATEGORIA
    SET c.CIRCUITOS = cir.CANTIDAD;
END //
DELIMITER ;

-- Llama al procedimiento para actualizar el número de circuitos
CALL actualizar_cantidad_circuitos();


-- VISTAS

-- VISTA DE PILOTOS JUNTO CON SUS CATEGORIAS ACTUALES

CREATE VIEW vista_pilotos_categorias_compiten AS
SELECT 
    p.NOMBRE, 
    p.APELLIDO, 
    p.CAT_1 AS CATEGORIA_1, 
    p.CAT_2 AS CATEGORIA_2, 
    p.CAT_3 AS CATEGORIA_3
FROM 
    PILOTOS p;

SELECT * FROM vista_pilotos_categorias_compiten;

-- VISTA DE FECHAS POR CAMPEONATO 
CREATE VIEW FechasPorCampeonato AS
SELECT 
    c.NOMBRE_CAMPEONATO AS Nombre_Campeonato,
    f.ID_FECHA AS ID_Fecha,
    f.GANADOR AS Ganador,
    f.VICTORIAS AS Victorias,
    f.MARCA AS Marca
FROM 
    FECHAS f
JOIN 
    CAMPEONATOS c ON f.ID_CAMPEONATO = c.ID_CAMPEONATO
ORDER BY 
    c.NOMBRE_CAMPEONATO, f.ID_FECHA;

SELECT * FROM FechasPorCampeonato;

-- INFORMES GANADORES POR FECHA TURISMO CARRETERA

SELECT F.ID_FECHA, F.GANADOR, F.MARCA
FROM FECHAS F
JOIN CAMPEONATOS C ON F.ID_CAMPEONATO = C.ID_CAMPEONATO
WHERE C.NOMBRE_CAMPEONATO = 'ANUAL TURISMO CARRETERA'
  AND C.FECHA_INICIO >= '2024-01-01'
  AND C.FECHA_FIN <= '2024-12-31';


-- INFORME DE PILOTOS Y VICTORIAS POR CATEGORIA 
SELECT 
    p.NOMBRE, 
    p.APELLIDO, 
    p.CAT_1 AS CATEGORIA, 
    SUM(f.VICTORIAS) AS TOTAL_VICTORIAS
FROM 
    PILOTOS p
JOIN 
    FECHAS f ON CONCAT(p.NOMBRE, ' ', p.APELLIDO) = f.GANADOR
GROUP BY 
    p.NOMBRE, p.APELLIDO, p.CAT_1
ORDER BY 
    TOTAL_VICTORIAS DESC
LIMIT 0, 5000;

SELECT * FROM CATEGORIAS ;
SELECT * FROM FECHAS ;
SELECT * FROM CAMPEONATOS ;




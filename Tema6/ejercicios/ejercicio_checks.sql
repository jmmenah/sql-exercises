CREATE TABLE monitores (id INT AUTO_INCREMENT PRIMARY KEY,
marca ENUM('Samsung','HP','Philips'),
modelo VARCHAR(50),
pulgadas ENUM('19','23','27','29'),
tipo BOOLEAN,
fecha_fabricacion DATE,
precio FLOAT,
CONSTRAINT comp_fecha CHECK(fecha_fabricacion>'2019-01-01'),
CONSTRAINT comp_precio CHECK(precio>0));
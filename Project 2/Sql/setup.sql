CREATE SCHEMA Delibery_db;

USE Delibery_db;
CREATE TABLE Delivery (
	region_id INT,
    months DATE,
    route_id VARCHAR(50),
    promised_days INT,
	actual_days INT,
    service_type VARCHAR(100),
    Delay_days INT
);

CREATE TABLE Routes (
	route_id VARCHAR(50),
    route VARCHAR(50),
    service_type VARCHAR(50)
);



select * from delivery
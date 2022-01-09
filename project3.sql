CREATE TABLE landlord (
    landlord_id int NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    tel_number varchar(30) NOT NULL,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY(landlord_id)
);  


CREATE TABLE tenant(
    tenant_id int NOT NULL,
    full_name varchar(255) NOT NULL,
    tel_number varchar(30) NOT NULL,
    email varchar(255) NOT NULL,
    PRIMARY KEY (tenant_id)
);


CREATE TABLE apartment(
    apartment_id int NOT NULL,
    address varchar(255) NOT NULL,
    rooms int,
    description VARCHAR(2000),
    price int NOT NULL,
    free char(1) NOT NULL,
    landlord_id int NOT NULL,
    PRIMARY KEY(apartment_id),
    FOREIGN KEY (landlord_id)
        REFERENCES landlord(landlord_id)
        ON DELETE CASCADE,
    


CREATE TABLE booking(
    booking_id int NOT NULL,
    in_date Date,
    out_date Date,
    apartment_id int NOT NULL,
    tenant_id int NOT NULL,
    PRIMARY KEY (booking_id),
    FOREIGN KEY (tenant_id)
        REFERENCES tenant(tenant_id)
        ON DELETE CASCADE,
    FOREIGN KEY (apartment_id)
        REFERENCES apartment(apartment_id)
        ON DELETE CASCADE);
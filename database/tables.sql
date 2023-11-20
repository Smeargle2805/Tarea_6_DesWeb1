-- Active: 1700436861294@@dpg-cld8o1vgsrdc73fjbe4g-a.oregon-postgres.render.com@5432@babd28
create table tbl_role
(
    id SERIAL PRIMARY key,
    name_role varchar(100), 
    is_active BOOLEAN DEFAULT true, 
    created_date TIMESTAMP DEFAULT current_timestamp, 
    deleted_date TIMESTAMP, 
    update_date TIMESTAMP
);

insert into tbl_role
(name_role)
values
('Administrador'), 
('Cliente');

select * from tbl_role;

create table tbl_users
(
    user_name varchar(30) PRIMARY key,
    email VARCHAR(70) UNIQUE, 
    pass VARCHAR(30),
    profile_picture bytea, 
    id_role int REFERENCES tbl_role(id),
    is_active BOOLEAN DEFAULT true, 
    created_date TIMESTAMP DEFAULT current_timestamp, 
    deleted_date TIMESTAMP, 
    update_date TIMESTAMP
);

insert into tbl_users 
(user_name, email, pass, id_role)
values 
('smeargle28', 'smeargle29@unitec.edu', 'Arroz19$', 1), 
('alan783', 'alan783@unitec.edu', 'maiz001$', 2);


SELECT * FROM tbl_users;

create table tbl_example 
(
    id serial primary key, 
    data_example varchar(200),
    user_name varchar(500)
)

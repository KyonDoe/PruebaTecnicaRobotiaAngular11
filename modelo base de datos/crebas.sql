/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     06-03-2021 12:43:23                          */
/*==============================================================*/


drop table if exists CARRITO_COMPRA;

drop table if exists PRODUCTO;

drop table if exists USUARIO;

/*==============================================================*/
/* Table: CARRITO_COMPRA                                        */
/*==============================================================*/
create table CARRITO_COMPRA
(
   US_ID                int,
   PROD_ID              int,
   CARCOM_COMPRA_REALIZADA bool,
   CARCOM_ENVIO_REALIZADO bool,
   CARCOM_ID            int not null auto_increment,
   primary key (CARCOM_ID)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO
(
   PROD_ID              int not null auto_increment,
   PROD_NOMBRE          varchar(25),
   PROD_DESCRIPCION     varchar(25),
   PROD_PRECIO          int,
   primary key (PROD_ID)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO
(
   US_ID                int not null auto_increment,
   US_NOMBRE            varchar(25),
   US_APELLIDO          varchar(25),
   US_CORREO            varchar(25),
   US_PASSWORD          varchar(25),
   primary key (US_ID)
);

alter table CARRITO_COMPRA add constraint FK_PRODUCTO_CARRITO foreign key (PROD_ID)
      references PRODUCTO (PROD_ID) on delete restrict on update restrict;

alter table CARRITO_COMPRA add constraint FK_US_CARRITO foreign key (US_ID)
      references USUARIO (US_ID) on delete restrict on update restrict;


/* poblacion de tabla usuario */

INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('pedro', 'apellido1', 'pedro@gmail.com', '1234');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('camilo', 'apellido2', 'camilo@gmail.com', '4321');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('pedro', 'apellido3', 'pedro3@gmail.com', 'qwe');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('jose', 'apellido', 'jose@gmail.com', 'qwe');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('juan', 'apellido', 'juan@gmail.com', 'qwe');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('daniel', 'apellido', 'daniel@gmail.com', 'qwe');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('daniel2', 'apéllido', 'daniel1@gmail.com', 'qwe');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('daniel4', 'apellido2', 'daniel4@gmail.com', 'qwe');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('pamela', 'apellido', 'pamela@gmail.com', 'qwe');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('camila', 'apellido', 'camila@gmail.com', 'qwe');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('daniela', 'apellido', 'daniela@gmail.com', 'qwe');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('miguel', 'apellido', 'miguwel@gmail.com', 'qwe');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('jorge', 'apellido', 'jorge@gmail.com', 'asd');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('jose miguel', 'apellido', 'josemiguel@gmail.com', 'asd');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('marcelo', 'apellido', 'marcelo@gmail.com', 'asd');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('marcela', 'apellido', 'marcela@gmail.com', 'asd');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('andres', 'apellido', 'andres@gmail.com', 'asd');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('andrea', 'apellido', 'andrea@gmail.com', 'zxc');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('pablo', 'apellido', 'pablo@gmail.com', 'sdf');
INSERT INTO USUARIO (US_NOMBRE, US_APELLIDO, US_CORREO, US_PASSWORD)VALUES ('victor', 'apellido', 'victor@gmail.com', 'sdf');

/* poblacion de tabla producto */

INSERT INTO PRODUCTO (PROD_NOMBRE, PROD_DESCRIPCION, PROD_PRECIO)VALUES ('producto1', 'producto de prueba', 500);
INSERT INTO PRODUCTO (PROD_NOMBRE, PROD_DESCRIPCION, PROD_PRECIO)VALUES ('producto2', 'producto de prueba', 1000);
INSERT INTO PRODUCTO (PROD_NOMBRE, PROD_DESCRIPCION, PROD_PRECIO)VALUES ('producto3', 'producto de prueba', 500);
INSERT INTO PRODUCTO (PROD_NOMBRE, PROD_DESCRIPCION, PROD_PRECIO)VALUES ('producto4', 'producto de prueba', 500);
INSERT INTO PRODUCTO (PROD_NOMBRE, PROD_DESCRIPCION, PROD_PRECIO)VALUES ('producto5', 'producto de prueba', 1000);

/* poblacion de la tabla carrito de compra */

INSERT INTO CARRITO_COMPRA (US_ID, PROD_ID, CARCOM_COMPRA_REALIZADA, CARCOM_ENVIO_REALIZADO)VALUES (1, 1, false, false);
INSERT INTO CARRITO_COMPRA (US_ID, PROD_ID, CARCOM_COMPRA_REALIZADA, CARCOM_ENVIO_REALIZADO)VALUES (1, 2, false, false);
INSERT INTO CARRITO_COMPRA (US_ID, PROD_ID, CARCOM_COMPRA_REALIZADA, CARCOM_ENVIO_REALIZADO)VALUES (1, 3, false, false);
INSERT INTO CARRITO_COMPRA (US_ID, PROD_ID, CARCOM_COMPRA_REALIZADA, CARCOM_ENVIO_REALIZADO)VALUES (2, 1, true, true);
INSERT INTO CARRITO_COMPRA (US_ID, PROD_ID, CARCOM_COMPRA_REALIZADA, CARCOM_ENVIO_REALIZADO)VALUES (2, 2, true, false);
INSERT INTO CARRITO_COMPRA (US_ID, PROD_ID, CARCOM_COMPRA_REALIZADA, CARCOM_ENVIO_REALIZADO)VALUES (3, 1, false, false);
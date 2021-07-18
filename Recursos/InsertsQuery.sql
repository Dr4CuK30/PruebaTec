INSERT INTO empresa([pk_id],[v_razon_social],[v_direccion],[v_correo]) VALUES(100201234, 'PerroLandia', 'Cra 4 #20-00', 'perrolandia@perroland.co'),
                                                                             (4927798,'Sed Est Nunc Foundation','5250 In Ave','sit@mauris.net'),
                                                                             (6222141,'Mollis Duis Sit PC','1806 Eget Street','nonummy@Proinnonmassa.org'),
                                                                             (2901234,'Euismod Est Arcu PC','P.O. Box 574, 8409 Mauris, Av.','lacus.Aliquam@dapibusligulaAliquam.com'),
                                                                             (3816112,'Integer Aliquam Adipiscing PC','529-8559 Dignissim. Rd.','feugiat@dictum.net'),
                                                                             (1976097,'Augue Malesuada Malesuada Corp.','P.O. Box 176, 1972 Quis St.','fermentum@loremegetmollis.net'),
                                                                             (4484877,'Leo Morbi Neque Foundation','277-2618 Iaculis St.','fames@Nuncquis.com'),
                                                                             (1379090,'Sed LLC','Ap #190-4917 Vitae Rd.','Vivamus.nibh.dolor@odioEtiam.ca'),
                                                                             (9054139,'Morbi Consulting','Ap #138-5102 Et, Rd.','purus@gravidaAliquamtincidunt.ca'),
                                                                             (8272865,'Ornare Elit Elit Inc.','Ap #345-6267 Purus Avenue','amet@interdumNuncsollicitudin.edu'),
                                                                             (6444711,'Vitae Erat Vivamus Industries','3065 Ipsum St.','et.netus@urnaet.net');


INSERT INTO persona([pk_documento],[v_nombre],[v_correo],[f_fecha_nacimiento]) VALUES(1000622841, 'David Saldarriaga', 'davidsaldarriaga.pardo@hotmail.com', '12-12-2001'),
                                                                                     (2841719,'Donovan J. Stone','amet@ridiculusmusAenean.co.uk','10-08-1992'),
                                                                                     (8485249,'Francesca G. Garrett','ultrices@nisiaodio.com','10-04-1951'),
                                                                                     (7887490,'Juliet Z. Goff','erat@Curabitursedtortor.ca','05-27-1974'),
                                                                                     (7757943,'Bradley L. Munoz','ut.dolor.dapibus@velfaucibusid.org','05-09-1967'),
                                                                                     (1392323,'Autumn C. Pratt','lobortis.tellus.justo@penatibusetmagnis.net','08-08-1986'),
                                                                                     (9403761,'Kessie J. Benton','convallis.in@egestasAliquamfringilla.edu','07-08-1976'),
                                                                                     (8024149,'Octavia J. Miles','ante.Nunc.mauris@pellentesque.net','11-25-1996'),
                                                                                     (4181545,'Justin N. Roberson','Nam.consequat.dolor@tristique.net','02-02-1992'),
                                                                                     (1073267,'Hedley H. Buchanan','Cras@Curabiturut.edu','07-17-1977');

INSERT INTO telefono (n_ext, n_numero, fk_persona) VALUES (57, 3115116064, 1000622841)
INSERT INTO telefono (n_ext, n_numero, fk_empresa) VALUES (57, 3320142514, 100201234)

INSERT INTO producto VALUES ('Comida para perros 10kg', 'Comida escencial para su mascota canina', '100100.00', 'producto', 100201234),
                            ('Correa Amigable', 'Paseé a su mascota sin la preocupación de ahorcarlo', '89900.00', 'producto', 4927798),
                            ('Bolsa comestibles gato X10', 'Premie su gato con este nutritivo producto', '21800.00', 'producto', 6222141),
                            ('Corte de uñas', 'Si su mascota no puede caminar, iremos a domicilio', '25000.00', 'servicio', 2901234),
                            ('Baño completo', 'Aseamos a su mascota con los mejores productos', '35500.00', 'servicio', 3816112),
                            ('Evento: Fiesta canina', 'Traiga a su perro a disfrutar con amigos', '15000.00', 'otros', 1976097),
                            ('Cobijas XXL', 'Ideales para perros gigantes', '65200.00', 'producto', 4484877)

INSERT INTO venta VALUES (2,'12-20-2019',8, 2841719), 
                         (4,'01-19-2019',6, 8485249), 
                         (12,'02-25-2019',1, 7887490), 
                         (2,'04-02-2019',5, 7757943), 
                         (10,'04-01-2019',3, 1392323), 
                         (1,'05-14-2019',3, 9403761), 
                         (5,'06-09-2019',5, 8024149), 
                         (40,'07-21-2019',7, 4181545), 
                         (1,'08-20-2019',6, 1073267), 
                         (1,'07-30-2019',8, 9403761), 
                         (5,'10-15-2019',4, 9403761), 
                         (15,'12-16-2019',4, 1073267)


SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS pelis;
DROP TABLE IF EXISTS distribuidor;
create table distribuidor (
    id int primary key auto_increment,
    nombre varchar(200) not null,
    sitio varchar(500)
);

insert into distribuidor
		(id,    nombre,                         sitio						) values
		(1,     '2K',                           'https://2k.com'				),
		(2,     'Focus Home Interactive',		'https://www.focus-home.com'	),
		(3,     'Thekla',                       null							),
		(4,     'Number One',                   null							);

CREATE TABLE pelis (
 id int PRIMARY KEY AUTO_INCREMENT,
 nombre varchar(100) not null,
 descripcion varchar(3000),
 imagen varchar (500),
 distribuidor_id INT,
 FOREIGN KEY (distribuidor_id) REFERENCES distribuidor(id)
 );

INSERT INTO pelis
(id,    nombre,                         descripcion,                            																								imagen																																				,distribuidor_id) values
(1,     'Oppenhaimer',                  'La mejor pelicula de la puta vida',    																								'https://www.universalpictures.es/tl_files/content/movies/oppenheimer/oppenheimer_header-mobile.jpg'													,1),
(2,     'Una buena persona',            'Pelicula para nenas',                  																								'https://es.web.img2.acsta.net/pictures/23/03/28/10/44/4610635.jpg'          																			,2),
(3,     'Sin novedad en el frente',     'Pelicula good',                        																								'https://hips.hearstapps.com/hmg-prod/images/sin-novedad-en-el-frente-66adf09990668.jpg?crop=1xw:1xh;center,top&resize=980:' 							,3),
(4,     'Braid',                         'Un juego de rompecabezas con toques plataformeros, donde puedes manipular el flujo del tiempo de unas maneras inusuales y extrañas.',	'https://m.media-amazon.com/images/M/MV5BODFhOTUyNWEtOTM1Ny00YTliLWE2YTYtMDZhYjdiODVkY2I4XkEyXkFqcGc@._V1_.jpg'											,4),
(5,     'Borderlands 3',           		'¡Vuelve el padre de los shooter-looter, con tropecientas mil armas y una aventura caótica!', 											'https://pics.filmaffinity.com/Borderlands-784752919-large.jpg'						,1);

SET FOREIGN_KEY_CHECKS = 1;
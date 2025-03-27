
DROP TABLE IF EXISTS pelis;
    CREATE TABLE pelis (
        id int PRIMARY KEY AUTO_INCREMENT,
        nombre varchar(100) not null,
        descripcion varchar(3000),
        imagen_url varchar (500)
       );

INSERT INTO pelis 
(id,    nombre,                         descripcion,                            imagen_url) values
(1,     'Oppenhaimer',                  'La mejor pelicula de la puta vida',    'https://www.universalpictures.es/tl_files/content/movies/oppenheimer/oppenheimer_header-mobile.jpg' ),
(2,     'Una buena persona',            'Pelicula para nenas',                  'https://es.web.img2.acsta.net/pictures/23/03/28/10/44/4610635.jpg'          ),
(3,     'Sin novedad en el frente',     'Pelicula good',                        'https://hips.hearstapps.com/hmg-prod/images/sin-novedad-en-el-frente-66adf09990668.jpg?crop=1xw:1xh;center,top&resize=980:' ),
(4,     'Braid',                         'Un juego de rompecabezas con toques plataformeros, donde puedes manipular el flujo del tiempo de unas maneras inusuales y extrañas.',                                          'https://i1.wp.com/braid-game.com/news/wp-content/uploads/banner-420x358-city-1e.png'),
(5,     'Borderlands 3',           '¡Vuelve el padre de los shooter-looter, con tropecientas mil armas y una aventura caótica!',                                                                                   'https://cdn.gbposters.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/f/p/fp4825-borderlands-3-cover.jpg');
create table distribuidor (
    id int primary key auto_increment,
    nombre varchar(200) not null,
    sitio_web varchar(500)
);

insert into distribuidor
(id,    nombre,                         sitio_web) values
(1,     '2K',                           'https://2k.com'),
(2,     'Focus Home Interactive',       'https://www.focus-home.com'),
(3,     'Thekla',                       null),
(4,     'Number One',                   null);

alter table pelis
add column distribuidor_id int,
add foreign key (distribuidor_id) references distribuidor(id);

update pelis set distribuidor_id = 1 where id in (1,5);
update pelis set distribuidor_id = 2 where id in (2);
update pelis set distribuidor_id = 3 where id in (3);
update pelis set distribuidor_id = 4 where id in (4);


alter table pelis
modify distribuidor_id int not null;
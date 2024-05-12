--CREATE DATABASE IF NOT EXISTS e-commerce;
\c e_commerce;


DROP TABLE IF EXISTS categories;

CREATE TABLE
  public.categories (
    id serial NOT NULL PRIMARY KEY,
    name character varying (255) NOT NULL,
    description character varying (255) NOT NULL,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone NOT NULL DEFAULT now()
  );


-- Product or Item

DROP TABLE IF EXISTS products;

CREATE TABLE
  public.products (
    id serial NOT NULL PRIMARY KEY,
    name character varying (255) NOT NULL,
    description character varying (255) NOT NULL,
    price numeric (10,2) NOT NULL,
    category_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL DEFAULT now(),
    updated_at timestamp without time zone NOT NULL DEFAULT now()
  );

ALTER TABLE ONLY public.products
  ADD CONSTRAINT products_categories_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;


INSERT INTO public.categories (name, description, created_at, updated_at)
VALUES 
	('Deportes', 'Equipos deportivos y actividades al aire libre', now(), now()),
  ('Libros', 'Literatura y conocimiento', now(), now()),
  ('Moda', 'Ropa, accesorios y calzado', now(), now()),
  ('Relojeria', 'Relojes y repuestos', now(), now());

INSERT INTO public.products (name, description, price, category_id, created_at, updated_at)
VALUES
  ('Zapatillas deportivas', 'Zapatillas cómodas para correr', 79.99, 3, now(), now()),
  ('Bolso de cuero', 'Bolso elegante para ocasiones especiales', 129.50, 3, now(), now()),
  ('Camiseta estampada', 'Camiseta de algodón con diseño floral', 24.95, 3, now(), now()),
  ('Reloj de pulsera', 'Reloj analógico con correa de acero inoxidable', 149.00, 4, now(), now()),
  ('Gafas de sol', 'Gafas de sol polarizadas con montura de acetato', 59.99, 3, now(), now()),
  ('Pantalones vaqueros', 'Vaqueros ajustados de color azul', 69.50, 3, now(), now()),
  ('Vestido de fiesta', 'Vestido largo con lentejuelas y escote en V', 199.99, 3, now(), now()),
  ('Botines de cuero', 'Botines negros con tacón bajo', 89.95, 3, now(), now()),
  ('Pendientes de plata', 'Pendientes colgantes con piedras preciosas', 45.00, 3, now(), now()),
  ('Bufanda de lana', 'Bufanda suave y abrigada para el invierno', 34.75, 3, now(), now());

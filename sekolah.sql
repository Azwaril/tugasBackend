CREATE TABLE public.siswa (
	id serial4 NOT NULL,
	nama varchar(100) NOT NULL,
	umur int4 NULL,
	jurusan varchar(50) NULL,
	CONSTRAINT siswa_pkey PRIMARY KEY (id)
);

CREATE TABLE public.nilai (
	id serial4 NOT NULL,
	siswa_id int4 NULL,
	mata_pelajaran varchar(100) NULL,
	nilai int4 NULL,
	CONSTRAINT nilai_pkey PRIMARY KEY (id)
);

ALTER TABLE public.nilai ADD CONSTRAINT nilai_siswa_id_fkey FOREIGN KEY (siswa_id) REFERENCES public.siswa(id);

INSERT INTO public.siswa (nama,umur,jurusan) VALUES
	 ('Andi',17,'IPA'),
	 ('Bunga',16,'IPS'),
	 ('Cahyo',17,'Bahasa'),
	 ('Dewi',18,'IPA'),
	 ('Eko',16,'IPS');

INSERT INTO public.nilai (siswa_id,mata_pelajaran,nilai) VALUES
	 (1,'Matematika',89),
	 (1,'Bahasa Indonesia',90),
	 (1,'Bahasa Inggris',87),
	 (2,'Matematika',82),
	 (2,'Bahasa Indonesia',88),
	 (2,'Bahasa Inggris',85),
	 (3,'Matematika',90),
	 (3,'Bahasa Indonesia',92),
	 (3,'Bahasa Inggris',90),
	 (4,'Matematika',93);
	 (4,'Bahasa Indonesia',94),
	 (4,'Bahasa Inggris',92),
	 (5,'Matematika',80),
	 (5,'Bahasa Indonesia',83),
	 (5,'Bahasa Inggris',79);
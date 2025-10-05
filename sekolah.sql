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
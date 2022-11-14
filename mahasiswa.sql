CREATE DATABASE fakultas;

CREATE TABLE jurusan (
id INTEGER PRIMARY KEY AUTO_INCREMENT,
kode CHAR (4) NOT NULL, 
nama VARCHAR (50) NOT NULL
);

CREATE TABLE mahasiswa (
id INTEGER PRIMARY KEY AUTO_INCREMENT,
id_jurusan INTEGER NOT NULL,
nim CHAR (8) NOT NULL,
nama VARCHAR (50) NOT NULL, 
jenis_kelamin enum ('laki-laki', 'perempuan') NOT NULL, 
tempat_lahir VARCHAR (50) NOT NULL, 
tanggal_lahir DATE NOT NULL, 
alamat VARCHAR (255) NOT NULL,
FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

-- insert jurusan 
 insert into jurusan (kode, nama) values ('AKLP', 'AKUNTANSI KEUANGAN');

-- insert data mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, 
tanggal_lahir, alamat) values (2, "20040670", "Davian", "Laki-Laki", "Surabaya", "2000-10-06", 
"Jalan Ir. Soekarno No 19");

-- update data table mahasiswa
update mahasiswa set alamat = "Jalan Kucing No 13" where id=3;

-- delete data from table 
delete from mahasiswa where id= 2;

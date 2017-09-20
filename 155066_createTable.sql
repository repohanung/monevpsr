

CREATE TABLE provinsi (
  idProv varchar(2) PRIMARY KEY,
  namaProv varchar(50) NOT NULL
);


CREATE TABLE kota (
  idKota varchar(5),
  namaKota TEXT NOT NULL,
  idProv_kota varchar(2) UNIQUE NOT NULL,
  PRIMARY KEY (idKota),
  FOREIGN KEY (idProv_kota) REFERENCES provinsi (idProv) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE walikota_bupati (
  username varchar(50) PRIMARY KEY,
  password varchar(20) NOT NULL,
  idKota varchar(5) UNIQUE NOT NULL,
  FOREIGN KEY (idKota) REFERENCES kota(idKota) ON UPDATE CASCADE ON DELETE RESTRICT
);
CREATE TABLE detail_mbr (
  idKota varchar(5) PRIMARY KEY,
  asosiasi int,
  csr int,
  blm_idt int,
  imb_dan_nonimb int,
  pupr int,
  rusunawa_pemda int,
  apbd-a int,
  apbd-b int,
  asosiasi_ptsi int,
  ptsp_ptsi int,
  total int,
  FOREIGN KEY (idKota) REFERENCES kota(idKota) ON UPDATE CASCADE ON DELETE RESTRICT
);
CREATE TABLE detail_non_mbr (
  idKota varchar(5) PRIMARY KEY,
  asosiasi int,
  imb int,
  belum_idt int,
  asosiasi_ptsi int,
  ptsp_ptsi int,
  total int,
  FOREIGN KEY (idKota) REFERENCES kota(idKota) ON UPDATE CASCADE ON DELETE RESTRICT
);

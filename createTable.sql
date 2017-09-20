CREATE SCHEMA SATUJUTARUMAH;

CREATE TABLE SATUJUTARUMAH.provinsi (
  idProv varchar(2) PRIMARY KEY,
  namaProv varchar(50) NOT NULL
);


CREATE TABLE SATUJUTARUMAH.kota (
  idKota varchar(5),
  namaKota TEXT NOT NULL,
  idProv_kota varchar(2) UNIQUE NOT NULL,
  PRIMARY KEY (idKota),
  FOREIGN KEY (idProv_kota) REFERENCES SATUJUTARUMAH.provinsi (idProv) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE SATUJUTARUMAH.walikota_bupati (
  username varchar(50) PRIMARY KEY,
  password varchar(20) NOT NULL,
  idKota varchar(5) UNIQUE NOT NULL,
  FOREIGN KEY (idKota) REFERENCES SATUJUTARUMAH.kota(idKota) ON UPDATE CASCADE ON DELETE RESTRICT
);
CREATE TABLE SATUJUTARUMAH.detail_mbr (
  idKota varchar(5) PRIMARY KEY,
  asosiasi int,
  csr int,
  blm_idt int,
  imb_dan_nonimb int,
  pupr int,
  rusunawa_pemda int,
  apbd_a int,
  apbd_b int,
  asosiasi_ptsi int,
  ptsp_ptsi int,
  total int,
  FOREIGN KEY (idKota) REFERENCES SATUJUTARUMAH.kota(idKota) ON UPDATE CASCADE ON DELETE RESTRICT
);
CREATE TABLE SATUJUTARUMAH.detail_non_mbr (
  idKota varchar(5) PRIMARY KEY,
  asosiasi int,
  imb int,
  belum_idt int,
  asosiasi_ptsi int,
  ptsp_ptsi int,
  total int,
  FOREIGN KEY (idKota) REFERENCES SATUJUTARUMAH.kota(idKota) ON UPDATE CASCADE ON DELETE RESTRICT
);

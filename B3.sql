create table phieu_xuat(
so_px int primary key auto_increment,
ngay_xuat datetime
);

create table phieu_nhap(
so_pn int primary key auto_increment,
ngay_nhap datetime
);


create table phieu_xuat_chi_tiet(
so_px int,
ma_vt int,
primary key(so_px,ma_vt),
don_gia_xuat double,
so_luong_xuat int,

foreign key (so_px) references phieu_xuat(so_px),
foreign key (ma_vt) references vat_tu(ma_vt)
);

create table chi_tiet_don_dat_hang(
ma_vt int,
so_dh int,
primary key(ma_vt,so_dh),

foreign key (ma_vt) references vat_tu(ma_vt),
foreign key (so_dh) references don_dat_hang(so_dh)
);

create table nga_cung_cap(
ma_ncc int primary key auto_increment,
ten_ncc varchar(255),
dia_chi varchar(255),
so_dien_thoai varchar(255)
);

create table don_dat_hang(
so_dh int auto_increment,
ma_ncc int ,
primary key(so_dh,ma_ncc),
ngay_dh datetime,

foreign key (ma_ncc) references nga_cung_cap(ma_ncc)

);

create table vat_tu(
ma_vt int primary key auto_increment,
ten_vt varchar(255)
);

create table phieu_nhap_chi_tiet(
so_pn int,
ma_vt int,
primary key(so_pn,ma_vt),
don_gia_nhap double,
so_luong_nhap int,

foreign key (so_pn) references phieu_nhap(so_pn),
foreign key (ma_vt) references vat_tu(ma_vt)
);


show tables;


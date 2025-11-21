CREATE DATABASE du_an_1;
USE du_an_1;

-- =======================
-- BẢNG ROLE
-- =======================
CREATE TABLE tb_role (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name_role VARCHAR(50),
    mo_ta VARCHAR(255)
);

-- =======================
-- BẢNG USER
-- =======================
CREATE TABLE tb_user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(50),
    pass_word VARCHAR(255),
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    id_role INT,
    gender TINYINT(1),
    FOREIGN KEY (id_role) REFERENCES tb_role(id)
);

-- =======================
-- BẢNG DANH MỤC TOUR
-- =======================
CREATE TABLE tb_danhmuc (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_danhmuc VARCHAR(100),
    mo_ta TEXT,
    hinh_anh VARCHAR(255),
    trang_thai TINYINT(1)
);

-- =======================
-- BẢNG TOUR
-- =======================
CREATE TABLE tb_tour (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ma_tour VARCHAR(20),
    ten_tour VARCHAR(255),
    id_danhmuc INT,
    gia_nguoilon DECIMAL(12,0),
    gia_treem DECIMAL(12,0),
    so_cho INT,
    ngay_khoihanh DATE,
    ngay_ketthuc DATE,
    diem_khoihanh VARCHAR(255),
    mo_ta_ngan VARCHAR(500),
    mo_ta_chi_tiet LONGTEXT,
    lich_trinh LONGTEXT,
    hinh_anh JSON,
    trang_thai TINYINT,
    created_at DATETIME,
    updated_at DATETIME,
    FOREIGN KEY (id_danhmuc) REFERENCES tb_danhmuc(id)
);

-- =======================
-- BẢNG ĐỊA ĐIỂM
-- =======================
CREATE TABLE tb_diadiem (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_dia_diem VARCHAR(255),
    dia_chi VARCHAR(500),
    mo_ta TEXT,
    hinh_anh VARCHAR(255)
);

-- =======================
-- BẢNG LỊCH TRÌNH CHI TIẾT
-- =======================
CREATE TABLE tb_lichtrinh_chitiet (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_tour INT,
    ngay_thu INT,
    tieu_de VARCHAR(255),
    mo_ta TEXT,
    bua_an VARCHAR(100),
    khach_san VARCHAR(255),
    id_diadiem INT,
    FOREIGN KEY (id_tour) REFERENCES tb_tour(id),
    FOREIGN KEY (id_diadiem) REFERENCES tb_diadiem(id)
);

-- =======================
-- BẢNG HƯỚNG DẪN VIÊN
-- =======================
CREATE TABLE tb_huongdanvien (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_user INT,
    cmnd VARCHAR(20),
    ngay_cap DATE,
    noi_cap VARCHAR(100),
    kinh_nghiem INT,
    ngoai_ngu VARCHAR(255),
    chuyen_mon VARCHAR(255),
    trang_thai TINYINT(1),
    FOREIGN KEY (id_user) REFERENCES tb_user(id)
);

-- =======================
-- BẢNG TOUR - HƯỚNG DẪN VIÊN
-- =======================
CREATE TABLE tb_tour_hdv (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_tour INT,
    id_hdv INT,
    vai_tro VARCHAR(50),
    FOREIGN KEY (id_tour) REFERENCES tb_tour(id),
    FOREIGN KEY (id_hdv) REFERENCES tb_huongdanvien(id)
);

-- =======================
-- BẢNG ĐẶT TOUR
-- =======================
CREATE TABLE tb_dattour (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ma_don VARCHAR(20),
    id_user INT,
    ho_ten_khach VARCHAR(100),
    email_khach VARCHAR(100),
    phone_khach VARCHAR(15),
    id_tour INT,
    so_nguoilon INT,
    so_treem INT,
    tong_tien DECIMAL(12,0),
    ghi_chu TEXT,
    trang_thai TINYINT,
    ngay_dat DATETIME,
    FOREIGN KEY (id_user) REFERENCES tb_user(id),
    FOREIGN KEY (id_tour) REFERENCES tb_tour(id)
);


CREATE DATABASE QuanLyNhanSu;
USE QuanLyNhanSu;

-- 1. Tạo bảng
CREATE TABLE PhongBan (
    MaPB INT PRIMARY KEY,
    TenPB NVARCHAR(50) NOT NULL
);

CREATE TABLE ChucVu (
    MaCV INT PRIMARY KEY,
    TenCV NVARCHAR(50) NOT NULL,
    LuongCoBan DECIMAL(10,2)
);

CREATE TABLE NhanVien (
    MaNV INT PRIMARY KEY,
    HoTen NVARCHAR(100) NOT NULL,
    NgaySinh DATE,
    GioiTinh NVARCHAR(10),
    SoDienThoai NVARCHAR(15),
    DiaChi NVARCHAR(255),
    NgayVaoLam DATE,
    MaPB INT FOREIGN KEY REFERENCES PhongBan(MaPB),
    MaCV INT FOREIGN KEY REFERENCES ChucVu(MaCV)
);

CREATE TABLE BangLuong (
    MaLuong INT PRIMARY KEY,
    MaNV INT FOREIGN KEY REFERENCES NhanVien(MaNV),
    LuongCoBan DECIMAL(10,2),
    Thuong DECIMAL(10,2)
);

CREATE TABLE DuAn (
    MaDA INT PRIMARY KEY,
    TenDA NVARCHAR(100),
    NgayBatDau DATE,
    NgayKetThuc DATE,
    MaTruongDA INT FOREIGN KEY REFERENCES NhanVien(MaNV) -- Thêm dấu phẩy trước MaTruongDA
);	

INSERT INTO PhongBan VALUES 
(1, N'Kế toán'), 
(2, N'CNTT'), 
(3, N'Nhân sự'), 
(4, N'Marketing'), 
(5, N'Bán hàng'),
(6, N'Hành chính'), 
(7, N'Pháp chế'), 
(8, N'Logistics'), 
(9, N'Kỹ thuật'), 
(10, N'Sản xuất'),
(11, N'Chăm sóc khách hàng'), 
(12, N'Tài chính'), 
(13, N'Nghiên cứu & Phát triển'), 
(14, N'Giáo dục'), 
(15, N'Y tế');

INSERT INTO ChucVu VALUES 
(1, N'Nhân viên', 10000000),
(2, N'Trưởng nhóm', 15000000),
(3, N'Nhân viên', 20000000),
(4, N'Nhân Viên', 30000000), 
(5, N'Nhân Viên', 25000000),
(6, N'Kỹ sư', 18000000), 
(7, N'Kỹ sư', 17000000), 
(8, N'Thư ký', 12000000), 
(9, N'Nhân viên hỗ trợ', 11000000), 
(10, N'Thư ký', 10500000),
(11, N'Nhân viên IT', 16000000), 
(12, N'Nhân viên vệ sinh', 13000000), 
(13, N'Nhân viên pháp lý', 14000000), 
(14, N'Nhân viên logistics', 13500000), 
(15, N'Chuyên gia đào tạo', 15500000);

INSERT INTO NhanVien VALUES 
(1, N'Nguyễn Văn A', '1990-01-01', N'Nam', '0901234567', N'Hà Nội', '2020-01-01', 1, 2),
(2, N'Nguyễn Thị B', '1992-02-02', N'Nữ', '0912345678', N'TP.HCM', '2019-03-15', 2, 3),
(3, N'Nguyễn Văn C', '1993-03-03', N'Nam', '0923456789', N'Đà Nẵng', '2021-06-10', 3, 1),
(4, N'Nguyễn Thị D', '1985-04-04', N'Nữ', '0934567890', N'Hải Phòng', '2018-07-20', 4, 4),
(5, N'nguyễn Văn E', '1987-05-05', N'Nam', '0945678901', N'Bình Dương', '2017-08-30', 5, 5),
(6, N'Nguyễn Văn F', '1988-06-06', N'Nữ', '0956789012', N'Hà Nội', '2016-09-10', 6, 6),
(7, N'Nguyễn Văn G', '1991-07-07', N'Nam', '0967890123', N'Nha Trang', '2015-10-25', 7, 7),
(8, N'Khoa Pub', '1989-08-08', N'Nữ', '0978901234', N'Quảng Ninh', '2014-11-15', 8, 8),
(9, N'Nguyễn Thị H', '1994-09-09', N'Nam', '0989012345', N'Bắc Ninh', '2013-12-05', 9, 9),
(10, N'Trần Thị M', '1991-02-11', N'Nam', '0785554891', N'Bình DƯơng', '2011-03-15', 1, 2),
(11, N'Trần Hoàng K', '1990-11-11', N'Nam', '0991234567', N'Cần Thơ', '2011-03-15', 1, 2),
(12, N'Nguyễn Xuân M', '1989-12-12', N'Nữ', '0987654321', N'Huế', '2010-07-10', 2, 3),
(13, N'Lê Hữu N', '1991-01-13', N'Nam', '0976543210', N'Đồng Nai', '2009-05-20', 3, 1),
(14, N'Phạm Minh Q', '1993-04-14', N'Nữ', '0965432109', N'Vũng Tàu', '2008-09-25', 4, 4),
(15, N'Bùi Tiến R', '1988-06-15', N'Nam', '0954321098', N'Bắc Giang', '2007-11-30', 5, 5);

INSERT INTO BangLuong VALUES 
(1, 1, 10000000, 2000000), 
(2, 2, 15000000, 3000000), 
(3, 3, 12000000, 2500000), 
(4, 4, 18000000, 3500000), 
(5, 5, 20000000, 4000000),
(6, 6, 11000000, 1500000), 
(7, 7, 16000000, 2800000), 
(8, 8, 14000000, 2700000), 
(9, 9, 13000000, 2600000), 
(10, 10, 17000000, 3200000),
(11, 11, 12000000, 2200000), 
(12, 12, 13500000, 2500000), 
(13, 13, 12500000, 2300000), 
(14, 14, 14500000, 2700000), 
(15, 15, 15500000, 2900000);

INSERT INTO DuAn VALUES 
(1, N'Phần mềm kế toán', '2024-01-01', '2024-12-31',N'3'),
(2, N'Hệ thống ERP', '2024-02-15', '2024-11-30','6'),
(3, N'Website thương mại điện tử', '2024-03-01', '2024-10-15','8'),
(4, N'Ứng dụng di động', '2024-04-10', '2024-09-30',N'10'),
(5, N'Phân tích dữ liệu lớn', '2024-05-05', '2024-08-25','2'),
(6, N'Hệ thống AI thông minh', '2024-06-01', '2024-12-15', 4),
(7, N'Ứng dụng học trực tuyến', '2024-07-10', '2025-01-20', 7),
(8, N'Phần mềm quản lý bệnh viện', '2024-08-05', '2025-02-10', 9),
(9, N'Nền tảng Blockchain', '2024-09-15', '2025-03-30', 11),
(10, N'Công nghệ 5G IoT', '2024-10-20', '2025-04-25', 13),
(11, N'Dự án AI Tự Động Hóa', '2024-11-01', '2025-06-30', 2),
(12, N'Phát triển Chatbot', '2024-12-15', '2025-08-20', 5),
(13, N'Nâng cấp hệ thống CRM', '2025-01-10', '2025-09-10', 7),
(14, N'Ứng dụng Blockchain Tài Chính', '2025-02-05', '2025-10-25', 9),
(15, N'Triển khai ERP cho doanh nghiệp', '2025-03-12', '2025-11-30', 12);


-- 3. 1.Tạo VIEW nhân viên 
CREATE VIEW view_DanhSachNhanVien AS
SELECT nv.MaNV, nv.HoTen, nv.NgaySinh, pb.TenPB, cv.TenCV, bl.LuongCoBan, bl.Thuong
FROM NhanVien nv
JOIN PhongBan pb ON nv.MaPB = pb.MaPB
JOIN ChucVu cv ON nv.MaCV = cv.MaCV
LEFT JOIN BangLuong bl ON nv.MaNV = bl.MaNV;

SELECT * FROM view_DanhSachNhanVien;

DROP VIEW view_DanhSachNhanVien;

--3. 2.View: Danh sách nhân viên và lương
CREATE VIEW view_NhanVien_Luong AS
SELECT nv.MaNV, nv.HoTen, nv.GioiTinh, nv.NgaySinh, cv.TenCV, bl.LuongCoBan, bl.Thuong
FROM NhanVien nv
JOIN ChucVu cv ON nv.MaCV = cv.MaCV
LEFT JOIN BangLuong bl ON nv.MaNV = bl.MaNV;

SELECT * FROM view_NhanVien_Luong;

DROP VIEW view_NhanVien_Luong;

--3. 3.View: Nhân viên theo phòng ban
CREATE VIEW view_NhanVien_TheoPhongBan AS
SELECT nv.MaNV, nv.HoTen, pb.TenPB
FROM NhanVien nv
JOIN PhongBan pb ON nv.MaPB = pb.MaPB;

SELECT * FROM view_NhanVien_TheoPhongBan;

DROP VIEW view_NhanVien_TheoPhongBan;

--3. 4.View: Nhân viên có lương cao nhất
CREATE VIEW view_NhanVien_LuongCaoNhat AS
SELECT TOP 10 nv.MaNV, nv.HoTen, cv.TenCV, pb.TenPB, bl.LuongCoBan + ISNULL(bl.Thuong, 0) AS TongLuong
FROM NhanVien nv
JOIN ChucVu cv ON nv.MaCV = cv.MaCV
JOIN PhongBan pb ON nv.MaPB = pb.MaPB
LEFT JOIN BangLuong bl ON nv.MaNV = bl.MaNV
ORDER BY TongLuong DESC;

SELECT * FROM view_NhanVien_LuongCaoNhat;

DROP VIEW view_NhanVien_LuongCaoNhat;

--3. 5. View: Nhân viên theo từng chức vụ
CREATE VIEW view_NhanVien_TheoChucVu AS
SELECT nv.MaNV, nv.HoTen, cv.TenCV
FROM NhanVien nv
JOIN ChucVu cv ON nv.MaCV = cv.MaCV;

SELECT * FROM view_NhanVien_TheoChucVu;

DROP VIEW view_NhanVien_TheoChucVu;

--3.6. View: Danh sách dự án và trưởng dự án
CREATE VIEW view_DuAn_TruongDuAn AS
SELECT da.MaDA, da.TenDA, da.NgayBatDau, da.NgayKetThuc, nv.HoTen AS TruongDuAn
FROM DuAn da
JOIN NhanVien nv ON da.MaTruongDA = nv.MaNV;

SELECT * FROM view_DuAn_TruongDuAn ;

DROP VIEW view_DuAn_TruongDuAn ;

--3.7. View: Nhân viên tham gia dự án
CREATE VIEW view_NhanVien_ThamGiaDuAn AS
SELECT nv.MaNV, nv.HoTen, da.TenDA
FROM NhanVien nv
JOIN DuAn da ON nv.MaNV = da.MaTruongDA;

SELECT * FROM  view_NhanVien_ThamGiaDuAn;

DROP VIEW  view_NhanVien_ThamGiaDuAn;

--3. 8.View: Nhân viên có thâm niên lâu nhất
CREATE OR ALTER VIEW view_NhanVien_ThamNien AS
SELECT *
FROM NhanVien;

-- Khi sử dụng VIEW, thêm ORDER BY
SELECT * FROM view_NhanVien_ThamNien
ORDER BY NgayVaoLam DESC;


DROP VIEW view_NhanVien_ThamNien;

--3.9.  View: Tổng lương của từng phòng ban
CREATE VIEW view_TongLuong_PhongBan AS
SELECT pb.TenPB, SUM(bl.LuongCoBan + ISNULL(bl.Thuong, 0)) AS TongLuong
FROM NhanVien nv
JOIN PhongBan pb ON nv.MaPB = pb.MaPB
LEFT JOIN BangLuong bl ON nv.MaNV = bl.MaNV
GROUP BY pb.TenPB;

SELECT * FROM view_TongLuong_PhongBan;

DROP VIEW view_TongLuong_PhongBan ;

--3.10. View: Nhân viên và số dự án tham gia
CREATE VIEW view_NhanVien_SoDuAn AS
SELECT nv.MaNV, nv.HoTen, COUNT(da.MaDA) AS SoDuAn
FROM NhanVien nv
LEFT JOIN DuAn da ON nv.MaNV = da.MaTruongDA
GROUP BY nv.MaNV, nv.HoTen;

SELECT * FROM view_NhanVien_SoDuAn;

DROP VIEW view_NhanVien_SoDuAn;

-- 4.Tạo INDEX để tối ưu truy vấn
CREATE INDEX idx_HoTen ON NhanVien (HoTen);
CREATE UNIQUE INDEX idx_SoDienThoai ON NhanVien (SoDienThoai);

SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID('NhanVien');

-- Xóa chỉ mục trên bảng Nhân viên
DROP INDEX idx_HoTen ON NhanVien;
DROP INDEX idx_SoDienThoai ON NhanVien;

-- 5. 1.Tạo STORED PROCEDURE
-- Đảm bảo tách riêng các lệnh bằng GO
GO

-- Sửa lỗi tạo thủ tục lấy nhân viên theo phòng ban
CREATE PROCEDURE sp_LayNhanVienTheoPhongBan
    @MaPB INT
AS
BEGIN
    SELECT * FROM NhanVien WHERE MaPB = @MaPB;
END;
GO  -- Thêm GO để tách batch

--tạo thủ tục thêm nhân viên mới
CREATE PROCEDURE sp_ThemNhanVien
    @HoTen NVARCHAR(100),
    @NgaySinh DATE,
    @GioiTinh NVARCHAR(10),
    @SoDienThoai NVARCHAR(15),
    @DiaChi NVARCHAR(255),
    @NgayVaoLam DATE,
    @MaPB INT,
    @MaCV INT
AS
BEGIN
    INSERT INTO NhanVien (HoTen, NgaySinh, GioiTinh, SoDienThoai, DiaChi, NgayVaoLam, MaPB, MaCV)
    VALUES (@HoTen, @NgaySinh, @GioiTinh, @SoDienThoai, @DiaChi, @NgayVaoLam, @MaPB, @MaCV);
END;
GO  -- Tách batch để tránh lỗi

EXEC sp_LayNhanVienTheoPhongBan @MaPB = 1;

DROP PROCEDURE sp_LayNhanVienTheoPhongBan;
DROP PROCEDURE sp_ThemNhanVien;


--5. 2. Lấy danh sách nhân viên có mức lương cao hơn một giá trị
CREATE PROCEDURE sp_LayNhanVienLuongCaoHon
    @MucLuong DECIMAL(10,2)
AS
BEGIN
    SELECT nv.MaNV, nv.HoTen, pb.TenPB, cv.TenCV, bl.LuongCoBan, bl.Thuong
    FROM NhanVien nv
    JOIN PhongBan pb ON nv.MaPB = pb.MaPB
    JOIN ChucVu cv ON nv.MaCV = cv.MaCV
    JOIN BangLuong bl ON nv.MaNV = bl.MaNV
    WHERE (bl.LuongCoBan + ISNULL(bl.Thuong, 0)) > @MucLuong;
END;
GO

EXEC sp_LayNhanVienLuongCaoHon @MucLuong = 15000000;

DROP PROCEDURE sp_LayNhanVienLuongCaoHon;

--5.3.Đếm số nhân viên trong một phòng ban
CREATE PROCEDURE sp_DemNhanVienTheoPhongBan
    @MaPB INT,
    @SoLuong INT OUTPUT
AS
BEGIN
    SELECT @SoLuong = COUNT(*) FROM NhanVien WHERE MaPB = @MaPB;
END;
GO

DECLARE @SL INT;
EXEC sp_DemNhanVienTheoPhongBan @MaPB = 2, @SoLuong = @SL OUTPUT;
PRINT @SL;

DROP PROCEDURE sp_DemNhanVienTheoPhongBan;

--5.4. Cập nhật mức thưởng cho nhân viên
CREATE PROCEDURE sp_CapNhatThuong
    @MaNV INT,
    @ThuongMoi DECIMAL(10,2)
AS
BEGIN
    UPDATE BangLuong
    SET Thuong = @ThuongMoi
    WHERE MaNV = @MaNV;
END;
GO

EXEC sp_CapNhatThuong @MaNV = 3, @ThuongMoi = 5000000;

SELECT * FROM BangLuong;

DROP PROCEDURE sp_CapNhatThuong;

--5.5. Xóa tất cả nhân viên trong một phòng ban
CREATE PROCEDURE sp_XoaNhanVienTheoPhongBan
    @MaPB INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Xóa nhân viên đang làm trưởng dự án trong bảng DuAn
    UPDATE DuAn
    SET MaTruongDA = NULL
    WHERE MaTruongDA IN (SELECT MaNV FROM NhanVien WHERE MaPB = @MaPB);

    -- Xóa bảng lương của nhân viên
    DELETE FROM BangLuong WHERE MaNV IN (SELECT MaNV FROM NhanVien WHERE MaPB = @MaPB);

    -- Xóa nhân viên trong phòng ban
    DELETE FROM NhanVien WHERE MaPB = @MaPB;
END;
GO

-- Chạy thủ tục xóa nhân viên trong phòng ban có mã 8
EXEC sp_XoaNhanVienTheoPhongBan @MaPB = 8;
SELECT * FROM BangLuong 

DROP PROCEDURE sp_XoaNhanVienTheoPhongBan;

--5. 6.Lấy danh sách nhân viên sắp xếp theo lương
CREATE PROCEDURE sp_LayNhanVienTheoLuong
AS
BEGIN
    SELECT nv.MaNV, nv.HoTen, bl.LuongCoBan, bl.Thuong
    FROM NhanVien nv
    JOIN BangLuong bl ON nv.MaNV = bl.MaNV
    ORDER BY (bl.LuongCoBan + ISNULL(bl.Thuong, 0)) DESC;
END;
GO

EXEC sp_LayNhanVienTheoLuong;

DROP PROCEDURE sp_LayNhanVienTheoLuong;

--5.7. Lấy danh sách dự án theo thời gian bắt đầu
CREATE PROCEDURE sp_LayDuAnTheoThoiGian
AS
BEGIN
    SELECT * FROM DuAn ORDER BY NgayBatDau DESC;
END;
GO

EXEC sp_LayDuAnTheoThoiGian;

DROP PROCEDURE sp_LayDuAnTheoThoiGian;

--5.8. Cập nhật thông tin phòng ban
CREATE PROCEDURE sp_CapNhatPhongBan
    @MaPB INT,
    @TenPBMoi NVARCHAR(50)
AS
BEGIN
    UPDATE PhongBan
    SET TenPB = @TenPBMoi
    WHERE MaPB = @MaPB;
END;
GO

EXEC sp_CapNhatPhongBan @MaPB = 3, @TenPBMoi = N'Nhân sự - Tuyển dụng';

SELECT * FROM  PhongBan;

DROP PROCEDURE sp_CapNhatPhongBan;

--5.9.Xóa một dự án theo mã
CREATE PROCEDURE sp_XoaDuAn
    @MaDA INT
AS
BEGIN
    DELETE FROM DuAn WHERE MaDA = @MaDA;
END;
GO

EXEC sp_XoaDuAn @MaDA = 2;

SELECT * FROM  DuAn;

DROP PROCEDURE sp_XoaDuAn;

--5.10. Lấy danh sách nhân viên theo thâm niên
CREATE PROCEDURE sp_LayNhanVienTheoThamNien
    @SoNam INT
AS
BEGIN
    SELECT nv.MaNV, nv.HoTen, nv.NgayVaoLam, 
           DATEDIFF(YEAR, nv.NgayVaoLam, GETDATE()) AS SoNamLamViec
    FROM NhanVien nv
    WHERE DATEDIFF(YEAR, nv.NgayVaoLam, GETDATE()) >= @SoNam
    ORDER BY SoNamLamViec DESC;
END;
GO

EXEC sp_LayNhanVienTheoThamNien @SoNam = 5;

DROP PROCEDURE sp_LayNhanVienTheoThamNien;
-- 6. Tạo FUNCTION tính tổng thu nhập của nhân viên
CREATE FUNCTION fn_TongThuNhap (@MaNV INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @TongLuong DECIMAL(10,2);
    SELECT @TongLuong = LuongCoBan + ISNULL(Thuong, 0)
    FROM BangLuong WHERE MaNV = @MaNV;
    RETURN @TongLuong;
END;

-- Lấy danh sách nhân viên kèm tổng thu nhập
SELECT nv.MaNV, nv.HoTen, dbo.fn_TongThuNhap(nv.MaNV) AS TongThuNhap
FROM NhanVien nv;

-- Xóa FUNCTION nếu cần cập nhật lại
DROP FUNCTION IF EXISTS fn_TongThuNhap;

-- 7.1. cập nhật ngày sửa đổi cuối cùng khi nhân viên thay đổi thông tin
CREATE TRIGGER trg_TangThuongKhiThangChuc
ON NhanVien
AFTER UPDATE
AS
BEGIN
    IF UPDATE(MaCV)  -- Kiểm tra nếu MaCV bị thay đổi
    BEGIN
        UPDATE BangLuong
        SET Thuong = Thuong * 1.1
        FROM BangLuong b
        JOIN inserted i ON b.MaNV = i.MaNV
        JOIN deleted d ON i.MaNV = d.MaNV
        WHERE i.MaCV <> d.MaCV;
    END
END;
GO

UPDATE NhanVien SET MaCV = 3 WHERE MaNV = 1;
SELECT * FROM BangLuong;

DROP TRIGGER trg_TangThuongKhiThangChuc;

--7.2 Ngăn chặn việc cập nhật MaNV
CREATE TRIGGER trg_KhongCapNhatMaNV
ON NhanVien
INSTEAD OF UPDATE
AS
BEGIN
    IF UPDATE(MaNV)
    BEGIN
        RAISERROR('Không được phép cập nhật MaNV!', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        UPDATE NhanVien
        SET HoTen = inserted.HoTen, NgaySinh = inserted.NgaySinh, 
            GioiTinh = inserted.GioiTinh, SoDienThoai = inserted.SoDienThoai, 
            DiaChi = inserted.DiaChi, NgayVaoLam = inserted.NgayVaoLam, 
            MaPB = inserted.MaPB, MaCV = inserted.MaCV
        FROM inserted
        WHERE NhanVien.MaNV = inserted.MaNV;
    END
END;
GO

UPDATE NhanVien SET MaNV = 99 WHERE MaNV = 1;

DROP TRIGGER trg_KhongCapNhatMaNV;

--7.3. Không cho phép xóa nhân viên có bảng lương
CREATE TRIGGER trg_KhongXoaNhanVienCoLuong
ON NhanVien
INSTEAD OF DELETE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM deleted d JOIN BangLuong b ON d.MaNV = b.MaNV)
    BEGIN
        RAISERROR('Không thể xóa nhân viên có bảng lương!', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        DELETE FROM NhanVien WHERE MaNV IN (SELECT MaNV FROM deleted);
    END
END;
GO

DELETE FROM NhanVien WHERE MaNV = 1;

DROP TRIGGER trg_KhongXoaNhanVienCoLuong;

--7.4. Cập nhật ngày cập nhật cuối cùng khi chỉnh sửa nhân viên
ALTER TABLE NhanVien ADD NgayCapNhat DATE NULL;
GO

CREATE TRIGGER trg_CapNhatNgaySuaNhanVien
ON NhanVien
AFTER UPDATE
AS
BEGIN
    UPDATE NhanVien
    SET NgayCapNhat = GETDATE()
    FROM NhanVien n
    JOIN inserted i ON n.MaNV = i.MaNV;
END;
GO

UPDATE NhanVien SET HoTen = N'Nguyễn Văn B' WHERE MaNV = 1;
SELECT MaNV, HoTen, NgayCapNhat FROM NhanVien WHERE MaNV = 1;

DROP TRIGGER trg_CapNhatNgaySuaNhanVien;

--7.5. Ngăn chặn việc giảm lương nhân viên
CREATE TRIGGER trg_KhongGiamLuong
ON BangLuong
INSTEAD OF UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM inserted i
        JOIN deleted d ON i.MaNV = d.MaNV
        WHERE i.LuongCoBan < d.LuongCoBan
    )
    BEGIN
        RAISERROR('Không thể giảm lương nhân viên!', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        UPDATE BangLuong
        SET LuongCoBan = i.LuongCoBan, Thuong = i.Thuong
        FROM inserted i
        WHERE BangLuong.MaNV = i.MaNV;
    END
END;
GO


UPDATE BangLuong SET LuongCoBan = 5000000 WHERE MaNV = 1;

DROP TRIGGER trg_KhongGiamLuong;

--7.6. Tự động cập nhật trạng thái dự án khi ngày kết thúc đã qua
ALTER TABLE DuAn ADD TrangThai NVARCHAR(50) DEFAULT N'Đang thực hiện';
GO

CREATE TRIGGER trg_CapNhatTrangThaiDuAn
ON DuAn
AFTER UPDATE
AS
BEGIN
    UPDATE DuAn
    SET TrangThai = CASE 
        WHEN NgayKetThuc < GETDATE() THEN N'Hoàn thành'
        ELSE TrangThai
    END
    WHERE MaDA IN (SELECT MaDA FROM inserted);
END;
GO

UPDATE DuAn SET NgayKetThuc = '2023-01-01' WHERE MaDA = 1;
SELECT MaDA, TenDA, TrangThai FROM DuAn WHERE MaDA = 1;

DROP TRIGGER trg_CapNhatTrangThaiDuAn;

--7.7.Không cho phép thêm nhân viên vào phòng ban không tồn tại
CREATE TRIGGER trg_KiemTraPhongBanTonTai
ON NhanVien
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM inserted i
        LEFT JOIN PhongBan pb ON i.MaPB = pb.MaPB
        WHERE pb.MaPB IS NULL
    )
    BEGIN
        RAISERROR('Phòng ban không tồn tại!', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        INSERT INTO NhanVien (MaNV, HoTen, NgaySinh, GioiTinh, SoDienThoai, DiaChi, NgayVaoLam, MaPB, MaCV)
        SELECT MaNV, HoTen, NgaySinh, GioiTinh, SoDienThoai, DiaChi, NgayVaoLam, MaPB, MaCV FROM inserted;
    END
END;
GO

INSERT INTO NhanVien (MaNV, HoTen, NgaySinh, GioiTinh, SoDienThoai, DiaChi, NgayVaoLam, MaPB, MaCV)
VALUES (100, N'Nguyễn Mạnh Dũng', '1990-12-12', N'Nam', '0999999999', N'Hà Nội', '2024-01-01', 99, 1);


DROP TRIGGER trg_KiemTraPhongBanTonTai;

--7.8. Tự động cập nhật trạng thái nhân viên 
ALTER TABLE NhanVien ADD TrangThai NVARCHAR(50) DEFAULT N'Đang làm việc';
CREATE TRIGGER trg_XoaNhanVien_TuDongXoaLuong
ON NhanVien
INSTEAD OF DELETE
AS
BEGIN
    -- Sau đó mới xóa nhân viên
    DELETE FROM NhanVien WHERE MaNV IN (SELECT MaNV FROM deleted);
END;
GO

UPDATE NhanVien SET TrangThai = N'Đã nghỉ việc' WHERE MaNV IN (6, 7, 8, 9);
UPDATE NhanVien SET TrangThai = N'đang làm việc' WHERE MaNV IN (1,2,3,4);

SELECT * FROM NhanVien;

DROP TRIGGER IF EXISTS trg_XoaNhanVien_TuDongXoaLuong

--7.9. Ghi log khi nhân viên bị xóa
CREATE TABLE Log_XoaNhanVien (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    MaNV INT,
    HoTen NVARCHAR(100),
    NgayXoa DATE
);
INSERT INTO Log_XoaNhanVien (MaNV, HoTen, NgayXoa)
VALUES 
(1, N'Nguyễn Văn A', '2024-03-10'),
(2, N'Trần Thị B', '2024-03-11'),
(3, N'Lê Hoàng C', '2024-03-12'),
(4, N'Đỗ Minh D', '2024-03-13'),
(5, N'Phạm Thanh E', '2024-03-14');
GO
CREATE TRIGGER trg_LogXoaNhanVien
ON NhanVien
AFTER DELETE
AS
BEGIN
    -- Kiểm tra nếu nhân viên có thể bị xóa mà không vi phạm khóa ngoại
    IF NOT EXISTS (SELECT 1 FROM deleted d JOIN DuAn da ON d.MaNV = da.MaTruongDA)
    BEGIN
        -- Ghi log vào bảng Log_XoaNhanVien
        INSERT INTO Log_XoaNhanVien (MaNV, HoTen, NgayXoa)
        SELECT MaNV, HoTen, GETDATE() FROM deleted;
    END
    ELSE
    BEGIN
        -- Nếu nhân viên có ràng buộc khóa ngoại, báo lỗi nhưng không làm gián đoạn hệ thống
        PRINT 'Không thể xóa nhân viên vì đang là trưởng dự án.';
    END
END;
GO

DELETE FROM NhanVien WHERE MaNV = 6;  
SELECT * FROM Log_XoaNhanVien WHERE MaNV = 6;

DROP TRIGGER trg_LogXoaNhanVien;
DROP TABLE Log_XoaNhanVien;

--7.10. Cảnh báo khi thêm nhân viên vào một dự án đã kết thúc
CREATE TRIGGER trg_CanhBaoThemNhanVienVaoDuAnHetHan
ON DuAn
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM inserted WHERE NgayKetThuc < GETDATE()
    )
    BEGIN
        RAISERROR('Không thể thêm nhân viên vào dự án đã kết thúc!', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        INSERT INTO DuAn (MaDA, TenDA, NgayBatDau, NgayKetThuc, MaTruongDA)
        SELECT MaDA, TenDA, NgayBatDau, NgayKetThuc, MaTruongDA FROM inserted;
    END
END;
GO

INSERT INTO DuAn (MaDA, TenDA, NgayBatDau, NgayKetThuc, MaTruongDA)
VALUES (20, N'Dự án cũ', '2022-01-01', '2023-01-01', 1);

DROP TRIGGER trg_CanhBaoThemNhanVienVaoDuAnHetHan;

--8 phân quyền và bảo mật
-- Tạo tài khoản cho Quản lý
CREATE LOGIN QuanLy WITH PASSWORD = 'MatkhauQuanLy!';
CREATE USER QuanLy FOR LOGIN QuanLy;

--Tạo tài khoản cho nhân viên
CREATE LOGIN NhanVien WITH PASSWORD = 'matkhauNhanVien';
CREATE USER NhanVien FOR LOGIN NhanVien  ;

--cấp quyền cho quản lý
ALTER ROLE db_owner ADD MEMBER QuanLy;

--cấp quyền cho nhân viên
GRANT SELECT, INSERT, UPDATE, DELETE ON PhongBan TO NhanVien;
GRANT SELECT, INSERT, UPDATE, DELETE ON NhanVien TO NhanVien;
GRANT SELECT, INSERT, UPDATE, DELETE ON ChucVu TO NhanVien;
GRANT SELECT, INSERT, UPDATE, DELETE ON BangLuong TO NhanVien;
GRANT SELECT, INSERT, UPDATE, DELETE ON DuAn TO NhanVien;

--Hạn chế quyền truy cập nhân viên
DENY DELETE ON DuAN TO QuanLy;
DENY DELETE ON BangLuong TO  QuanLy;
DENY DELETE ON ChucVu TO  QuanLy;

--Kiểm tra quyền người dùng
SELECT * FROM fn_my_permissions(NULL, 'DATABASE');

	-- Tạo khóa chính chỉ
	CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'NhapMatKhauVao!';
	-- Tạo chứng chỉ bảo mật
	CREATE CERTIFICATE MyCertificate  
	WITH SUBJECT = 'Ma Hoa So Dien Thoai';
	-- Tạo khóa đối xứng để mã hóa dữ liệu
	CREATE SYMMETRIC KEY MySymmetricKey  
	WITH ALGORITHM = AES_256  
	ENCRYPTION BY CERTIFICATE MyCertificate;
	-- Kiểm tra danh sách chứng chỉ đã tạo
	SELECT * FROM sys.certificates;
	-- Kiểm tra danh sách khóa đối xứng
	SELECT * FROM NhanVien;

CLOSE SYMMETRIC KEY MySymmetricKey;
DROP SYMMETRIC KEY MySymmetricKey;
DROP CERTIFICATE MyCertificate;
DROP MASTER KEY;



DELETE FROM NhanVien 
WHERE MaNV > 15;

SELECT * FROM NhanVien
SELECT * FROM BangLuong;
SELECT * FROM DuAn;
SELECT * FROM ChucVu;
SELECT * FROM PhongBan;

-- Bước 1: Chuyển database về chế độ SINGLE_USER để tránh bị khóa
USE master;
ALTER DATABASE QuanLyNhanSu SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

-- Bước 2: Xóa tất cả các ràng buộc khóa ngoại trong database
DECLARE @sql NVARCHAR(MAX) = N'';
SELECT @sql += 'ALTER TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME(parent_object_id)) + '.' + QUOTENAME(OBJECT_NAME(parent_object_id)) 
              + ' DROP CONSTRAINT ' + QUOTENAME(name) + ';' + CHAR(13)
FROM sys.foreign_keys;
EXEC sp_executesql @sql;

-- Bước 3: Xóa tất cả các bảng
DECLARE @sql2 NVARCHAR(MAX) = N'';
SELECT @sql2 += 'DROP TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME(object_id)) + '.' + QUOTENAME(name) + ';' + CHAR(13)
FROM sys.tables;
EXEC sp_executesql @sql2;

-- Bước 4: Xóa database QuanLyNhanSu
DROP DATABASE QuanLyNhanSu;

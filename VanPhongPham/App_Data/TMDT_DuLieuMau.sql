
USE TMDT_Project_Database
GO
/*---------------Category's Data Sample-------------------------*/
INSERT INTO [dbo].[Category]([CategoryName],[Description])
VALUES (N'Máy văn phòng',N'danh muc thiet bi van phong')

INSERT INTO [dbo].[Category]([CategoryName],[Description])
VALUES (N'Hộp mực máy in',N'danh muc hop muc may in')

INSERT INTO [dbo].[Category]([CategoryName],[Description])
VALUES (N'Máy in',N'danh muc may in')

INSERT INTO [dbo].[Category]([CategoryName],[Description])
VALUES (N'Máy tính',N'danh muc may tinh')
--*select * from Category 
--delete from Category
GO
/*---------------Sub Category's Data Sample-------------------------*/
--chu y khi insert du lieu bang Category da tao sau do xoa di thi ID cua Category bi thay doi ko bat dau tu 1
INSERT INTO [dbo].[SubCategory]([CategoryId],[SubCategoryName],[Description]) 
VALUES(1,N'Máy photocopy',N'Danh muc con cua May van phong-cac san pham may photocopy')

INSERT INTO [dbo].[SubCategory]([CategoryId],[SubCategoryName],[Description]) 
VALUES(1,N'Máy fax',N'Danh muc con cua May van phong-cac san pham may Fax')

INSERT INTO [dbo].[SubCategory]([CategoryId],[SubCategoryName],[Description]) 
VALUES(2,N'Mực in',N'Danh muc con cua Hop muc may in-cac san pham hop muc may in')


INSERT INTO [dbo].[SubCategory]([CategoryId],[SubCategoryName],[Description]) 
VALUES(2,N'Khay mực in',N'Danh muc con cua Hop muc may in-cac san pham khay muc in')

GO
/*---------------Product's Data Sample-------------------------*/

INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,22110000,10,N'Toshiba',0.05,12,

N'Hãng sản xuất: Toshiba / Kiểu máy: Kiểu đứng / Độ phân giải: 1200x1200dpi / Khổ giấy lớn nhất: A3 /
 Tốc độ copy(bản/phút): 35 / Thời gian copy bản đầu(s): 3.9 / Số bản copy liên tục(bản): 999 /
 Độ phóng to tối đa(%): 400 / Độ thu nhỏ tối đa(%): 25 / Dung lượng khay giấy (tờ): 550 x 2 /
 Dung lượng khay nạp tay (tờ): 100 / Kiểu kết nối: Ethernet, Base-TX/10 Base-T, IEEE 1284, USB 2.0, 
/ Bộ nhớ trong(MB): 128 / Thời gian khởi động(s): 20 / Công suất tiêu thụ: 1.5kW / Trọng lượng(kg): 50 /' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Toshibae-Studio550',1,8080,25500000 ,10,N'Toshiba',0.05,12,

N'Hãng sản xuất: Toshiba / Kiểu máy: Kiểu đứng / Độ phân giải: 600x2400dpi / Khổ giấy lớn nhất: A3 /
 Tốc độ copy(bản/phút): 55 / Thời gian copy bản đầu(s): 3.2 / Số bản copy liên tục(bản): 999 / 
 Độ phóng to tối đa(%): 400 / Độ thu nhỏ tối đa(%): 25 / Dung lượng khay giấy (tờ): 500 x 2 /
 Dung lượng khay nạp tay (tờ): 100 / Kiểu kết nối: Ethernet, Base-TX/10 Base-T, IEEE 1284, USB 2.0, 
/ Bộ nhớ trong(MB): 32 / Thời gian khởi động(s): 160 / Công suất tiêu thụ: 2kW / Trọng lượng(kg): 209 /' 
)


--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Toshibae-STUDIO205L',1,7070,60500000 ,10,N'Toshiba',0.05,12,

N'Hãng sản xuất: TOSHIBA / Kiểu máy: Kiểu đứng / Độ phân giải: 2400 x 600dpi / Khổ giấy lớn nhất: A4 /
 Tốc độ copy(bản/phút): 20 / Thời gian copy bản đầu(s): 4.7 / Số bản copy liên tục(bản): 999 /
 Độ phóng to tối đa(%): 400 / Độ thu nhỏ tối đa(%): 25 / Dung lượng khay giấy (tờ): 550 x 2 /
 Dung lượng khay nạp tay (tờ): 100 / Kiểu kết nối: Ethernet, USB 2.0, Wireless, Bluetooth, /
 Bộ nhớ trong(MB): 1024 / Thời gian khởi động(s): 20 / Công suất tiêu thụ: 1.5kW / Trọng lượng(kg): 56.7 /' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Toshibae-Studio352',1,6060,18207200  ,15,N'Toshiba',0.06,6,

N'Hãng sản xuất: Toshiba / Kiểu máy: Kiểu đứng / Độ phân giải: 1200x600dpi / Khổ giấy lớn nhất: A3 /
 Tốc độ copy(bản/phút): 35 / Thời gian copy bản đầu(s): 3.9 / Số bản copy liên tục(bản): 999 /
 Độ phóng to tối đa(%): 400 / Độ thu nhỏ tối đa(%): 25 / Dung lượng khay giấy (tờ): 550 x 2 /
 Dung lượng khay nạp tay (tờ): 100 / Kiểu kết nối: Ethernet, Base-TX/10 Base-T, USB 2.0, / 
 Bộ nhớ trong(MB): 256 / Thời gian khởi động(s): 20 / Công suất tiêu thụ: 1.5kW / Trọng lượng(kg): 83 /' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'TOSHIBAe-STUDIO350',1,5050,18172000  ,25,N'Toshiba',0.07,12,

N'Hãng sản xuất: Toshiba / Kiểu máy: Kiểu đứng / Độ phân giải: 2400x600dpi / Khổ giấy lớn nhất: A3 /
 Tốc độ copy(bản/phút): 35 / Thời gian copy bản đầu(s): 3.9 / Số bản copy liên tục(bản): 999 /
 Độ phóng to tối đa(%): 400 / Độ thu nhỏ tối đa(%): 25 / Dung lượng khay giấy (tờ): 550 x 2 /
 Dung lượng khay nạp tay (tờ): 100 / Kiểu kết nối: Ethernet, Paralell, Base-TX/10 Base-T, USB 2.0, /
 Bộ nhớ trong(MB): 128 / Thời gian khởi động(s): 20 / Công suất tiêu thụ: 1.5kW / Trọng lượng(kg): 50 /' 
)


--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'CanonPixmaMX-328',1,4040,2650000 ,20,N'Canon',0.04,12,

N'Hãng sản xuất: CANON / Cỡ giấy: A4 / Khay đựng giấy(Tờ): 250tờ / Loại cổng kết nối: USB2.0, /
 Kiểu in: In phun mầu / Độ phân giải khi in: 4800 x 1200dpi / Tốc độ in đen trắng(Tờ/phút): 8tờ /
 Tốc độ in mầu(Tờ/phút): 5tờ / Độ phân giải khi Scan: 4800 x 1200dpi / Chiều sâu Bit màu Scan(Bit): 48 /
 Tốc độ truyền Fax(giây/trang): 19 / Độ phân giải khi Fax: 200 x 200dpi / Tốc độ copy đen trắng(Tờ/phút): 3tờ /
 Tốc độ copy mầu(Tờ/phút): 1tờ / Số bản copy liên tục: 20 Trang / Phụ kiện bán kèm: -, /
 Nguồn điện sử dụng: 220V - 240V(50 / 60Hz), / Công suất tiêu thụ(W): 11 /' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Canon imageCLASS D520',1,3030,5760000,20,N'Canon',0.04,12,

N'Hãng sản xuất: CANON / Cỡ giấy: A4 / Khay đựng giấy(Tờ): 250tờ / Loại cổng kết nối: USB2.0, /
 Kiểu in: In laser / Độ phân giải khi in: 1200 x 600dpi / Tốc độ in đen trắng(Tờ/phút): 25tờ / 
 Tốc độ in mầu(Tờ/phút): - / Độ phân giải khi Scan: 600 x 600dpi / Chiều sâu Bit màu Scan(Bit): 24 /
 Tốc độ truyền Fax(giây/trang): 0 / Độ phân giải khi Fax: - / Tốc độ copy đen trắng(Tờ/phút): 25tờ /
 Tốc độ copy mầu(Tờ/phút): - / Số bản copy liên tục: - / Phụ kiện bán kèm: CD Driver, Sách hướng dẫn, /
 Nguồn điện sử dụng: -, / Công suất tiêu thụ(W): 1220 /' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Canon imageCLASS MF4550d',1,2020,8300000 ,10,N'Canon',0.04,12,

N'Hãng sản xuất: CANON / Cỡ giấy: A4 / Khay đựng giấy(Tờ): 250tờ / Loại cổng kết nối: USB2.0, /
 Kiểu in: In laser / Độ phân giải khi in: 1200 x 600dpi / Tốc độ in đen trắng(Tờ/phút): 25tờ /
 Tốc độ in mầu(Tờ/phút): - / Độ phân giải khi Scan: 600 x 600dpi / Chiều sâu Bit màu Scan(Bit): 24 /
 Tốc độ truyền Fax(giây/trang): 0 / Độ phân giải khi Fax: 203 x 391 dpi / Tốc độ copy đen trắng(Tờ/phút): 25tờ /
 Tốc độ copy mầu(Tờ/phút): - / Số bản copy liên tục: - / Phụ kiện bán kèm: CD Driver, Sách hướng dẫn, /
 Nguồn điện sử dụng: -, / Công suất tiêu thụ(W): 1220 /' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Canon MF D520',1,1010,5245000,10,N'Canon',0.04,12,

N'Hãng sản xuất: CANON / Cỡ giấy: A4 / Khay đựng giấy(Tờ): 250tờ / Loại cổng kết nối: LAN, USB2.0/
 Kiểu in: In laser / Độ phân giải khi in: 600 x 600dpi / Tốc độ in đen trắng(Tờ/phút): 25tờ /
 Tốc độ in mầu(Tờ/phút): - / Độ phân giải khi Scan: - / Chiều sâu Bit màu Scan(Bit): 0 /
 Tốc độ truyền Fax(giây/trang): 0 / Độ phân giải khi Fax: - / Tốc độ copy đen trắng(Tờ/phút): - /
 Tốc độ copy mầu(Tờ/phút): - / Số bản copy liên tục: - / Phụ kiện bán kèm: -,
 CD Driver, Dây nguồn, Sách hướng dẫn, USB Cable/ Nguồn điện sử dụng: 220V (50-60Hz)/ Công suất tiêu thụ(W): 0 /' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Samsung SCX-4623FN',1,910,4950000 ,12,N'Samsung',0.045,10,

N'Hãng sản xuất: SAMSUNG / Cỡ giấy: A4 / Khay đựng giấy(Tờ): 250tờ / Loại cổng kết nối: Ethernet, USB2.0/ 
Kiểu in: In laser / Độ phân giải khi in: 1200 x 1200dpi / Tốc độ in đen trắng(Tờ/phút): 22tờ /
 Tốc độ in mầu(Tờ/phút): - / Độ phân giải khi Scan: 4800 x 4800dpi / Chiều sâu Bit màu Scan(Bit): 0 /
 Tốc độ truyền Fax(giây/trang): 0 / Độ phân giải khi Fax: 300 x 300 dpi / Tốc độ copy đen trắng(Tờ/phút): 22tờ /
 Tốc độ copy mầu(Tờ/phút): - / Số bản copy liên tục: 99 Trang / Phụ kiện bán kèm: -/ Nguồn điện sử dụng: -/
 Công suất tiêu thụ(W): 0 /' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Samsung Laser Printer SCX-4623',1,8810,4500000 ,11,N'Samsung',0.045,12,

N'Hãng sản xuất: SAMSUNG / Cỡ giấy: A4 / Khay đựng giấy(Tờ): 250tờ / Loại cổng kết nối: USB2.0, /
 Kiểu in: In laser / Độ phân giải khi in: 1200 x 1200dpi / Tốc độ in đen trắng(Tờ/phút): 22tờ /
 Tốc độ in mầu(Tờ/phút): - / Độ phân giải khi Scan: 4800 x 4800dpi / Chiều sâu Bit màu Scan(Bit): 0 /
 Tốc độ truyền Fax(giây/trang): 0 / Độ phân giải khi Fax: 300 x 300 dpi / Tốc độ copy đen trắng(Tờ/phút): 22tờ /
 Tốc độ copy mầu(Tờ/phút): - / Số bản copy liên tục: 99 Trang / Phụ kiện bán kèm: CD Driver, Dây nguồn, 
 Sách hướng dẫn, USB Cable, / Nguồn điện sử dụng: -, / Công suất tiêu thụ(W): 0 /' 
)


-- Cac san pham thuoc Category MayVan Phong->May Fax(SubCategory)
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Panasonic KX-FP701',2,8430,2100000 ,11,N'Panasonic',0.055,12,

N'Hãng sản xuất: PANASONIC / Tính năng: Điện thoại, / Cổng giao tiếp: -, / Kiểu máy scan: - /
 Điện thoại con đi kèm: 1cái / Độ phân giải dọc(dpi): 0 / Độ phân giải ngang(dpi): 0 /
 Độ phân giải khi fax(dpi): 0 / Độ phóng đại tối đa(%): 0 / Độ thu nhỏ tối đa(%): 0 /
 Tốc độ in(trang/phút): 4 / Nén dữ liệu(số trang): 0 / Trọng lượng(g): 4200 /' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'PANASONIC KX-FL422CX',2,3240,2900000 ,10,N'Panasonic',0.055,12,

N'Hãng sản xuất: PANASONIC / Tính năng: Copy, In, Điện thoại, Màn hình tinh thể lỏng, Scan, Quay số nhanh, /
 Cổng giao tiếp: USB, / Kiểu máy scan: Scan bằng máy / Điện thoại con đi kèm: 1cái / Độ phân giải dọc(dpi): 0 /
 Độ phân giải ngang(dpi): 0 / Độ phân giải khi fax(dpi): 600 / Độ phóng đại tối đa(%): 200 /
 Độ thu nhỏ tối đa(%): 50 / Tốc độ in(trang/phút): 10 / Nén dữ liệu(số trang): 0 / Trọng lượng(g): 7400 /' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Panasonic KX-FLB812',2,3660,8635000,10,N'Panasonic',0.055,12,

N'Hãng sản xuất: PANASONIC / Tính năng: Copy, In, Fax màu, Kết nối internet, Scan, / Cổng giao tiếp: Paralell, USB, /
 Kiểu máy scan: Scan bằng máy / Điện thoại con đi kèm: Không có / Độ phân giải dọc(dpi): 600 /
 Độ phân giải ngang(dpi): 600 / Độ phân giải khi fax(dpi): 600 / Độ phóng đại tối đa(%): 0 /
 Độ thu nhỏ tối đa(%): 0 / Tốc độ in(trang/phút): 16 / Nén dữ liệu(số trang): 250 / Trọng lượng(g): 0 /' 
)
--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Panasonic KX-FL612',2,6560,4900000,10,N'Panasonic',0.055,12,

N'Hãng sản xuất: PANASONIC / Tính năng: Copy, In, Scan, / Cổng giao tiếp: -, / Kiểu máy scan: - /
 Điện thoại con đi kèm: 1cái / Độ phân giải dọc(dpi): 600 / Độ phân giải ngang(dpi): 600 /
 Độ phân giải khi fax(dpi): 600 / Độ phóng đại tối đa(%): 200 / Độ thu nhỏ tối đa(%): 50 /
 Tốc độ in(trang/phút): 4 / Nén dữ liệu(số trang): 170 / Trọng lượng(g): 0 /' 
)

-- Cac san pham thuoc Category Hộp mực máy in->Mực in(SubCategory)
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'HP LaserJet CE505A Black Print Cartridge',3,56556,550000,10,N'HP',0.035,12,

N'Hãng sản xuất: HP / Loại mực: Laser / Màu mực: Đen (Black), / Dùng cho máy in của hãng: HP, / Xuất xứ: - /' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Mực in Laser HP CE278A-78A',3,5326,460000,10,N'HP',0.035,12,

N'Hãng sản xuất: HP / Loại mực: Laser / Màu mực: Đen (Black), / Dùng cho máy in của hãng: HP, / Xuất xứ: - /' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'HP 2014/2015/1320/1160 - Canon 3300',3,8985,700000,10,N'HP',0.035,12,

N'Hãng sản xuất: HP / Loại mực: - / Màu mực: Đen (Black), Xanh (Cyan), Đỏ (Magenta), Vàng (Yellow), / Dùng cho máy in của hãng: HP, Canon, / Xuất xứ: Vietnam /' 
)

-- Cac san pham thuoc Category Hộp mực máy in->Khay Mực in(SubCategory)

INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Toner Cartridge for HP 5200',4,12132,1890000 ,10,N'HP',0.025,12,N'Hãng sản xuất: HP / Dùng cho loại máy in: HP /')

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Cartridge GM-12A',4,12132,720000 ,10,N'HP-GIA MINH',0.025,12,N'Hãng sản xuất: GIA MINH / Dùng cho loại máy in: HP /')

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Cartridge GM-35A',4,5454,730000 ,10,N'HP-GIA MINH',0.025,12,N'Hãng sản xuất: GIA MINH / Dùng cho loại máy in: HP /')

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Price,Quantity,MadeBy,VatTax,Warranty,Description)

VALUES(N'Cartridge GM-92A',4,5454,740000 ,10,N'HP-GIA MINH',0.025,12,N'Hãng sản xuất: GIA MINH / Dùng cho loại máy in: HP /')
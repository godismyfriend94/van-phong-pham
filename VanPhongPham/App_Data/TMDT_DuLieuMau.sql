
USE TMDT_Project_Database
GO
/*---------------Category's Data Sample-------------------------*/
INSERT INTO [dbo].[Category]([CategoryName],CategoryImage,[Description])
VALUES (N'Máy văn phòng','Canon ImageCLASS MF4350D.png',N'danh muc thiet bi van phong - danh muc thiet bi van phong - danh muc thiet bi van phong - danh muc thiet bi van phong - danh muc thiet bi van phong - danh muc thiet bi van phong - danh muc thiet bi van phong - danh muc thiet bi van phong<br/><br/><b> Công Ty TNHH Kỹ Thuật Và Phát Triển Công Nghệ Hà Nội <br/>
"Uy tín, Chất lượng, Giá cả, Trình độ kỹ thuật là thế mạnh của Công ty chúng tôi"<b/>')

INSERT INTO [dbo].[Category]([CategoryName],CategoryImage,[Description])
VALUES (N'Dịch vụ','Canon ImageCLASS MF4350D.png',N'danh muc thiet bi van phong - danh muc thiet bi van phong - danh muc thiet bi van phong - danh muc thiet bi van phong - danh muc thiet bi van phong - danh muc thiet bi van phong - danh muc thiet bi van phong - danh muc thiet bi van phong<br/><br/><b> Công Ty TNHH Kỹ Thuật Và Phát Triển Công Nghệ Hà Nội <br/>
"Uy tín, Chất lượng, Giá cả, Trình độ kỹ thuật là thế mạnh của Công ty chúng tôi"<b/>')

INSERT INTO [dbo].[Category]([CategoryName],CategoryImage,[Description])
VALUES (N'Hộp mực máy in','epson-pigment-inktec.jpg',N'danh muc hop muc may in - danh muc hop muc may in - danh muc hop muc may in<br/><br/><b> Công Ty TNHH Kỹ Thuật Và Phát Triển Công Nghệ Hà Nội <br/>
"Uy tín, Chất lượng, Giá cả, Trình độ kỹ thuật là thế mạnh của Công ty chúng tôi"<b/>')

INSERT INTO [dbo].[Category]([CategoryName],CategoryImage,[Description])
VALUES (N'Máy in','Canon ImageCLASS MF4350D.png',N'danh muc may in <br/><br/><b> Công Ty TNHH Kỹ Thuật Và Phát Triển Công Nghệ Hà Nội <br/>
"Uy tín, Chất lượng, Giá cả, Trình độ kỹ thuật là thế mạnh của Công ty chúng tôi"<b/>')

INSERT INTO [dbo].[Category]([CategoryName],CategoryImage,[Description])
VALUES (N'Máy tính','gur1323833816.jpg',N'danh muc may tinh <br/><br/><b> Công Ty TNHH Kỹ Thuật Và Phát Triển Công Nghệ Hà Nội <br/>
"Uy tín, Chất lượng, Giá cả, Trình độ kỹ thuật là thế mạnh của Công ty chúng tôi"<b/>')
--*select * from Category 
--delete from Category where CategoryId = 5
GO
/*---------------Sub Category's Data Sample-------------------------*/
--chu y khi insert du lieu bang Category da tao sau do xoa di thi ID cua Category bi thay doi ko bat dau tu 1
INSERT INTO [dbo].[SubCategory]([CategoryId],[SubCategoryName],SubCategoryImage,[Description]) 
VALUES(1,N'Máy photocopy','Canon ImageCLASS MF4350D.png',N'Danh muc con cua May van phong-cac san pham may photocopy')

INSERT INTO [dbo].[SubCategory]([CategoryId],[SubCategoryName],SubCategoryImage,[Description]) 
VALUES(1,N'Máy fax','epson-pigment-inktec.jpg',N'Danh muc con cua May van phong-cac san pham may Fax')

INSERT INTO [dbo].[SubCategory]([CategoryId],[SubCategoryName],SubCategoryImage,[Description]) 
VALUES(2,N'Mực in','gur1323833816.jpg',N'Danh muc con cua Hop muc may in-cac san pham hop muc may in')

INSERT INTO [dbo].[SubCategory]([CategoryId],[SubCategoryName],SubCategoryImage,[Description]) 
VALUES(2,N'Khay mực in','epson-pigment-inktec.jpg',N'Danh muc con cua Hop muc may in-cac san pham khay muc in')

GO
/*---------------Product's Data Sample-------------------------*/

INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshibae-Studio550.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)


--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshibae-Studio550.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)
--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshibae-Studio550.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshibae-Studio550.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'feature',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9191,'Toshibae-Studio550.png',22110000,10,N'Toshiba',0.05,12,'promotion',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9111,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'promotion',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)


-- Cac san pham thuoc Category MayVan Phong->May Fax(SubCategory)
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9044,'Toshibae-Studio550.png',22110000,10,N'Toshiba',0.05,12,'daily',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,0001,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,0002,'Toshibae-Studio550.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)
--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,0003,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

-- Cac san pham thuoc Category Hộp mực máy in->Mực in(SubCategory)
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,0004,'Toshibae-Studio550.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,0005,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,0007,'Toshibae-Studio550.png',22110000,10,N'Toshiba',0.05,12,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

-- Cac san pham thuoc Category Hộp mực máy in->Khay Mực in(SubCategory)

INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,0001,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'feature',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>')

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 451',1,0090,'Toshibae-Studio550.png',221100009,18,N'Toshiba',0.058,11,'new',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>')

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 453',1,0111,'Toshiba e-Studio 450.png',22111111,10,N'Toshiba',0.105,2,'daily',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>')

--
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 455',1,1111,'Toshiba e-Studio 450.png',11111111,10,N'Toshiba',0.05,12,'daily',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>')

INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'slide',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)
INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'slide',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'slide',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'slide',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)

INSERT INTO [dbo].[Product]
(ProductName,SubCategoryId,ViewQuantity,Thumbnails,Price,Quantity,MadeBy,VatTax,Warranty,ViewOption,Description)
-- Cac san pham thuoc subcategory MayVanPhong->MayPhotocopy
VALUES(N'Toshiba e-Studio 450',1,9090,'Toshiba e-Studio 450.png',22110000,10,N'Toshiba',0.05,12,'slide',

N'<table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>' 
)
/*---------------ProductImage Sample-------------------------*/

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(1,N'Toshiba e-Studio 450.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(1,N'oshibae-STUDIO205L.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(1,N'CanonMFD520.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(2,N'Toshibae-Studio550.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(2,N'oshibae-STUDIO205L.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(2,N'CanonMFD520.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(3,N'Toshibae-STUDIO205L.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(3,N'Toshibae-Studio550.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(3,N'CanonMFD520.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(4,N'Toshibae-Studio352.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(4,N'CanonMFD520.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(4,N'Toshibae-Studio550.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(5,N'TOSHIBAe-STUDIO350.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(5,N'Toshibae-Studio550.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(5,N'CanonMFD520.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(6,N'CanonPixmaMX-328.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(6,N'Toshibae-Studio550.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(6,N'CanonMFD520.png',3)


INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(7,N'CanonMFD520.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(7,N'CanonimageCLASSD520.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(7,N'Toshibae-Studio550.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(8,N'CanonMFD520.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(8,N'CanonimageCLASSD520.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(8,N'Toshibae-Studio550.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(9,N'SamsungLaserPrinterSCX-4623F.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(9,N'CanonMFD520.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(9,N'Toshibae-Studio550.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(10,N'CanonMFD520.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(10,N'SamsungSCX-4623FN.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(10,N'Toshibae-Studio550.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(11,N'CanonMFD520.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(11,N'SamsungLaserPrinterSCX-4623F.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(11,N'Toshibae-Studio550.png',3)


INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(12,N'PanasonicKX-FP701.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(12,N'CartridgeGM- 92A.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(12,N'Toshibae-Studio550.png',3)


INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(13,N'PANASONICKX-FL422CX.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(13,N'CartridgeGM- 92A.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(13,N'Toshibae-Studio550.png',3)


INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(14,N'PanasonicKX-FLB812.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(14,N'CartridgeGM- 92A.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(14,N'Toshibae-Studio550.png',3)


INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(15,N'PanasonicKX-FL612.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(15,N'CartridgeGM- 92A.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(15,N'Toshibae-Studio550.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(16,N'HPLaserJetCE505A.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(16,N'CartridgeGM- 92A.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(16,N'Toshibae-Studio550.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(17,N'LaserHPCE278A-78A.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(17,N'CartridgeGM- 92A.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(17,N'Toshibae-Studio550.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(18,N'CartridgeGM- 92A.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(18,N'Canon3300.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(18,N'Toshibae-Studio550.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(19,N'TonerCartridgeHP5200.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(19,N'CartridgeGM- 92A.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(19,N'Toshibae-Studio550.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(20,N'CartridgeGM-12A.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(20,N'TonerCartridgeHP5200.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(20,N'Toshibae-Studio550.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(21,N'CartridgeGM-35A.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(21,N'CartridgeGM-35A.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(21,N'Toshibae-Studio550.png',3)

INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(22,N'TonerCartridgeHP5200.png',1)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(22,N'Toshibae-Studio550.png',2)
INSERT INTO [dbo].[ProductImage](ProductId,ImageUrl,ImageIndex)VALUES(22,N'CartridgeGM- 92A.png',3)

--------------------------------------------------------------------------------------------------------
INSERT INTO [dbo].[Advertise](AdvertiseTyle,AdvertiseName,AdvertiseLink,ImageURL,AdvertisePostion)
VALUES('slide','Adverties left','http://vatgia.com/hanoitechpro','HappyNewYearLeft.png', 1)

INSERT INTO [dbo].[Advertise](AdvertiseTyle,AdvertiseName,AdvertiseLink,ImageURL,AdvertisePostion)
VALUES('slide','Adverties righ','http://vatgia.com/hanoitechpro','HappyNewYearRigh.png', 2)

INSERT INTO [dbo].[Advertise](AdvertiseTyle,AdvertiseName,AdvertiseLink,ImageURL,AdvertisePostion)
VALUES('static','Adverties static left','http://vatgia.com/hanoitechpro','bann2.jpg', 1)

INSERT INTO [dbo].[Advertise](AdvertiseTyle,AdvertiseName,AdvertiseLink,ImageURL,AdvertisePostion)
VALUES('static','Adverties static righ','http://vatgia.com/hanoitechpro','bann1.jpg', 2)
---------------------------------------------------------------------------

INSERT INTO [dbo].[FAQs]([Question],[Answer],[FaqIndex])
VALUES(N'Sửa chữa, đổ mực máy in, máy fax, máy photocopy, máy tính, máy văn phòng tại nhà, 
tại cơ quan Điện thoại: 04-66732220 / Hotline: 0913583121 - 80.000 VNĐ',N'   
 Sửa chữa, đổ mực máy in, máy fax, máy photocopy, máy tính, máy văn phòng tại nhà, 
tại cơ quan Điện thoại: 04-66732220 / Hotline: 0913583121 - 80.000 VNĐ',1)

INSERT INTO [dbo].[FAQs]([Question],[Answer],[FaqIndex])
VALUES(N'Sửa chữa, đổ mực máy in, máy fax, máy photocopy, máy tính, máy văn phòng tại nhà, 
tại cơ quan Điện thoại: 04-66732220 / Hotline: 0913583121 - 81.000 VNĐ',N'   
 Sửa chữa, đổ mực máy in, máy fax, máy photocopy, máy tính, máy văn phòng tại nhà, 
tại cơ quan Điện thoại: 04-66732220 / Hotline: 0913583121 - 80.000 VNĐ',2)

INSERT INTO [dbo].[FAQs]([Question],[Answer],[FaqIndex])
VALUES(N'Sửa chữa, đổ mực máy in, máy fax, máy photocopy, máy tính, máy văn phòng tại nhà, 
tại cơ quan Điện thoại: 04-66732220 / Hotline: 0913583121 - 82.000 VNĐ',N'   
 Sửa chữa, đổ mực máy in, máy fax, máy photocopy, máy tính, máy văn phòng tại nhà, 
tại cơ quan Điện thoại: 04-66732220 / Hotline: 0913583121 - 80.000 VNĐ',3)

INSERT INTO [dbo].[Support]([SupportName],[SupportLink],[SupportImage])
VALUES(N'Trợ giúp 1','ymsgr:sendIM?congvinh_sor','http://presence.msg.yahoo.com/online?u=congvinh_sor&m=g&t=14')

INSERT INTO [dbo].[Support]([SupportName],[SupportLink],[SupportImage])
VALUES(N'Trợ giúp 2','ymsgr:sendIM?nang_am_tinhanh16','http://presence.msg.yahoo.com/online?u=nang_am_tinhanh16&m=g&t=14')

INSERT INTO [dbo].[Support]([SupportName],[SupportLink],[SupportImage])
VALUES(N'Trợ giúp 3','ymsgr:sendIM?anhnq90','http://presence.msg.yahoo.com/online?u=anhnq90&m=g&t=14')

INSERT INTO [dbo].[Supplier]([SupplierName],[SupplierLink])
VALUES(N'Canon','http://www.canon.com.vn/home')
INSERT INTO [dbo].[Supplier]([SupplierName],[SupplierLink])
VALUES(N'Toshiba','http://www.toshiba.com.vn/')
INSERT INTO [dbo].[Supplier]([SupplierName],[SupplierLink])
VALUES(N'Epson','http://www.epson.com.vn')
INSERT INTO [dbo].[Supplier]([SupplierName],[SupplierLink])
VALUES(N'Panasonic','http://shop.panasonic.com/')
INSERT INTO [dbo].[Supplier]([SupplierName],[SupplierLink])
VALUES(N'HP','http://www.hp.com/')

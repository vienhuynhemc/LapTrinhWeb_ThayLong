package worksWithDatabase.discountCode;

import beans.BeansConfiguration;
import beans.DateTime;
import beans.discountCode.DiscountCode;
import beans.manufacturer.Manufacturer;
import connectionDatabase.DataSource;
import model.discountCode.DiscountCodeModel;
import worksWithDatabase.manufacturerInformation.ManufacturerInformationDataSource;
import worksWithDatabase.manufacturerInformation.ManufacturerInformationWorksWithDatabase;
import worksWithDatabase.productDetailInformation.ProductDetailInformationDataSource;
import worksWithDatabase.productDetailInformation.ProductDetailInformationWorksWithDatabase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DiscountCodeWorksWithDatabase {

    //  Constructor rỗng không có gì hết
    public DiscountCodeWorksWithDatabase() {
    }

    //  Phương thức lấy list mã giảm giá ban đầu, lúc khởi tạo trang
    public List<DiscountCode> getListDiscountCodeFirst(int linesPerPage) {

        //  Khởi tạo list result
        List<DiscountCode> resultList = new ArrayList<DiscountCode>();

        //  Mượn một connection
        Connection connection = DataSource.getInstance().getConnection();

        try {

            //  Taọ 1 preparedStatement
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM ma_giam_gia WHERE ton_tai = ? ORDER BY ngay_tao DESC LIMIT 0," + linesPerPage + ";");

            //  set giá trị cho preparedsstatement 0 là tồn tại
            preparedStatement.setInt(1, 0);

            //  Lấy danh sách tương ứng, ở đây là ban đầu nên lấy linesPerPage hãng sản xuất đầu tiên, sắp xếp theo ngày tạo DESC
            ResultSet resultSet = preparedStatement.executeQuery();

            //  Duyệt qua resultset
            while (resultSet.next()) {

                //  Lấy các thông tin hiện có của bản hãng sản xuất
                String id = resultSet.getString("ma_mgg");
                String name = resultSet.getString("ma_nhap");
                String type = DiscountCodeModel.getInstance().getType(resultSet.getInt("kieu_mgg"));
                int value = resultSet.getInt("gia_tri");
                int numberOfUse = resultSet.getInt("so_lan_su_dung");
                int maximunNumberOfUse = resultSet.getInt("so_lan_su_dung_toi_da");
                int remainNumberOfUse = maximunNumberOfUse - numberOfUse;
                int status = resultSet.getInt("trang_thai_su_dung");
                int exists = resultSet.getInt("ton_tai");
                DateTime dateCreated = new DateTime(resultSet.getString("ngay_tao"));
                DateTime deadline = new DateTime(resultSet.getString("han_su_dung"));

                //  Sau khi có đủ thông tin ta thêm hãng sản xuất này vào list kết quả
                resultList.add(new DiscountCode(id, name, type, value, numberOfUse, maximunNumberOfUse, remainNumberOfUse, status, exists, dateCreated, deadline));

            }

            // Đóng các kết nối
            resultSet.close();
            preparedStatement.close();

        } catch (SQLException throwables) {

            throwables.printStackTrace();

        }

        //  Trả connection
        DataSource.getInstance().releaseConnection(connection);

        //  Trả về kết quả
        return resultList;

    }

    //  Phương thức lấy số mgg tối đa của trang quản lý mgg không có điều kiện gì cả
    public int getMaximunDiscountCode() {

        //  Mượn connection
        Connection connection = DataSource.getInstance().getConnection();

        //  Khai báo kết quả
        int result = 0;

        try {

            //  Taọ 1 preparedStatement
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT COUNT(ma_mgg) AS so_luong FROM ma_giam_gia WHERE ton_tai = ?");

            //  set giá trị cho preparedsstatement 0 là tồn tại
            preparedStatement.setInt(1, 0);

            //  Lấy danh sách tương ứng, ở đây là ban đầu nên lấy linesPerPage hãng sản xuất đầu tiên, sắp xếp theo ngày tạo DESC
            ResultSet resultSet = preparedStatement.executeQuery();

            //  Gán co result
            while (resultSet.next()) {
                result = resultSet.getInt("so_luong");
            }

            //  Đóng các kết nối
            resultSet.close();
            preparedStatement.close();

        } catch (SQLException throwables) {

            throwables.printStackTrace();

        }

        //  Trả connection
        DataSource.getInstance().releaseConnection(connection);

        //  Trả về kết quả
        return result;

    }

    //  Phương thúc cập nhập lại bảng mã giảm giá ngay tại thời điểm gọi
    public void update() {


        //  Mượn connection
        Connection connection = DataSource.getInstance().getConnection();

        //  Khai báo kết quả
        int result = 0;

        try {

            //  Taọ 1 preparedStatement
            PreparedStatement preparedStatement = connection.prepareStatement(" UPDATE ma_giam_gia SET trang_thai_su_dung = ? WHERE han_su_dung <= CURRENT_TIMESTAMP()");

            //  set giá trị cho preparedsstatement 1 là hết hạn nếu như hạn sử dụng vượt qua thời gian hiện tại
            preparedStatement.setInt(1, 1);

            //  Cập nhập
            preparedStatement.executeUpdate();

            //  Đóng các kết nối
            preparedStatement.close();

        } catch (SQLException throwables) {

            throwables.printStackTrace();

        }

        //  Trả connection
        DataSource.getInstance().releaseConnection(connection);

    }

    //  Phương thức lấy list hãng sản xuất từ tất cả điều kiện
    public List<DiscountCode> getListDiscountCodeFromAll(String selectSearchAndSort, String sort, String search, int linesPerPage, int nowPage) {

        //  Hàm lấy ra filter tương ứng trong database
        String filter = null;
        String typeMGG = null;
        switch (selectSearchAndSort) {
            case "dateCreated":
                filter = "ngay_tao";
                break;
            case "id":
                filter = "ma_mgg";
                break;
            case "name":
                filter = "ma_nhap";
                break;
            case "status":
                filter = "trang_thai_su_dung";
                break;
            case "numberOfUse":
                filter = "so_lan_su_dung";
                break;
            case "maximunNumberOfUse":
                filter = "so_lan_su_dung_toi_da";
                break;
            case "remainNumberOfUse":
                filter = "so_lan_su_dung_con_lai";
                break;
            case "deadline":
                filter = "han_su_dung";
                break;
            case "%":
                filter = "value";
                typeMGG = "2";
                break;
            case "VND":
                filter = "value";
                typeMGG = "1";
                break;
            case "MPVC":
                filter = "value";
                typeMGG = "0";
                break;
        }

        //  Khởi tạo list result
        List<DiscountCode> resultList = new ArrayList<DiscountCode>();

        //  Mượn một connection
        Connection connection = DataSource.getInstance().getConnection();

        try {

            //  Tọa limit line
            int limitLine = (nowPage - 1) * BeansConfiguration.LINE_OF_ON_PAGE_QUAN_LY_MGG;
            if (limitLine < 0) limitLine = 0;

            //  Taọ 1 preparedStatement tùy thuộc vào trạng thái ta thiết lập
            PreparedStatement preparedStatement = null;
            if(filter.equals("so_lan_su_dung_con_lai")){
                preparedStatement = connection.prepareStatement("SELECT *,(so_lan_su_dung_toi_da-so_lan_su_dung) AS "+filter+" FROM ma_giam_gia WHERE ton_tai = ? AND (so_lan_su_dung_toi_da-so_lan_su_dung) LIKE ? ORDER BY (so_lan_su_dung_toi_da-so_lan_su_dung) " + sort + " LIMIT " + limitLine + " , " + linesPerPage + ";");
            }else if(filter.equals("value")){
                preparedStatement = connection.prepareStatement("SELECT * FROM ma_giam_gia WHERE ton_tai = ? AND kieu_mgg = "+typeMGG+" AND gia_tri LIKE ? ORDER BY gia_tri " + sort + " LIMIT " + limitLine + " , " + linesPerPage + ";");
            }
            else{
               preparedStatement = connection.prepareStatement("SELECT * FROM ma_giam_gia WHERE ton_tai = ? AND " + filter + " LIKE ? ORDER BY " + filter + " " + sort + " LIMIT " + limitLine + " , " + linesPerPage + ";");
            }

            //  set giá trị cho preparedsstatement 0 là tồn tại
            preparedStatement.setInt(1, 0);
            preparedStatement.setString(2, "%" + search + "%");

            //  Lấy danh sách tương ứng
            ResultSet resultSet = preparedStatement.executeQuery();

            //  Duyệt qua resultset
            while (resultSet.next()) {

                //  Lấy các thông tin hiện có của bản hãng sản xuất
                String id = resultSet.getString("ma_mgg");
                String name = resultSet.getString("ma_nhap");
                String type = DiscountCodeModel.getInstance().getType(resultSet.getInt("kieu_mgg"));
                int value = resultSet.getInt("gia_tri");
                int numberOfUse = resultSet.getInt("so_lan_su_dung");
                int maximunNumberOfUse = resultSet.getInt("so_lan_su_dung_toi_da");
                int remainNumberOfUse = maximunNumberOfUse - numberOfUse;
                int status = resultSet.getInt("trang_thai_su_dung");
                int exists = resultSet.getInt("ton_tai");
                DateTime dateCreated = new DateTime(resultSet.getString("ngay_tao"));
                DateTime deadline = new DateTime(resultSet.getString("han_su_dung"));

                //  Sau khi có đủ thông tin ta thêm hãng sản xuất này vào list kết quả
                resultList.add(new DiscountCode(id, name, type, value, numberOfUse, maximunNumberOfUse, remainNumberOfUse, status, exists, dateCreated, deadline));

            }

            // Đóng các kết nối
            resultSet.close();
            preparedStatement.close();

        } catch (SQLException throwables) {

            throwables.printStackTrace();

        }

        //  Trả connection
        DataSource.getInstance().releaseConnection(connection);

        //  Trả về kết quả
        return resultList;

    }

    //  Hàm này trả về số lượng tối đa mã giảm giá
    public int getMaximunDiscountCodeFromAll(String selectSearchAndSort,  String search) {

        //  Hàm lấy ra filter tương ứng trong database
        String filter = null;
        String typeMGG = null;
        switch (selectSearchAndSort) {
            case "dateCreated":
                filter = "ngay_tao";
                break;
            case "id":
                filter = "ma_mgg";
                break;
            case "name":
                filter = "ma_nhap";
                break;
            case "status":
                filter = "trang_thai_su_dung";
                break;
            case "numberOfUse":
                filter = "so_lan_su_dung";
                break;
            case "maximunNumberOfUse":
                filter = "so_lan_su_dung_toi_da";
                break;
            case "remainNumberOfUse":
                filter = "so_lan_su_dung_con_lai";
                break;
            case "deadline":
                filter = "han_su_dung";
                break;
            case "%":
                filter = "value";
                typeMGG = "2";
                break;
            case "VND":
                filter = "value";
                typeMGG = "1";
                break;
            case "MPVC":
                filter = "value";
                typeMGG = "0";
                break;
        }


        //  Khởi tạo result
        int result = 0;

        //  Mượn một connection
        Connection connection = DataSource.getInstance().getConnection();

        try {

            //  Taọ 1 preparedStatement tùy thuộc vào trạng thái ta thiết lập
            PreparedStatement preparedStatement = null;
            if(filter.equals("so_lan_su_dung_con_lai")){
                preparedStatement = connection.prepareStatement("SELECT COUNT(t.so_luong) as so_luong FROM (SELECT (so_lan_su_dung_toi_da-so_lan_su_dung) AS so_luong FROM ma_giam_gia WHERE ton_tai = ?) t WHERE t.so_luong LIKE ?");
            }else if(filter.equals("value")){
                preparedStatement = connection.prepareStatement("SELECT COUNT(ma_mgg) as so_luong FROM ma_giam_gia WHERE ton_tai = ? AND kieu_mgg = "+typeMGG+" AND gia_tri LIKE ? ");
            }
            else{
                preparedStatement = connection.prepareStatement("SELECT COUNT(ma_mgg) as so_luong FROM ma_giam_gia WHERE ton_tai = ? AND " + filter + " LIKE ? ");
            }

            //  set giá trị cho preparedsstatement 0 là tồn tại
            preparedStatement.setInt(1, 0);
            preparedStatement.setString(2, "%" + search + "%");

            //  Lấy danh sách tương ứng
            ResultSet resultSet = preparedStatement.executeQuery();

            //  Duyệt qua resultset
            while (resultSet.next()) {
                result = resultSet.getInt("so_luong");
            }

            // Đóng các kết nối
            resultSet.close();
            preparedStatement.close();

        } catch (SQLException throwables) {

            throwables.printStackTrace();

        }

        //  Trả connection
        DataSource.getInstance().releaseConnection(connection);

        //  Trả về kết quả
        return result;
    }

}

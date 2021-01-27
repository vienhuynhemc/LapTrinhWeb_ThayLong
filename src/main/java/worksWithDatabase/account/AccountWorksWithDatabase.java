package worksWithDatabase.account;

import beans.DateTime;
import beans.emailNotification.EmailNotification;
import beans.jbCrypt.BCrypt;
import beans.loginAdmin.AccountStaffAdmin;
import beans.ringNotification.RingNotification;
import connectionDatabase.DataSource;
import worksWithDatabase.staff.StaffDataSource;
import worksWithDatabase.staff.StaffWorksWithDatabase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class AccountWorksWithDatabase {

    //  Constructor rỗng không có gì hết
    public AccountWorksWithDatabase() {
    }

    //  Nhận vào tài khoản, kiểm tra thử tài khoản có tồn tại hay không, trả về string là có tồn tại
    public String isValidAccount(String tai_khoan) {

        Connection connection = DataSource.getInstance().getConnection();

        String result = null;

        try {

            PreparedStatement preparedStatement = connection.prepareStatement("SELECT ma_tai_khoan,kieu_tai_khoan FROM tai_khoan WHERE tai_khoan = ?");
            preparedStatement.setString(1, tai_khoan);

            ResultSet resultset = preparedStatement.executeQuery();
            if (resultset.next()) {
                int kieu_tai_khoan = resultset.getInt("kieu_tai_khoan");
                if (kieu_tai_khoan == 0) {
                    result = resultset.getString("ma_tai_khoan");
                }
            } else {
                result = null;
            }

            resultset.close();
            preparedStatement.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);

        return result;

    }

    //  Phương thức nhận vào một tài khoản và mật khẩu, xem thử mật khẩu nhận vào có đúng của tài khoản đó hay không
    public boolean isValidPassword(String tai_khoan,String mat_khau){

        Connection connection = DataSource.getInstance().getConnection();

        boolean result = false;

        try {

            PreparedStatement preparedStatement = connection.prepareStatement("SELECT mat_khau FROM tai_khoan WHERE tai_khoan = ? ");
            preparedStatement.setString(1,tai_khoan);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            String password = resultSet.getString("mat_khau");
            result = BCrypt.checkpw(mat_khau,password);
            resultSet.close();
            preparedStatement.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);

        return result;

    }

    //  Phương thức nhận vào một mã tài khoản, trả về 1 accountStaffAdmin
    public AccountStaffAdmin getAccountStaffAdmin(String ma_tai_khoan){

        //  Tạo 1 AccountStaffAdmin
        AccountStaffAdmin accountStaffAdmin = new AccountStaffAdmin();

        //  Lấy đầy đủ thông tin của account với ma_tai_khoan này từ bảng tai_khoan
        Connection connection = DataSource.getInstance().getConnection();

        try {

            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM tai_khoan WHERE ma_tai_khoan = ?");
            preparedStatement.setString(1, ma_tai_khoan);

            ResultSet resultset = preparedStatement.executeQuery();
            resultset.next();

            accountStaffAdmin.setId(ma_tai_khoan);
            accountStaffAdmin.setAccount(resultset.getString("tai_khoan"));
            accountStaffAdmin.setAvatar(resultset.getString("hinh_dai_dien"));
            accountStaffAdmin.setAvatarLink(resultset.getString("link_hinh_dai_dien"));
            accountStaffAdmin.setDateCreated(new DateTime(resultset.getString("ngay_tao")));
            accountStaffAdmin.setDisplayName(resultset.getString("ten_hien_thi"));
            accountStaffAdmin.setFullName(resultset.getString("ten_day_du"));
            accountStaffAdmin.setEmail(resultset.getString("email"));
            accountStaffAdmin.setPhoneNumber(resultset.getString("so_dien_thoai"));
            accountStaffAdmin.setPassword(resultset.getString("mat_khau_string"));

            resultset.close();
            preparedStatement.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);

        //  Điền đủ thông tin với bảng nhan_vien
        StaffWorksWithDatabase staffWorksWithDatabase  = StaffDataSource.getInstance().getStaffWorksWithDatabase();
        staffWorksWithDatabase.fillInformationAccountStaffAdmin(accountStaffAdmin,ma_tai_khoan);
        StaffDataSource.getInstance().releaseStaffWorksWithDatabase(staffWorksWithDatabase);

        //  Trả về kết quả
        return accountStaffAdmin;

    }

    //  Nhận vào email, kiểm tra thử tài khoản có tồn tại hay không với email này, trả về string là có tồn tại
    public String isValidEmail(String email) {

        Connection connection = DataSource.getInstance().getConnection();

        String result = null;

        try {

            PreparedStatement preparedStatement = connection.prepareStatement("SELECT ma_tai_khoan,kieu_tai_khoan FROM tai_khoan WHERE email = ?");
            preparedStatement.setString(1, email);

            ResultSet resultset = preparedStatement.executeQuery();
            if (resultset.next()) {
                int kieu_tai_khoan = resultset.getInt("kieu_tai_khoan");
                if (kieu_tai_khoan == 0) {
                    result = resultset.getString("ma_tai_khoan");
                }
            } else {
                result = null;
            }

            resultset.close();
            preparedStatement.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);

        return result;

    }

    //  Phương thức nhận vào mã tài khoản, mã verify và hạn sử dụng của nó, đưa vào csdl
    public void updateVerifyCodeAndTimeOut(String ma_tai_khoan,String ma_quen_mat_khau,String han_su_dung_ma_qmk){

        Connection connection = DataSource.getInstance().getConnection();

        try {

            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE tai_khoan SET ma_quen_mat_khau = ? WHERE ma_tai_khoan = ?");
            preparedStatement.setString(1,ma_quen_mat_khau);
            preparedStatement.setString(2,ma_tai_khoan);
            preparedStatement.executeUpdate();

             preparedStatement = connection.prepareStatement("UPDATE tai_khoan SET  han_su_dung_ma_qmk = ? WHERE ma_tai_khoan = ?");
            preparedStatement.setString(1,han_su_dung_ma_qmk);
            preparedStatement.setString(2,ma_tai_khoan);
            preparedStatement.executeUpdate();;

            preparedStatement.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);

    }

    //  Phương thứuc nhận vào 1 email và 1 mật khẩu, cập nhập lại mật khẩu của tài khoản có email này
    public void updatePasswordFromEmail(String mat_khau,String email){

        Connection connection = DataSource.getInstance().getConnection();

        try {

            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE tai_khoan SET mat_khau = ? WHERE email = ?");
            preparedStatement.setString(1,BCrypt.hashpw(mat_khau,BCrypt.gensalt()));
            preparedStatement.setString(2,email);
            preparedStatement.executeUpdate();
           preparedStatement = connection.prepareStatement("UPDATE tai_khoan SET mat_khau_string = ? WHERE email = ?");
            preparedStatement.setString(1,mat_khau);
            preparedStatement.setString(2,email);
            preparedStatement.executeUpdate();

            preparedStatement.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);

    }

    //  Phương thức được dùng ở EmailNotification works with database, nhiệm vụ lấy tên là link hình đại diện
    public void fillInformationEmailNotifications(List<EmailNotification> emailNotificationList){
        Connection connection = DataSource.getInstance().getConnection();

        try {

            PreparedStatement preparedStatement = connection.prepareStatement("SELECT link_hinh_dai_dien,ten_hien_thi FROM tai_khoan WHERE ma_tai_khoan = ?");
            for(EmailNotification emailNotification : emailNotificationList){
                preparedStatement.setString(1,emailNotification.getStaffId());
                ResultSet resultSet = preparedStatement.executeQuery();
                resultSet.next();
                emailNotification.setNameStaff(resultSet.getString("ten_hien_thi"));
                emailNotification.setLinkImgStaff(resultSet.getString("link_hinh_dai_dien"));
                resultSet.close();
            }
            preparedStatement.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);
    }

    //  Phương thức nhận vô list Ring notification , cập nhập tên hiển thị và hình đại diện cho nó
    public void fillNameAndLinkAvatarForListRingNotification(List<RingNotification> ringNotifications){

        Connection connection = DataSource.getInstance().getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT link_hinh_dai_dien,ten_hien_thi FROM tai_khoan WHERE ma_tai_khoan = ?");
            for(RingNotification ringNotification : ringNotifications){
                preparedStatement.setString(1,ringNotification.getIdSender());
                ResultSet resultSet = preparedStatement.executeQuery();
                resultSet.next();
                ringNotification.setNameSender(resultSet.getString("ten_hien_thi"));
                ringNotification.setLinkImgSender(resultSet.getString("link_hinh_dai_dien"));
                resultSet.close();
            }
            preparedStatement.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);

    }

    //  Phương thức dùng ở thông tin tài khoản admin , nhận vô mã nhân viên và link avatar mới, cập nhật lại
    public void updateAvatarLinkById(String ma_tai_khoan,String link_hinh_dai_dien){
        Connection connection = DataSource.getInstance().getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE tai_khoan SET link_hinh_dai_dien = ? WHERE ma_tai_khoan = ?");
            preparedStatement.setString(1,link_hinh_dai_dien);
            preparedStatement.setString(2,ma_tai_khoan);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);
    }

    //  Phương thức nhận vô mã tài khoản, mật khẩu cập nhật lại
    public void updatePassword(String ma_tai_khoan,String mat_khau){
        Connection connection = DataSource.getInstance().getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE tai_khoan SET mat_khau = ? WHERE ma_tai_khoan = ?");
            preparedStatement.setString(1,BCrypt.hashpw(mat_khau,BCrypt.gensalt()));
            preparedStatement.setString(2,ma_tai_khoan);
            preparedStatement.executeUpdate();
            preparedStatement = connection.prepareStatement("UPDATE tai_khoan SET mat_khau_string = ? WHERE ma_tai_khoan = ?");
            preparedStatement.setString(1,mat_khau);
            preparedStatement.setString(2,ma_tai_khoan);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);
    }

    //  Phương thức nhận vô mã tài khoản. số điện thoại cập nhật lại
    public void updatePhoneNumber(String ma_tai_khoan,String so_dien_thoai){
        Connection connection = DataSource.getInstance().getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE tai_khoan SET so_dien_thoai = ? WHERE ma_tai_khoan = ?");
            preparedStatement.setString(1,so_dien_thoai);
            preparedStatement.setString(2,ma_tai_khoan);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);
    }

    // Phương thức nhậ nvoo mã tài khoản và tên đầy đủ, cập nhật lại
    public void updateFullName(String ma_tai_khoan,String ten_day_du){
        Connection connection = DataSource.getInstance().getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE tai_khoan SET ten_day_du = ? WHERE ma_tai_khoan = ?");
            preparedStatement.setString(1,ten_day_du);
            preparedStatement.setString(2,ma_tai_khoan);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);
    }

    // Phương thức nhậ nvoo mã tài khoản và tên hiển thị, cập nhật lại
    public void updateDisplayName(String ma_tai_khoan,String ten_hien_thi){
        Connection connection = DataSource.getInstance().getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE tai_khoan SET ten_hien_thi = ? WHERE ma_tai_khoan = ?");
            preparedStatement.setString(1,ten_hien_thi);
            preparedStatement.setString(2,ma_tai_khoan);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        DataSource.getInstance().releaseConnection(connection);
    }

}




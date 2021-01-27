package worksWithDatabase.rateProduct;

import beans.DateTime;
import beans.category.Category;
import beans.rate.Rate;
import beans.rate.Star;
import connectionDatabase.DataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RateDAO {
    ArrayList<Rate> list;
    static int numberOfPage;
    int numberRates;

    public ArrayList<Rate> LoadAllRates(int page, String type, int numberPerPage,String idProduct){
        Connection connection = DataSource.getInstance().getConnection();
        list = new ArrayList<Rate>();
        try{

//          hiển thị số lượng đánh giá
            String sql1 = "SELECT * FROM danh_gia_sp WHERE trang_thai = 1 AND ma_sp = ?";
            PreparedStatement s1 = connection.prepareStatement(sql1);

            s1.setString(1,idProduct);
            ResultSet rs1 = s1.executeQuery();
            rs1.last();
            numberRates = rs1.getRow();

            rs1.close();
            s1.close();

            if(numberRates % numberPerPage == 0){
                numberOfPage = numberRates/numberPerPage;
            }
            else{
                numberOfPage = numberRates/numberPerPage + 1;
            }
            int start = (page - 1)*numberPerPage + 1;


            String t = "";
            switch (type){
                case "1": t = "AND so_sao = 1";
                    break;
                case "2": t = "AND so_sao = 2";
                    break;
                case "3": t = "AND so_sao= 3";
                    break;
                case "4": t = "AND so_sao= 4";
                    break;
                case "5": t = "AND so_sao= 5";
                    break;
                case "tieu_cuc": t = "AND so_sao < 4";
                    break;
                case "tich_cuc": t = "AND so_sao >=4";
                    break;
                default: t = "";
                    break;
            }

//            hiển thị danh sách đánh giá
            String sql = "SELECT d.ma_sp, d.ma_kh, d.noi_dung, d.so_sao, d.trang_thai,d.ngay_tao, t.ten_hien_thi," +
                    "t.link_hinh_dai_dien from danh_gia_sp d, tai_khoan t WHERE d.ma_kh = t.ma_tai_khoan AND" +
                    " ma_sp = ? "+t+" LIMIT ?," +numberPerPage;

            PreparedStatement s = connection.prepareStatement(sql);

            s.setString(1,idProduct);
            s.setInt(2,start-1);
            ResultSet rs = s.executeQuery();
            while(rs.next()){
                Rate rate = new Rate();
                rate.setIdProduct(rs.getString("ma_sp"));
                rate.setIdCustomer(rs.getString("ma_kh"));
                rate.setContent(rs.getString("noi_dung"));
                rate.setNumberStar(rs.getInt("so_sao"));
                rate.setStatus(rs.getInt("trang_thai"));

                String date = rs.getString("ngay_tao");
                String[] split = date.split(" ");

                String[] dmy = split[0].split("-");
                String[] time = split[1].split(":");

                int year = Integer.parseInt(dmy[0]);
                int month = Integer.parseInt(dmy[1]);
                int day = Integer.parseInt(dmy[2]);
                int hour = Integer.parseInt(time[0]);
                int minute = Integer.parseInt(time[1]);

                double d = Double.parseDouble(time[2]);

                int second = (int) d;

                DateTime datetime = new DateTime(year, month, day, hour, minute, second);
                rate.setDateCreated(datetime);
                rate.setNameCustomer(rs.getString("ten_hien_thi"));
                rate.setImgCustomer(rs.getString("link_hinh_dai_dien"));
                list.add(rate);
            }
            rs.close();
            s.close();
            DataSource.getInstance().releaseConnection(connection);
            return list;
        }
     catch (SQLException throwables) {
        throwables.printStackTrace();
    }
        DataSource.getInstance().releaseConnection(connection);
        return list;
    }
    public Star getAvgStar(String idProduct){
        Star star = null;
        Connection connection = DataSource.getInstance().getConnection();
        try{
            PreparedStatement s = connection.prepareStatement("SELECT ma_sp, COUNT(*), ROUND(SUM(so_sao)/COUNT(*),1) FROM " +
                    "danh_gia_sp WHERE ma_sp = ?");
            s.setString(1,idProduct);
            ResultSet rs = s.executeQuery();
            star = new Star();
            if(rs.next()){
                star.setIdProduct(rs.getString(1));
                star.setSumRate(rs.getInt(2));
                star.setAvgStar(rs.getDouble(3));
            }
            rs.close();
            s.close();
            DataSource.getInstance().releaseConnection(connection);
            return star;

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        DataSource.getInstance().releaseConnection(connection);
        return star;

    }
    // kiểm tra xem khách hàng có quyền viết đánh giá không false nếu khách hàng chưa mua sản phẩm hoặc đã mua
    // và đánh giá sản phẩm đó rồi.
    public String checkRatePermission(String idProduct,String idCustomer){
            Connection connection = DataSource.getInstance().getConnection();
            try{
                String sql = "SELECT DISTINCT d.ma_khach_hang,c.ma_san_pham FROM `don_hang` d, chi_tiet_don_hang c" +
                " WHERE d.ma_don_hang = c.ma_don_hang AND d.ma_khach_hang = ? AND c.ma_san_pham = ?";
                int count = 0;
                PreparedStatement c = connection.prepareStatement(sql);
                c.setString(1,idCustomer);
                c.setString(2,idProduct);
                ResultSet rc = c.executeQuery();
                if(rc.next()){
                    // khách hàng đã mua sp đó
                    count++;
                }
                rc.close();
                c.close();
                PreparedStatement s = connection.prepareStatement("SELECT * FROM `danh_gia_sp` where ma_sp = ? AND" +
                        " ma_kh = ? OR trang_thai = 1");
                s.setString(1,idProduct);
                s.setString(2,idProduct);
                ResultSet rs = s.executeQuery();
                if(rs.next()){
                    DataSource.getInstance().releaseConnection(connection);
                    count++;
                }
                if(count==2){
                    DataSource.getInstance().releaseConnection(connection);
                    return "da_danh_gia";
                }
                else if(count==1){
                    DataSource.getInstance().releaseConnection(connection);
                    return "chua_danh_gia";
                }
                else if(count==0) {
                    return "chua_mua_hang";
                }
                rs.close();
                s.close();

            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            DataSource.getInstance().releaseConnection(connection);
            return "";
    }

    public static void main(String[] args) throws SQLException{
        RateDAO lao = new RateDAO();
        for(Rate r : lao.LoadAllRates(2,"",1,"sp_1")){
            System.out.println(r);
        }
        System.out.println();

    }

    public ArrayList<Rate> getList() {
        return list;
    }

    public void setList(ArrayList<Rate> list) {
        this.list = list;
    }

    public static int getNumberOfPage() {
        return numberOfPage;
    }

    public static void setNumberOfPage(int numberOfPage) {
        RateDAO.numberOfPage = numberOfPage;
    }

    public int getNumberRates() {
        return numberRates;
    }

    public void setNumberRates(int numberRates) {
        this.numberRates = numberRates;
    }
}

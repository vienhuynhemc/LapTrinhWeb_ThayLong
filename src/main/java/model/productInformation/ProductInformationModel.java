package model.productInformation;

import beans.productAdmin.ProductAdmin;
import worksWithDatabase.productInformation.ProductInformationDataSource;
import worksWithDatabase.productInformation.ProductInformationWorksWithDatabase;

import java.util.List;

public class ProductInformationModel {

    private static ProductInformationModel productInformationModel;

    public static ProductInformationModel getInstance() {
        if (productInformationModel == null) {
            productInformationModel = new ProductInformationModel();
        }
        return productInformationModel;
    }

    public void fillInformationProduct(List<ProductAdmin> products) {
        ProductInformationWorksWithDatabase productInformationWorksWithDatabase = ProductInformationDataSource.getInstance().getProductInformationWorksWithDatabase();
        productInformationWorksWithDatabase.fillInformationProduct(products);
        ProductInformationDataSource.getInstance().releaseProductInformationWorksWithDatabase(productInformationWorksWithDatabase);
    }

    //  Phương thức nhận vô ma_sp, ma_mau,ma_size  chuyển trạng thái tồn tại 1->0
    public boolean removeInformationProduct(String ma_sp, String ma_mau, String ma_size) {
        ProductInformationWorksWithDatabase productInformationWorksWithDatabase = ProductInformationDataSource.getInstance().getProductInformationWorksWithDatabase();
        boolean result = productInformationWorksWithDatabase.removeInformationProduct(ma_sp, ma_mau, ma_size);
        ProductInformationDataSource.getInstance().releaseProductInformationWorksWithDatabase(productInformationWorksWithDatabase);
        return result;
    }

    //  Phương thức nhận vô ma_sp, ma_mau,ma_size dang list  chuyển trạng thái tồn tại 1->0
    public int removeInformationProduct(String[] danh_sach) {
        ProductInformationWorksWithDatabase productInformationWorksWithDatabase = ProductInformationDataSource.getInstance().getProductInformationWorksWithDatabase();
        int result = productInformationWorksWithDatabase.removeInformationProduct(danh_sach);
        ProductInformationDataSource.getInstance().releaseProductInformationWorksWithDatabase(productInformationWorksWithDatabase);
        return result;
    }

    public void addToDatabase(String ma_sp, List<String> thong_tins) {
        ProductInformationWorksWithDatabase productInformationWorksWithDatabase = ProductInformationDataSource.getInstance().getProductInformationWorksWithDatabase();
        productInformationWorksWithDatabase.addToDatabase(ma_sp, thong_tins);
        ProductInformationDataSource.getInstance().releaseProductInformationWorksWithDatabase(productInformationWorksWithDatabase);
    }

    public List<String> getListById(java.lang.String ma_sp) {
        ProductInformationWorksWithDatabase productInformationWorksWithDatabase = ProductInformationDataSource.getInstance().getProductInformationWorksWithDatabase();
        List<String> result = productInformationWorksWithDatabase.getListById(ma_sp);
        ProductInformationDataSource.getInstance().releaseProductInformationWorksWithDatabase(productInformationWorksWithDatabase);
        return result;
    }

    public void editToDatabase(String ma_sp, List<String> thong_tins) {
        ProductInformationWorksWithDatabase productInformationWorksWithDatabase = ProductInformationDataSource.getInstance().getProductInformationWorksWithDatabase();
        productInformationWorksWithDatabase.editToDatabase(ma_sp, thong_tins);
        ProductInformationDataSource.getInstance().releaseProductInformationWorksWithDatabase(productInformationWorksWithDatabase);
    }

}

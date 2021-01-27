package model.productStructure;

import beans.productAdmin.ProductAdmin;
import worksWithDatabase.productStructure.ProductStructureDataSource;
import worksWithDatabase.productStructure.ProductStructureWorksWithDatabase;

import java.util.List;

public class ProductStructureModel {

    private static ProductStructureModel productStructureModel;

    public static ProductStructureModel getInstance() {
        if (productStructureModel == null) {
            productStructureModel = new ProductStructureModel();
        }
        return productStructureModel;
    }

    public void fillStructureProdcut(List<ProductAdmin> products) {
        ProductStructureWorksWithDatabase productStructureWorksWithDatabase = ProductStructureDataSource.getInstance().getProductStructureWorksWithDatabase();
        productStructureWorksWithDatabase.fillStructureProdcut(products);
        ProductStructureDataSource.getInstance().releaseProductStructureWorksWithDatabase(productStructureWorksWithDatabase);
    }

    public void addToDatabase(String ma_sp, List<String> cau_tao) {
        ProductStructureWorksWithDatabase productStructureWorksWithDatabase = ProductStructureDataSource.getInstance().getProductStructureWorksWithDatabase();
        productStructureWorksWithDatabase.addToDatabase(ma_sp, cau_tao);
        ProductStructureDataSource.getInstance().releaseProductStructureWorksWithDatabase(productStructureWorksWithDatabase);
    }

    public List<String> getListById(String ma_sp) {
        ProductStructureWorksWithDatabase productStructureWorksWithDatabase = ProductStructureDataSource.getInstance().getProductStructureWorksWithDatabase();
        List<String> result = productStructureWorksWithDatabase.getListById(ma_sp);
        ProductStructureDataSource.getInstance().releaseProductStructureWorksWithDatabase(productStructureWorksWithDatabase);
        return result;
    }


    public void editToDatabase(String ma_sp, List<String> cau_tao) {
        ProductStructureWorksWithDatabase productStructureWorksWithDatabase = ProductStructureDataSource.getInstance().getProductStructureWorksWithDatabase();
        productStructureWorksWithDatabase.editToDatabase(ma_sp, cau_tao);
        ProductStructureDataSource.getInstance().releaseProductStructureWorksWithDatabase(productStructureWorksWithDatabase);
    }


}

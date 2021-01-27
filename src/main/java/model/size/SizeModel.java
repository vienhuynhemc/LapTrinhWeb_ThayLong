package model.size;

import beans.productAdmin.ProductAdmin;
import beans.productAdmin.ProductAdminAdd;
import beans.productAdmin.ProductAdminEditSingle;
import beans.productAdmin.ProductAdminSizeAdd;
import worksWithDatabase.size.SizeDataSource;
import worksWithDatabase.size.SizeWorksWithDatabase;

import java.util.List;

public class SizeModel {

    private static SizeModel sizeModel;

    public static SizeModel getInstance() {
        if (sizeModel == null) sizeModel = new SizeModel();

        return sizeModel;
    }

    public void fillNameSize(List<ProductAdmin> products) {
        SizeWorksWithDatabase sizeWorksWithDatabase = SizeDataSource.getInstance().getSizeWorksWithDatabase();
        sizeWorksWithDatabase.fillNameSize(products);
        SizeDataSource.getInstance().releaseSizeWorksWithDatabase(sizeWorksWithDatabase);
    }

    public List<ProductAdminSizeAdd> getAllSize() {
        SizeWorksWithDatabase sizeWorksWithDatabase = SizeDataSource.getInstance().getSizeWorksWithDatabase();
        List<ProductAdminSizeAdd> result = sizeWorksWithDatabase.getAllSize();
        SizeDataSource.getInstance().releaseSizeWorksWithDatabase(sizeWorksWithDatabase);
        return result;
    }

    public ProductAdminSizeAdd getProductAdminSizeAddById(String id){
        SizeWorksWithDatabase sizeWorksWithDatabase = SizeDataSource.getInstance().getSizeWorksWithDatabase();
        ProductAdminSizeAdd productAdminAdd = sizeWorksWithDatabase.getProductAdminSizeAddById(id);
        SizeDataSource.getInstance().releaseSizeWorksWithDatabase(sizeWorksWithDatabase);
        return productAdminAdd;
    }

    public void fillNameSizeToProductAdminEditSingle(ProductAdminEditSingle productAdminEditSingle){
        SizeWorksWithDatabase sizeWorksWithDatabase = SizeDataSource.getInstance().getSizeWorksWithDatabase();
        sizeWorksWithDatabase.fillNameSizeToProductAdminEditSingle(productAdminEditSingle);
        SizeDataSource.getInstance().releaseSizeWorksWithDatabase(sizeWorksWithDatabase);
    }

    public void fillDataProductAdminEditGroup(ProductAdminAdd productAdminEditGroup) {
        SizeWorksWithDatabase sizeWorksWithDatabase = SizeDataSource.getInstance().getSizeWorksWithDatabase();
        sizeWorksWithDatabase.fillDataProductAdminEditGroup(productAdminEditGroup);
        SizeDataSource.getInstance().releaseSizeWorksWithDatabase(sizeWorksWithDatabase);
    }

}

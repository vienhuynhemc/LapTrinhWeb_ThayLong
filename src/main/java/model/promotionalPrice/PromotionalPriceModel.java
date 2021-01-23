package model.promotionalPrice;

import beans.productAdmin.ProductAdmin;
import worksWithDatabase.promotionalPrice.PromotionalPriceDataSource;
import worksWithDatabase.promotionalPrice.PromotionalPriceWorksWithDatabase;

import java.util.List;

public class PromotionalPriceModel {

    private static PromotionalPriceModel promotionalPriceModel;

    public static PromotionalPriceModel getInstance(){
        if(promotionalPriceModel == null){
            promotionalPriceModel = new PromotionalPriceModel();
        }
        return promotionalPriceModel;
    }
    //  Phương thức nhận vô list product điền giá sp cho bó
    public void fillPriceListProductAdmin(List<ProductAdmin> products) {
        PromotionalPriceWorksWithDatabase promotionalPriceWorksWithDatabase = PromotionalPriceDataSource.getInstance().getPromotionalPriceWorksWithDatabase();
        promotionalPriceWorksWithDatabase.fillPriceListProductAdmin(products);
        PromotionalPriceDataSource.getInstance().releasePromotionalPriceWorksWithDatabase(promotionalPriceWorksWithDatabase);
    }


}

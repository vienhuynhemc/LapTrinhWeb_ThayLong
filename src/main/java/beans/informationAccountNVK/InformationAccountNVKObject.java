package beans.informationAccountNVK;

import beans.ObjectPageAdmin;
import beans.address.Commune;
import beans.address.District;
import beans.address.Provincial;

import java.util.List;

public class InformationAccountNVKObject implements ObjectPageAdmin {

    private boolean ready;

    //  Số đơn hàng đã duyệt
    private int orderApproval;

    //  List full tinh thành
    private List<Provincial> provincials;

    //  List quận huyện
    private List<District> districts;

    //  List phường xã
    private List<Commune> communes;

    //  boolean kiểm tra đang ở chế độ sửa hay
    private boolean isEdit;

    //  boolean kiểm tra có thông báo hay không
    private boolean isNotify;

    //  Tiêu đề và nội dung thông báo
    private String title;
    private String content;

    //  Tỉnh thành quận huyện hiện tại
    private Provincial provincial;
    private District district;
    private Commune commune;

    //  Các thông tin để sửa đổi
    private String fullName;
    private String displayName;
    private String phoneNumber;
    private String password;
    private String checkPassword;
    private String introduct;

    public InformationAccountNVKObject() {
    }

    // GETTER AND SETTER
    public int getOrderApproval() {
        return orderApproval;
    }

    public void setOrderApproval(int orderApproval) {
        this.orderApproval = orderApproval;
    }

    @Override
    public boolean isReady() {
        return ready;
    }

    @Override
    public void setReady(boolean ready) {
        this.ready = ready;
    }


    public List<Provincial> getProvincials() {
        return provincials;
    }

    public void setProvincials(List<Provincial> provincials) {
        this.provincials = provincials;
    }

    public List<District> getDistricts() {
        return districts;
    }

    public void setDistricts(List<District> districts) {
        this.districts = districts;
    }

    public List<Commune> getCommunes() {
        return communes;
    }

    public void setCommunes(List<Commune> communes) {
        this.communes = communes;
    }

    public boolean isEdit() {
        return isEdit;
    }

    public void setEdit(boolean edit) {
        isEdit = edit;
    }

    public Provincial getProvincial() {
        return provincial;
    }

    public void setProvincial(Provincial provincial) {
        this.provincial = provincial;
    }

    public District getDistrict() {
        return district;
    }

    public void setDistrict(District district) {
        this.district = district;
    }

    public Commune getCommune() {
        return commune;
    }

    public void setCommune(Commune commune) {
        this.commune = commune;
    }

    public boolean isNotify() {
        return isNotify;
    }

    public void setNotify(boolean notify) {
        isNotify = notify;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCheckPassword() {
        return checkPassword;
    }

    public void setCheckPassword(String checkPassword) {
        this.checkPassword = checkPassword;
    }

    public String getIntroduct() {
        return introduct;
    }

    public void setIntroduct(String introduct) {
        this.introduct = introduct;
    }

}

package worksWithDatabase.addAccount;

public interface AddAccountInterface {
     boolean isEmail(String email);
     boolean isEmailInDatabase(String email);
     boolean isAccountInDatabase(String idUser);
}

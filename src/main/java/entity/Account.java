package entity;

/**
 *
 * @author Bin
 */
public class Account {
    private int accountID;
    private String account;
    private String password;
    private String role;

    public Account() {
    }

    public Account(int accountID, String account, String password, String role) {
        this.accountID = accountID;
        this.account = account;
        this.password = password;
        this.role = role;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "accountID=" + accountID + ", account=" + account + ", password=" + password + ", role=" + role + '}';
    }
   
    
}

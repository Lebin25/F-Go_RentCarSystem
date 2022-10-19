package entity;

/**
 *
 * @author Bin
 */
public class Account {
    private int accountID;
    private String account;
    private String password;

    public Account() {
    }

    public Account(int accountID, String account, String password) {
        this.accountID = accountID;
        this.account = account;
        this.password = password;
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

    
    
    
}

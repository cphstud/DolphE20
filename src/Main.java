import data.MemberD;
import data.MemberDAO;
import presentation.AccountantUI;
import presentation.AdminUI;
import services.AccountantController;
import services.AdminController;

import java.util.Scanner;

public class Main {

    static Scanner sc = new Scanner(System.in);


    public static void main(String[] args) {
        boolean run = true;
        while(run) {
            System.out.println("Enter type");
            String type = sc.next();
            switch (type) {
                case "admin":
                    AdminUI ui = new AdminUI();
                    MemberDAO mb = new MemberD();
                    AdminController ac = new AdminController(ui,mb);
                    ac.showMainMenu();
                    break;
                case "account":
                    AccountantUI aui = new AccountantUI();
                    MemberDAO amb = new MemberD();
                    AccountantController aac = new AccountantController(aui,amb);
                    aac.showMainMenu();
                    break;
                default:run=false;
            }

        }


        // write your code here
    }
}

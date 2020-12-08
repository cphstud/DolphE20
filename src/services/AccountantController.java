package services;

import data.MemberDAO;
import presentation.AccountantUI;

import java.util.Scanner;

public class AccountantController {
    AccountantUI ui;
    MemberDAO memberDAO;
    Scanner sc;

    public AccountantController(AccountantUI ui, MemberDAO memberDAO) {
        this.ui = ui;
        this.memberDAO = memberDAO;
        sc = new Scanner(System.in);
    }

    public void showMainMenu() {
        int choice = 0;
        while(choice!=99) {
            ui.mainMenu();
            choice=sc.nextInt();

            switch (choice) {
                case 1: ui.showMembersExpectedFees(memberDAO);break;
                default:choice=99;
            }
        }

    }
}

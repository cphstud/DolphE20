package services;

import data.MemberDAO;
import presentation.AdminUI;

import java.util.Scanner;

public class AdminController {
    AdminUI ui;
    MemberDAO memberDAO;
    Scanner sc;

    public AdminController(AdminUI ui, MemberDAO memberDAO) {
        this.ui = ui;
        this.memberDAO = memberDAO;
        sc = new Scanner(System.in);
    }

    public void showMainMenu() {
        int choice = 0;
        ui.mainMenu();
        choice=sc.nextInt();
        while(choice!=99) {
            ui.mainMenu();
            choice=sc.nextInt();

            switch (choice) {
                case 1: ui.showAllMembers(memberDAO);
                default:choice=99;
            }
        }
    }
}

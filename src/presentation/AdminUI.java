package presentation;

import data.MemberDAO;
import domain.Member;

public class AdminUI {

    public void mainMenu() {
        System.out.println("1) show all members");
        System.out.println("2) create member");
        System.out.println("9) exit ");
    }

    public void showAllMembers(MemberDAO memberDAO) {
        for (Member m : memberDAO.getAll() ) {
            System.out.println("Member: " + m.getName() );
        }
    }

}

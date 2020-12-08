package presentation;

import data.MemberDAO;
import domain.Member;

public class AccountantUI {

    public void mainMenu() {
        System.out.println("1) show members in dept");
        System.out.println("9) exit");
    }

    public void showMembersExpectedFees(MemberDAO memberDAO) {
        for (Member m : memberDAO.getAll()) {
            System.out.println(m.getName() + " : " + m.getExpectedFee());
        }
    }
}

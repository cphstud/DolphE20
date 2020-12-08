package data;

import domain.Member;

import java.util.List;

public interface MemberDAO {
    List<Member> getAll();
    Member createMember(String name, int birthYear, boolean isActive, boolean isCompetitive);
    void updateMember(Member m, String[] params);
    void deleteMember(Member m);
}

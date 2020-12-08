package data;

import domain.Member;

import java.util.ArrayList;
import java.util.List;

public class MemberD implements MemberDAO{
    private List<Member> members;

    public MemberD() {
        members = new ArrayList<>();
        Member member = new Member("Fenja Romanski",2005,true,true);
        Member member2 = new Member("Stine Lund Holgersen",2006,true,true);
        members.add(member);
        members.add(member2);
    }

    @Override
    public List<Member> getAll() {
        return members;
    }

    @Override
    public Member createMember(String name, int birthYear, boolean isActive, boolean isCompetitive) {
        Member member = new Member(name,birthYear,isActive,isCompetitive);
        return member;
    }

    public void addMember(Member member) {
        members.add(member);
    }

    @Override
    public void updateMember(Member m, String[] params) {

    }

    @Override
    public void deleteMember(Member m) {
        m.setRemoved(true);
        members.remove(m);
    }
}

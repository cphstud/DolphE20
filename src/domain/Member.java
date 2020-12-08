package domain;

import Util.Vars;

import java.time.LocalDate;
import java.util.ArrayList;

public class Member {
    private int memberID;
    private String name;
    private int birthYear;
    private boolean isActive;
    private boolean isCompetitive;
    private boolean isRemoved;
    private ArrayList<Discipline> disciplines;

    public Member(String name, int birthYear, boolean isActive, boolean isCompetitive) {
        this.name = name;
        this.birthYear = birthYear;
        this.isActive = isActive;
        this.isCompetitive = isCompetitive;
        this.isRemoved = false;
        this.disciplines = new ArrayList<>();
    }

    public int getMemberID() {
        return memberID;
    }

    public String getName() {
        return name;
    }

    public int getBirthYear() {
        return birthYear;
    }

    public boolean isActive() {
        return isActive;
    }

    public boolean isCompetitive() {
        return isCompetitive;
    }

    public boolean isRemoved() {
        return isRemoved;
    }

    public Iterable<Discipline> getDisciplines() {
        return disciplines;
    }
    public void addDisc(Discipline discipline) {
        disciplines.add(discipline);
    }
    public void setRemoved(Boolean removed) {
        this.isRemoved = removed;
    }
    public int getExpectedFee() {
        int nowYear = LocalDate.now().getYear();
        int age = nowYear - birthYear;
        if (!isActive) {
            return 500;
        }
        if (age < 18) {
            return Vars.JUNIORFEE;
        } else if (age > 60) {
            return Vars.VETERANFEE;
        } else {
            return Vars.SENIORFEE;
        }
    }
}

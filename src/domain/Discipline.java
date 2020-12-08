package domain;

public class Discipline {
    private int disciplineID;
    private String disciplineName;
    private int disciplineDist;

    public Discipline(int disciplineID, String disciplineName, int disciplineDist) {
        this.disciplineID = disciplineID;
        this.disciplineName = disciplineName;
        this.disciplineDist = disciplineDist;
    }

    public int getDisciplineID() {
        return disciplineID;
    }

    public String getDisciplineName() {
        return disciplineName;
    }

    public int getDisciplineDist() {
        return disciplineDist;
    }
}

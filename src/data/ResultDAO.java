package data;

import domain.Member;
import domain.Result;

import java.util.List;

public interface ResultDAO {
    List<Result> getAll();
    void saveResult(Result r);
    void updateResult(Result r, String[] params);
}

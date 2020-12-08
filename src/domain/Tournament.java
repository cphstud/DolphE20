package domain;

import java.time.LocalDateTime;

public class Tournament {
    int tourID;
    String tourName;
    String tourLocation;
    LocalDateTime tourDate;

    public Tournament(int tourID, String tourName, String tourLocation, LocalDateTime tourDate) {
        this.tourID = tourID;
        this.tourName = tourName;
        this.tourLocation = tourLocation;
        this.tourDate = tourDate;
    }

    public int getTourID() {
        return tourID;
    }

    public String getTourName() {
        return tourName;
    }

    public String getTourLocation() {
        return tourLocation;
    }

    public LocalDateTime getTourDate() {
        return tourDate;
    }
}

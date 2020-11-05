package com.free4lab.babycheckup.vo;

import com.free4lab.babycheckup.model.Result;
import com.free4lab.babycheckup.model.TestResultRecord;

public class OtherResultVo {
    private Double scoreSport;
    private Double scoreAct;
    private Double scoreAdapt;
    private Double scoreLanguage;
    private Double scoreSocial;

    private TestResultRecord record2016;

    private TestResultRecord recordFeel2020;

    public Double getScoreSport() {
        return scoreSport;
    }

    public void setScoreSport(Double scoreSport) {
        this.scoreSport = scoreSport;
    }

    public Double getScoreAct() {
        return scoreAct;
    }

    public void setScoreAct(Double scoreAct) {
        this.scoreAct = scoreAct;
    }

    public Double getScoreAdapt() {
        return scoreAdapt;
    }

    public void setScoreAdapt(Double scoreAdapt) {
        this.scoreAdapt = scoreAdapt;
    }

    public Double getScoreLanguage() {
        return scoreLanguage;
    }

    public void setScoreLanguage(Double scoreLanguage) {
        this.scoreLanguage = scoreLanguage;
    }

    public Double getScoreSocial() {
        return scoreSocial;
    }

    public void setScoreSocial(Double scoreSocial) {
        this.scoreSocial = scoreSocial;
    }

    public TestResultRecord getRecord2016() {
        return record2016;
    }

    public void setRecord2016(TestResultRecord record2016) {
        this.record2016 = record2016;
    }

    public TestResultRecord getRecordFeel2020() {
        return recordFeel2020;
    }

    public void setRecordFeel2020(TestResultRecord recordFeel2020) {
        this.recordFeel2020 = recordFeel2020;
    }
}

package az.employee.domain;

import java.io.Serializable;
import java.util.StringJoiner;

public class LanguageSkill extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = -8803812556635467709L;

    private long candidateId;
    private Language language;
    private int reading;
    private int speaking;
    private int writing;
    private int listening;

    public LanguageSkill() {
        this.candidateId = 0L;
        this.language = new Language();
        this.reading = 0;
        this.speaking = 0;
        this.writing = 0;
        this.listening = 0;
    }

    public long getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(long candidateId) {
        this.candidateId = candidateId;
    }

    public Language getLanguage() {
        return language;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }

    public int getReading() {
        return reading;
    }

    public void setReading(int reading) {
        this.reading = reading;
    }

    public int getSpeaking() {
        return speaking;
    }

    public void setSpeaking(int speaking) {
        this.speaking = speaking;
    }

    public int getWriting() {
        return writing;
    }

    public void setWriting(int writing) {
        this.writing = writing;
    }

    public int getListening() {
        return listening;
    }

    public void setListening(int listening) {
        this.listening = listening;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", LanguageSkill.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("candidateId=" + candidateId)
                .add("language=" + language)
                .add("reading=" + reading)
                .add("speaking=" + speaking)
                .add("writing=" + writing)
                .add("listening=" + listening)
                .add("insertDate=" + insertDate)
                .add("lastUpdate=" + lastUpdate)
                .toString();
    }
}

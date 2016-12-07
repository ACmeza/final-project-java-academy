package sample.jsp.Entity;

/**
 * Created by antonio on 06/12/16.
 */
public class Hobby {
    public String name;
    public String description;

    public Hobby() {
        name = "";
        description = "";
    }

    public Hobby(String name, String description) {
        this.name = name;
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}

package sample.jsp.Entity;

import com.sun.javafx.beans.IDProperty;

import java.util.List;


/**
 * Created by antonio on 06/12/16.
 */

public class User {

    private String name;
    private List<String> hobbies;

    public User(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getHobbies() {
        return hobbies;
    }

    public void addHobby(String hobby){
        this.hobbies.add(hobby);
    }
}

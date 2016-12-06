package sample.jsp.Entity;

import com.sun.javafx.beans.IDProperty;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by antonio on 06/12/16.
 */

public class User {

    private int id;
    private String firstName;
    private String lastName;
    private int age;
    private List<String> hobbies;

    public User(int id) {
        this.id = id;
        firstName="";
        lastName="";
        age=0;
        hobbies=new ArrayList<>();
    }

    public User(int id, String firstName, String lastName, int age) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        hobbies=new ArrayList<>();
    }

    public int getId() {
        return id;
    }
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public List<String> getHobbies() {
        return hobbies;
    }

    public void addHobby(String hobby){
        this.hobbies.add(hobby);
    }
}

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
    private String email;
    private int age;
    private List<Hobby> hobbies;

    public User(int id) {
        this.id = id;
        firstName="";
        lastName="";
        email="";
        age=0;
        hobbies=new ArrayList<>();
    }

    public User(int id, String firstName, String lastName, String email, int age) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.email = email;

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public List<Hobby> getHobbies() {
        return hobbies;
    }

    public void addHobby(Hobby hobby){
        this.hobbies.add(hobby);
    }
}

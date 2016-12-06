package sample.jsp.Dao;

import sample.jsp.Entity.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by antonio on 06/12/16.
 */
public class UserDao {

    private int assignId = 1;
    private List<User> users;

    public UserDao(){
        users = new ArrayList<>();
    }

    public void addUser(String firstName, String lastName, int age){
        users.add(new User(assignId,firstName,lastName,age));
        assignId++;
    }

    public List<User> getAllUsers(){
        return users;
    }

    public User getUser(int key){
        return users.get(key);
    }
}

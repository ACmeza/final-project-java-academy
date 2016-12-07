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
    private Map<Integer, User> users;

    public UserDao(){
        users = new HashMap<>();
    }

    public void addUser(String firstName, String lastName, int age){
        users.put(assignId,new User(assignId,firstName,lastName,age));
        assignId++;
    }

    public Map<Integer,User> getAllUsers(){
        return users;
    }

    public User getUser(int key){

        return users.get(key);
    }
}

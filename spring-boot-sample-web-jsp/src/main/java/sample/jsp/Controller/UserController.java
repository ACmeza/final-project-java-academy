package sample.jsp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import sample.jsp.Dao.UserDao;
import sample.jsp.Entity.Hobby;
import sample.jsp.Entity.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by antonio on 06/12/16.
 */

@Controller
@RequestMapping("/users")
public class UserController {

    UserDao userDao = new UserDao();

    @RequestMapping(value="",method = RequestMethod.GET)
    public String listUsers(Model model){
        model.addAttribute("users",userDao.getAllUsers());
        return "users/listUsers";
    }

    @RequestMapping("/adduser")
    public String addUser(Model model){
        return "users/addUser";
    }

    @RequestMapping(value="/create",method = RequestMethod.POST)
    public ModelAndView create(@RequestParam("firstName") String firstName,
                               @RequestParam("lastName") String lastName,
                               @RequestParam("email") String email,
                               @RequestParam("age") int age){
        userDao.addUser(firstName,lastName,email,age);
        return new ModelAndView("redirect:/users/profile/"+userDao.getLastIndex());
    }

    @RequestMapping(value = "/profile/{id}",method = RequestMethod.GET)
    public String getUserProfile(Model model, @PathVariable("id") int id){
        User user = userDao.getUser(id);
        model.addAttribute("user",user);
        model.addAttribute("hobbies",user.getHobbies());
        return "users/profile";
    }

    @RequestMapping(value="/profile/{id}/createhobby",method = RequestMethod.POST)
    public ModelAndView createHobby(@PathVariable("id") int id,
                                    @RequestParam("hobby") String hobby,
                                    @RequestParam("description") String description){
        userDao.getUser(id).addHobby(new Hobby(hobby,description));
        return new ModelAndView("redirect:/users/profile/"+id);
    }
}

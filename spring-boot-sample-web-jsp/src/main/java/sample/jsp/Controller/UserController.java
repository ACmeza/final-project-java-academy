package sample.jsp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import sample.jsp.Dao.UserDao;
import sample.jsp.Entity.User;

import java.util.ArrayList;
import java.util.List;

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
        return "users/list";
    }

    @RequestMapping("/adduser")
    public String addUser(Model model){
        return "users/adduser";
    }

    @RequestMapping(value="/create",method = RequestMethod.POST)
    public ModelAndView create(@RequestParam("firstName") String firstName,
                               @RequestParam("lastName") String lastName,
                               @RequestParam("age") int age){
        userDao.addUser(firstName,lastName,age);
        return new ModelAndView("redirect:/users");
    }

    @RequestMapping(value = "/details/{id}",method = RequestMethod.GET)
    public String getUserDetails(Model model, @PathVariable("id") int id){
        User user = userDao.getUser(id);
        model.addAttribute("user",user);
        model.addAttribute("hobbies",user.getHobbies());
        return "users/details";
    }

    @RequestMapping(value="/details/{id}/createhobby",method = RequestMethod.POST)
    public ModelAndView createHobby(@PathVariable("id") int id,@RequestParam("hobby") String hobby){
        userDao.getUser(id).addHobby(hobby);
        return new ModelAndView("redirect:/users/details/"+id);
    }
}

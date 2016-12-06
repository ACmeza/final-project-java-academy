package sample.jsp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by antonio on 06/12/16.
 */

@Controller
@RequestMapping("/users")
public class UserController {

    @RequestMapping(value="",method = RequestMethod.GET)
    public String listUsers(Model model){
        return "users/list";
    }

}

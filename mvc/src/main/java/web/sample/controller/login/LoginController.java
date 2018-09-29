package web.sample.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String defaultUrl(final ModelMap modelMap) {
	
		return "menu";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model,HttpServletRequest r) {
		r.getSession().invalidate();
		return "login";
	}


	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public String accessDenied(ModelMap model) {
		return "denied";
	}

}

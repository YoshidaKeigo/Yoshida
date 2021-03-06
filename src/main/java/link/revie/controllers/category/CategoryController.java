package link.revie.controllers.category;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/Category")
public interface CategoryController {

	@RequestMapping(value = "/{category}", method = RequestMethod.GET)
	String get(String category, Model model);

}

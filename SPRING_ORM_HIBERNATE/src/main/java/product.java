

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class product {
   
	
	@RequestMapping("/show")
	void show() {
		System.out.println("handling company");
	}
}

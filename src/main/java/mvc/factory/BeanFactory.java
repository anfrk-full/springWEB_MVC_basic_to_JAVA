package mvc.factory;

import java.util.HashMap;
import java.util.Map;

import mvc.ctrl.IndexController;
import mvc.user.ctrl.JoinController;
import mvc.user.ctrl.LoginController;
import mvc.util.Controller;

/*
MVC Pattern에서
FrontController 와 실제 Controller 사이에서 동작하는 것

추후 기능구현을 위한 Controller가 만들어지면 등록할 것
*/
public class BeanFactory {
	private Map<String, Controller> map;
	private static BeanFactory instance;
	
	private BeanFactory() {
		map = new HashMap();
		map.put("/springWEB/index.kdt", new IndexController());
		map.put("/springWEB/Login.kdt", new LoginController());
		map.put("/springWEB/joinform.kdt", new JoinController());
	}
	
	public static BeanFactory getInstance() {
		if( instance == null) {
			instance = new BeanFactory();
		}
		return instance;
	}
	
	public Controller getController(String path) {
		return map.get(path);
	}
}

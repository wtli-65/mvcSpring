package cn.controller;

import java.io.IOException;
import java.io.Writer;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.core.ApplicationContext;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import sun.jdbc.odbc.ee.DataSource;
import cn.entity.User;

//@SessionAttributes(value={"user"},types={Integer.class})
@RequestMapping("/springmvc")
@Controller
public class SpringTest {
	public static final String success="success";
	
	/**
	 * 有 @ModelAttribute 标记的方法，会在每个目标方法执行之前被Spring MVC调用
	 * @param id
	 * @param map
	 */
	@ModelAttribute
	public void getUser(@RequestParam(value="id",required=false) Integer id, Map<String, Object> map){
		if(id != null){
			User user = new User("Tom", "Tom", "123456", 12, "Tom@qq.com","上海","2255859658");
			System.out.println("从数据库中取出一个对象："+user);
			map.put("user", user);
		}
	}
	/**
	 * 运行流程：
	 * 1.执行 @ModelAttribute 注解修饰的方法：从数据库中取出对象,把对象放入Map中.键为：usesr
	 * 2.SpringMVC从Map中取出User对象，并把表单的请求参数赋给该User对象的对应的属性.
	 * 3.SpringMVC把上述对象传入目标方法的参数.
	 * 
	 * 注意：在 @ModelAttribute 修饰的方法中，放入到Map时的键需要和目标方法中入参类型的第一个字母小写的字符串一致!
	 * 
	 * 源代码分析的流程：
	 * 1.调用@ModelAttribute 注解修饰的方法.把@ModelAttribute 方法中Map中的数据放到了implicitModel中.
	 * 2.解析请求处理器的目标参数,实际上该目标参数来自于WebDataBinder对象的target属性
	 * 1).创建WebDataBinder对象:
	 * >确定objectName属性:若传入的attrName属性值为"",则objectName为类名第一个字母小写.
	 * 注意:attrName.若目标方法的POJO属性使用了@ModelAttribute 来修饰,则attrName值即为@ModelAttribute 的value属性值
	 * >确定target属性：
	 * >>在implicitModel中查找attrName对应的属性值.若存在,ok
	 * >>若不存在:则验证当前Handler是否使用了@SessionAttributes 修饰,若使用了,则尝试从Session中
	 * 获取attrName所对应的属性值.若session中没有对应的属性值,则抛出了异常.
	 * >>若Handler没有使用@SessionAttributes进行修饰,或@SessionAttributes中没有使用value值指定的key和attrName
	 * 相匹配,则通过反射创建了POJO对象
	 * 
	 * 2).SpringMVC把表单的请求参数赋给了WebDataBinder的target对应的属性.
	 * 3).SpringMVC会把WebDataBinder的attrName和target给到implicitModel
	 * 4).把WebDataBinder的target作为参数传递给目标方法的入参.
	 * 
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/testModelAttribute")
	public String testModelAttribute(User user){
		System.out.println("修改："+user);
		return success;
	}
	/**
	 * @SessionAttributes 除了可以通过属性名指定需要放到会话中的属性外（使用value属性），
	 * 还可以通过模型属性的对象类型指定哪些模型属性需要放到会话中（使用types属性值）
	 * 注意：该注解只能放在类上面，而不能修饰方法
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/testSessionAttributes")
	public String testSessionAttributes(Map<String, Object> map){
		User user = new User("Tom", "Tom", "123456", 12, "Tom@qq.com","上海","2255859658");
		map.put("user", user);
		map.put("year", 2017);
		return success;
	}
	/**
	 * 目标方法可以添加Map类型（实际上也可以是Model类型或者ModelMap类型）参数
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/testMap")
	public String testMap(Map<String, Object> map){
		map.put("names", Arrays.asList("Tom","Tony","Jack"));
		return success;
	}
	/**
	 * 目标方法的返回值可以是ModelAndView类型
	 * 其中可以包含视图和模型信息
	 * SpringMvc会把ModelAndVeiw的model中数据放入到request域中
	 * @return
	 */
	@RequestMapping(value="/testModelAndView")
	public ModelAndView testModelAndView(){
		String viewName = success;
		ModelAndView modelAndView = new ModelAndView(viewName);
		modelAndView.addObject("time", new Date());
		modelAndView.addObject("obj", "ModelAndView 添加对象成功！<hr>");
		return modelAndView;
	}
	/**
	 * 使用原生servlet对象作为参数
	 * @param out
	 * @param request
	 * @param response
	 */
	@RequestMapping(value="/testServelet")
	public void testServelet(Writer out,HttpServletRequest request,HttpServletResponse response){
		try {
			out.write("hello world,test servelet successfully!");
			System.out.println("Request:"+request+",Response:"+response);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * POJO对象作为参数（很常用）
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/testPOJO")
	public String testPOJO(User user){
		System.out.println(user.getUsername());
		System.out.println(user.getPassword());
		System.out.println(user.getAge());
		System.out.println(user.getEmail());
		System.out.println(user);
		return success;
	}
	/**
	 * rest风格更新、删除
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/testDelete/{id}",method=RequestMethod.DELETE)
	public String testDelete(@PathVariable Integer id){
		System.out.println("delete id:"+id);
		return success;
	}
	
	@RequestMapping(value="/testPut/{id}",method=RequestMethod.PUT)
	public String testPut(@PathVariable Integer id){
		System.out.println("put id:"+id);
		RowMapper<User> rowMap = new BeanPropertyRowMapper<User>(User.class);
		return success;
	}
}

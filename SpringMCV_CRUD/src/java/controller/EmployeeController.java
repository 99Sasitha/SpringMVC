package controller;

import com.mysql.jdbc.Connection;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.EmpModel;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import static org.springframework.test.web.client.match.MockRestRequestMatchers.method;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import util.GetConnection;

@Controller
public class EmployeeController {

    GetConnection con = new GetConnection();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conector());
    ModelAndView mav = new ModelAndView();
    int id;
    List empList;

    //____________________________________SELECT_________________________________________________________________
    @RequestMapping("index.htm")
    public ModelAndView EmployeeList() {

        String sql = "SELECT * FROM employees";
        empList = this.jdbcTemplate.queryForList(sql);
        mav.addObject("list", empList); //data send karanna
        mav.setViewName("index");
        return mav;

    }

    //____________________________________________________________________________________________________________
    @RequestMapping("insert.htm")
    public String addEmployee() {

        return "insert";
    }

//    @RequestMapping(value = "insert.htm", method = RequestMethod.GET)
//    public ModelAndView addEmployee() {
//
//        mav.addObject(new EmpModel());
//        mav.setViewName("insert");
//        return mav;
//    }
    //_____________________________________________INSERT_______________________________________________________________________ 
    @RequestMapping(value = "insert.htm", method = RequestMethod.POST)
    public ModelAndView addEmployee(EmpModel e) {

        String sql = "INSERT INTO employees(name,email)VALUES(?,?)";
        this.jdbcTemplate.update(sql, e.getName(), e.getEmail());
        return new ModelAndView("redirect:/index.htm");
    }

    //_____________________________________________Edit_______________________________________________________________________ 
    @RequestMapping(value = "edit.htm", method = RequestMethod.GET)
    public ModelAndView editEmployee(HttpServletRequest request) {

        id = Integer.parseInt(request.getParameter("id"));
        String sql = "SELECT * FROM employees  WHERE id=" + id;
        empList = this.jdbcTemplate.queryForList(sql);
        mav.addObject("list", empList);
        mav.setViewName("edit");
        return mav;
    }

    //_____________________________________________Update_______________________________________________________________________ 
    @RequestMapping(value = "edit.htm", method = RequestMethod.POST)
    public ModelAndView editEmployee(EmpModel e) {

        String sql = "UPDATE employees SET name=?,email=? WHERE id=" + id;
        this.jdbcTemplate.update(sql, e.getName(), e.getEmail());
        return new ModelAndView("redirect:/index.htm");

    }

    //_____________________________________________DELETE_______________________________________________________________________ 
    @RequestMapping("delete.htm")
    public ModelAndView deleteEmployee(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "DELETE FROM employees WHERE id=" + id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");
    }

    //______________________________________________________________________________________________________________________
    @RequestMapping("contactUs.htm")
    public String contactPage() {

        return "contactUs";
    }

    //______________________________________________________________________________________________________________________
    @RequestMapping("aboutUs.htm")
    public String aboutPage() {

        return "aboutUs";
    }

}

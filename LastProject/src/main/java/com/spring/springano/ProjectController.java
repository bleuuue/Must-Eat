package com.spring.springano;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.project.impl.ProjectDAO;
import com.spring.project.impl.ProjectDO;

@Controller
public class ProjectController {
	
	@Autowired
	ProjectDAO pdao;
	
	@RequestMapping(value="/main.do")
	public String showMain() {
		System.out.println("--> ProjectController: showMain()");
		return "main";
	}
	
	@RequestMapping(value="/list.do")
	public String showList(ProjectDO pdo, Model model) {
		System.out.println("--> ProjectController: showList()");
		
		ArrayList<ProjectDO> plist = pdao.getRestaurantList();
		model.addAttribute("plist", plist);
		
		return "list";
	}
	
	@RequestMapping(value="/info.do")
	public String getRestaurant(ProjectDO pdo, Model model) {
		System.out.println("--> ProjectController: getRestaurant()");
		System.out.println("seq : " + pdo.getSeq());
		
		ProjectDO restaurant = pdao.getRestaurant(pdo);
		model.addAttribute("restaurant", restaurant);
		
		return "info";
	}
	
	@RequestMapping(value="/write.do")
	public String writeInfo() {
		System.out.println("--> ProjectController: writeInfo()");
		return "write";
	}
	
	@RequestMapping(value="/insertProc.do", method=RequestMethod.POST)
	public String insertProcBoardGet(ProjectDO pdo) {
		System.out.println("--> ProjectController: insertProcGet()");
		System.out.println("title : " + pdo.getTitle());
		
		pdao.insertRestaurant(pdo);
		
		return "redirect:list.do";
	}
	
	@RequestMapping(value="/modifyRestaurant.do")
	public String modifyBoard(ProjectDO pdo, Model model) {
		System.out.println("--> ProjectController: modifyBoard()");
		System.out.println("seq : " + pdo.getSeq());
		
		ProjectDO restaurant = pdao.getRestaurant(pdo);
		model.addAttribute("restaurant", restaurant);
		
		return "modifyRestaurant";
	}
	
	@RequestMapping(value="/modifyProc.do")
	public String modifyProcBoard(ProjectDO pdo, Model model) {
		System.out.println("--> ProjectController: modifyProcBoard() ");
		System.out.println("seq : " + pdo.getSeq());
		System.out.println("title : " + pdo.getTitle());
		System.out.println("content : " + pdo.getContent());
		
		pdao.updateRestaurant(pdo);
		
		return "redirect:list.do";
	}
	
	@RequestMapping(value="/deleteRestaurant.do")
	public String deleteBoard(ProjectDO pdo, ProjectDAO bdao, Model model) {
		
		System.out.println("--> ProjectController: deleteBoard()");
		System.out.println("seq : " + pdo.getSeq());
		
		pdao.deleteRestaurant(pdo);
		
		return "redirect:list.do";
	}
	
	@RequestMapping(value="/searchRestaurant.do")
	public String searchRestaurant(@RequestParam(value="searchCon") String searchCon,
								@RequestParam(value="searchKey") String searchKey, Model model) {
		
		System.out.println("--> ProjectController : searchRestaurant()");
		
		System.out.println("searchCon : " + searchCon);
		System.out.println("searchKey : " + searchKey);
		
		ArrayList<ProjectDO> plist = pdao.searchRestaurant(searchCon, searchKey);
		model.addAttribute("plist", plist);

		return "list";
	}
	
	@RequestMapping(value="/sortRestaurant.do")
	public String searchRestaurant(@RequestParam(value="searchKey") String searchKey, Model model) {
		
		System.out.println("--> ProjectController : orderRestaurant()");
		
		System.out.println("searchKey : " + searchKey);
		
		ArrayList<ProjectDO> plist = pdao.sortRestaurant(searchKey);
		model.addAttribute("plist", plist);

		return "list";
	}
}

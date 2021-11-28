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
	public String showList() {
		System.out.println("--> ProjectController: showList()");
		return "list";
	}
	
	@RequestMapping(value="/info.do")
	public String getRestaurant() {
		System.out.println("--> ProjectController: getRestaurant()");
		return "info";
	}
	
	@RequestMapping(value="/write.do")
	public String writeInfo() {
		System.out.println("--> ProjectController: writeInfo()");
		return "write";
	}
	
	@RequestMapping(value="/insertBoard.do")
	public String insertBoard() {
		System.out.println("--> [BoardControllerSpring] BoardController:insertBoard()");
		return "insertBoardView";
	}
	
	@RequestMapping(value="/insertProcBoard.do", method=RequestMethod.GET)
	public String insertProcBoardGet(ProjectDO pdo) {
		System.out.println("--> [BoardControllerSpring] BoardController: insertProcBoardGet()");
		System.out.println("title : " + pdo.getTitle());
		System.out.println("writer : " + pdo.getWriter());
		System.out.println("content : " + pdo.getContent());

		pdao.insertBoard(pdo);
		
		return "redirect:getBoardList.do";
	}
	
	@RequestMapping(value="/insertProcBoard.do", method=RequestMethod.POST)
	public String insertProcBoardPost(ProjectDO pdo) {
		System.out.println("--> [BoardControllerSpring] BoardController: insertProcBoardPost()");		
		System.out.println("title : " + pdo.getTitle());
		System.out.println("writer : " + pdo.getWriter());
		System.out.println("content : " + pdo.getContent());

		pdao.insertBoard(pdo);
		
		return "redirect:getBoardList.do";
	}
	
	@RequestMapping(value="/getBoardList.do")
	public String getBoardList(ProjectDO pdo, Model model) {
		System.out.println("--> [BoardControllerSpring] BoardController:getBoardList()");

		ArrayList<ProjectDO> blist = pdao.getBoardList();
		model.addAttribute("blist", blist);
		
		return "getBoardListView";
	}
	
	@RequestMapping(value="getBoard.do")
	public String getBoard(ProjectDO pdo, ProjectDAO bdao, Model model) {
		System.out.println("--> [BoardControllerSpring] BoardController: getBoard()");
		System.out.println("seq : " + pdo.getSeq());
		
		ProjectDO board = pdao.getBoard(pdo);
		model.addAttribute("board", board);
		
		return "getBoardView";
	}
	
	@RequestMapping(value="/modifyBoard.do")
	public String modifyBoard(ProjectDO pdo, Model model) {
		System.out.println("--> [BoardControllerSpring] BoardController : modifyBOard()");
		System.out.println("seq : " + pdo.getSeq());
		
		ProjectDO board = pdao.getBoard(pdo);
		model.addAttribute("board", board);
		
		return "modifyBoardView";
	}
	
	@RequestMapping(value="/modifyProcBoard.do")
	public String modifyProcBoard(ProjectDO pdo, Model model) {
		System.out.println("--> [BoardControllerSpring] BoardController: modifyProcBoard() ");
		System.out.println("seq : " + pdo.getSeq());
		System.out.println("title : " + pdo.getTitle());
		System.out.println("content : " + pdo.getContent());
		
		pdao.updateBoard(pdo);
		
		return "redirect:getBoardList.do";
	}
	
	@RequestMapping(value="/deleteBoard.do")
	public String deleteBoard(ProjectDO pdo, ProjectDAO bdao, Model model) {
		
		System.out.println("--> [BoardControllerSpring] DeleteBoardController : deleteBoard()");
		System.out.println("seq : " + pdo.getSeq());
		
		pdao.deleteBoard(pdo);
		
		return "redirect:getBoardList.do";
	}
	
	@RequestMapping(value="/searchBoardList.do")
	public String searchBoardList(@RequestParam(value="searchCon") String searchCon,
								@RequestParam(value="searchKey") String searchKey,
								ProjectDAO bdao, Model model) {
		
		System.out.println("--> [BoardControllerSpring] BoardController : searchBoardList()");
		
		System.out.println("searchCon : " + searchCon);
		System.out.println("searchKey : " + searchKey);
		
		ArrayList<ProjectDO> blist = pdao.searchBoardList(searchCon, searchKey);
		model.addAttribute("blist", blist);
		
		//return "redirect:getBoardList.do";
		return "getBoardListView";
	}
}

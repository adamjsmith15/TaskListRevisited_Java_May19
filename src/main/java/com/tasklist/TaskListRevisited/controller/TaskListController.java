package com.tasklist.TaskListRevisited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tasklist.TaskListRevisited.objects.Task;
import com.tasklist.TaskListRevisited.objects.User;
import com.tasklist.TaskListRevisited.repositories.TaskRepository;
import com.tasklist.TaskListRevisited.repositories.UserRepository;

@Controller
public class TaskListController {
	
	@Autowired
	UserRepository userRep;
	@Autowired
	TaskRepository taskRep;
	
	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/adduser")
	public ModelAndView addUser(@RequestParam("email") String email, @RequestParam("password") String password) {
		userRep.save(new User(email, password));
		return new ModelAndView("redirect:/nouser");
	}
	@RequestMapping("/addtask")
	public ModelAndView addTask(@RequestParam("userid")Integer i, @RequestParam("description")String d, @RequestParam("duedate")String dd) {
		taskRep.save(new Task(i,d,dd));
		return new ModelAndView("redirect:/nouser");
	}
	@RequestMapping("/gotoaddtasks")
	public ModelAndView goToTaskAdd() {
		
		return new ModelAndView("addtask","users",userRep.findAll());
	}
	
	@RequestMapping("/nouser")
	public ModelAndView noUserTaskList() {
		
		return new ModelAndView("tasklist", "task" , userRep.findAll());
	}
	
	@RequestMapping("/complete")
	public ModelAndView completeTask(@RequestParam("id") Integer id) {
		Task t = taskRep.findById(id).get();
		t.setCompleted(1);
		t.setFormattedComplete(1);
		taskRep.save(t);
		return new ModelAndView("redirect:/nouser");
	}
	
	@RequestMapping("/deleteuser")
	public ModelAndView deleteUser(@RequestParam("id") Integer id) {
		User u = userRep.findById(id).get();
		userRep.delete(u);
		return new ModelAndView("redirect:/nouser");
	}
	
	@RequestMapping("/addusertask")
	public ModelAndView addTaskByUser(@RequestParam("id") Integer id) {
		User u = userRep.findById(id).get();
		ModelAndView mv = new ModelAndView("addtask", "add", u);
		mv.addObject("users",userRep.findAll());
		return mv;
	}

}

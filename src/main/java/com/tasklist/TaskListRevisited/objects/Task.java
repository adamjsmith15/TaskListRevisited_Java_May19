package com.tasklist.TaskListRevisited.objects;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="task_list")
public class Task {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(nullable=false)
	private Integer id;
	private Integer userid;
	private String description;
	private String duedate;
	private Integer completed;
	@ManyToOne(optional=false)
	// this join name= id is referencing the user pojo
	@JoinColumn(name="userid", insertable = false, updatable = false)
	private User user;
	private String formattedcomplete;
	
	public Task() {
		
	}

	public Task(Integer id, Integer userid, String description, String duedate, Integer completed) {
		this.id = id;
		this.userid = userid;
		this.description = description;
		this.duedate = duedate;
		this.completed = completed;
		setFormattedComplete(completed);
	}
	
	public Task(Integer userid, String description, String duedate, Integer completed) {
		this.userid = userid;
		this.description = description;
		this.duedate = duedate;
		this.completed = completed;
		setFormattedComplete(completed);
	}
	public Task(Integer userid, String description, String duedate) {
		this.userid = userid;
		this.description = description;
		this.duedate = duedate;
		this.completed = 0;
		setFormattedComplete(completed);
	}
	

	public Task(Integer id, Integer userid, String description, String duedate, Integer completed, User user,
			String formattedComplete) {
		this.id = id;
		this.userid = userid;
		this.description = description;
		this.duedate = duedate;
		this.completed = 0;
		this.user = user;
		this.formattedcomplete = "Not Complete";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDuedate() {
		return duedate;
	}

	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}

	public Integer getCompleted() {
		return completed;
	}

	public void setCompleted(Integer completed) {
		this.completed = completed;
	}
	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	

	public String getFormattedComplete() {
		return formattedcomplete;
	}

	public void setFormattedComplete(Integer completed) {
		if(completed < 1) {
			this.formattedcomplete = "Not Complete";
		}else {
			this.formattedcomplete = "Complete";
		}

	}

	@Override
	public String toString() {
		return description + ", duedate=" + duedate
				+ ", completed=" + completed + "]";
	}
	
	

}

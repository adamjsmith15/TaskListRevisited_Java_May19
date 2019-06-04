package com.tasklist.TaskListRevisited.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tasklist.TaskListRevisited.objects.Task;

public interface TaskRepository extends JpaRepository<Task, Integer>{

}

package com.tasklist.TaskListRevisited.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tasklist.TaskListRevisited.objects.User;

public interface UserRepository extends JpaRepository<User, Integer>{

}

package com.example.demo.repository;

import com.example.demo.model.Test;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;


public interface TestRepository extends JpaRepository<Test,Integer> {

    Optional<Test> findByUserId(int userId);
}

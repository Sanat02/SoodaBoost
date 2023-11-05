package com.example.demo.repository;

import com.example.demo.model.KeyWords;
import org.springframework.data.jpa.repository.JpaRepository;

public interface KeyWordsRepository extends JpaRepository<KeyWords, Integer> {
}

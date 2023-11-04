package com.example.demo.repository;

import com.example.demo.model.Complain;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ComplainRepository extends JpaRepository<Complain,Integer> {
    boolean existsComplainBySenderIdAndQuestionId(int senderId,int questionId);
}

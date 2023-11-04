package com.example.demo.repository;


import com.example.demo.model.QuestionsKey;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface QuestionsKeyRepository extends JpaRepository<QuestionsKey,Integer> {
    List<QuestionsKey> findQuestionsKeyByKeyWordsId(int keyId);
}

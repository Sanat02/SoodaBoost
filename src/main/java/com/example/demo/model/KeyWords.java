package com.example.demo.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@Entity
@Table(name = "keywords")
public class KeyWords {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;


    private String word;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "keyWords")
    private List<QuestionsKey> questionsKeys;
}

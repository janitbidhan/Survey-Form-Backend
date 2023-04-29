package com.swe.assignment3.repository;

import com.swe.assignment3.models.Survey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/*
Team:
Janit Bidhan
Badri Nath Gaur
Description: SurveyRepository file for Spring Boot Application for Interacting with JPA repo.
 */
@Repository
public interface SurveyRepository extends JpaRepository<Survey, Long> {
}


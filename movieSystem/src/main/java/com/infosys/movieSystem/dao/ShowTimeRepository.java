package com.infosys.movieSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.infosys.movieSystem.bean.ShowTime;

@Repository
public interface ShowTimeRepository extends JpaRepository<ShowTime, Integer> {

    // Retrieve the maximum showTimeId
    @Query("SELECT max(showTimeId) FROM ShowTime")
    Integer getLastId();

    // Retrieve all showTimeIds
    @Query("SELECT showTimeId FROM ShowTime")
    List<Integer> getAllShowTimeIds();

    // Retrieve showTimeName by showTimeId
    @Query("SELECT showTimeName FROM ShowTime WHERE showTimeId = ?1")
    String getShowTimeName(Integer showTimeId);

    // Retrieve a ShowTime entity by showTimeName
    @Query("SELECT a FROM ShowTime a WHERE a.showTimeName = ?1")
    ShowTime getShowTime(String showTimeName);
}

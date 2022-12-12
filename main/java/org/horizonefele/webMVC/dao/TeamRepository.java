package org.horizonefele.webMVC.dao;

import org.horizonefele.webMVC.entities.Team;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.*;

public interface TeamRepository extends JpaRepository <Team, Long>{
	@Query("select t from Team t where t.name like :x")
	public List<Team> findByName(@Param("x")String mc);
}

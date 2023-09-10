package com.kh.myproject.community.accompany.repository;

import com.kh.myproject.community.accompany.entity.Accompany;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface AccompanyRepository extends JpaRepository <Accompany, Long>{

@Modifying
    @Transactional
    @Query(value = "update Accompany ac" +
    " set ac.ac_region = :#{#accompany.ac_region}," +
            " ac.ac_startdate = :#{#accompany.ac_startdate}," +
            " ac.ac_enddate = :#{#accompany.ac_enddate}," +
            " ac.ac_picture = :#{#accompany.ac_picture}," +
            " ac.ac_title = :#{#accompany.ac_title}," +
            " ac.ac_text = :#{#accompany.ac_text}," +
            " ac.ac_people = :#{#accompany.ac_people}" +
            " where ac.ac_num = :#{#accompany.ac_num}", nativeQuery = true)
void updateAccompany(@Param("accompany") Accompany accompany);


    @Query("select a from Accompany a where a.ac_text LIKE :searchName OR a.ac_title LIKE :searchName ORDER BY a.ac_regdate DESC")
    List<Accompany> findByAc_textOrAc_titleOrderBOrderByAc_regdateDesc(@Param("searchName")String searchName);

    @Query("select max(a.ac_num) from Accompany a")
    int findTopByAc_num();


    @Transactional
    @Modifying
    @Query("update Accompany a set a.ac_viewcount = a.ac_viewcount+1 where a.ac_num = :ac_num")
    void increaseViewCount(@Param("ac_num")Long ac_num);

    @Query("select max(a.ac_viewcount) from Accompany a")
    int findTopByAc_viewcount();

//    @Query("select Accompany a.*, count(Comment co.ac_num) count from accompany a join Comment co on a.ac_num = co.ac_num group by ac.ac_num order by count desc")
//@Query("SELECT a, COUNT(c.co_number) AS commentCount " +
//        "FROM Accompany a " +
//        "LEFT JOIN Comment c ON a.ac_num = c.co_number " +
//        "GROUP BY a.ac_num " +
//        "ORDER BY commentCount DESC")
// List<Accompany> getAccompaniesBy

    @Query("select a from Accompany a where now() between a.ac_startdate and a.ac_enddate")
    List<Accompany> findByAc_startdateIsBetweenAndAc_enddate();

    @Query("select a from Accompany a where not now() between a.ac_startdate and a.ac_enddate")
    List<Accompany> findByAc_startdateIsFalseBetweenAndAc_enddate();

}


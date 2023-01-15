package com.fastfood.fastfood.repository;

import com.fastfood.fastfood.entities.CarryBox;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CarryBoxRepository extends JpaRepository<CarryBox, Integer> {

    @Query("select count(boxId) from CarryBox")
    public Long getCarryBoxCount();

    @Query("select max(boxId) from CarryBox")
    public Long getMaxBoxId();
    public CarryBox findByBoxId(int boxId);

}
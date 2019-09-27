package com.caigicungco.repository;


import com.caigicungco.entity.CPUEntity;
import com.caigicungco.entity.ProducerEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProducerRepository extends JpaRepository<ProducerEntity,Long> {

}

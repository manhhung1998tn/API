package com.caigicungco.repository.custom.impl;


import com.caigicungco.builder.ElectronicSearchBuilder;
import com.caigicungco.entity.ElectronicEntity;
import com.caigicungco.repository.custom.ElectronicRepositoryCustom;
import org.springframework.beans.factory.annotation.Autowired;

import javax.management.Query;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

public class ElectronicRepositoryImpl implements ElectronicRepositoryCustom {

    @PersistenceContext
    EntityManager entityManager;
    @Override



    public List<ElectronicEntity> search(ElectronicSearchBuilder builder) {

        String hql = "SELECT e from com.caigicungco.entity.ElectronicEntity as e " +
                "INNER JOIN com.caigicungco.entity.CPUEntity as c ON e.cpu.id = c.id ";

        return entityManager.createQuery(hql).getResultList();
    }

    @Override
    public void removeCPUId(Long cpuId) {
        String hql = "update com.caigicungco.entity.ElectronicEntity as e " +
                "SET e.cpu.id = null " +
                "WHERE e.cpu.id = :id";

        entityManager.createQuery(hql)
                .setParameter("id",cpuId)
                .executeUpdate();
    }
}

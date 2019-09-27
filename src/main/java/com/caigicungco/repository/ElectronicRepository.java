package com.caigicungco.repository;

import com.caigicungco.entity.ElectronicEntity;
import com.caigicungco.repository.custom.ElectronicRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface ElectronicRepository extends JpaRepository<ElectronicEntity,Long>, ElectronicRepositoryCustom {
    List<ElectronicEntity> findByTypeAndHighlightsContainingOrderByCreatedDateAsc(String type,String highlights);
    Optional<ElectronicEntity> findByUri(String uri);

}

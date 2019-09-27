package com.caigicungco.service;


import com.caigicungco.DTO.ElectronicDTO;
import com.caigicungco.conver.ElectronicConver;
import com.caigicungco.entity.ElectronicEntity;
import com.caigicungco.repository.ElectronicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ElectronicService {

    @Autowired
    private ElectronicRepository repository;

    @Autowired
    private ElectronicConver electronicConver;

    public List<ElectronicDTO> findAll(){
        return repository.findAll()
                .stream().map(electronicConver::toDTO)
                .collect(Collectors.toList());
    }

    public ElectronicDTO add(ElectronicDTO dto){
        electronicConver.setAdd(dto,"admin");
        ElectronicEntity entity = electronicConver.toEtity(dto);
        return electronicConver.toDTO(repository.save(entity));
    }

    public ElectronicDTO findByUri(String url){
        return electronicConver.toDTO(repository.findByUri(url).get());
    }

    public List<ElectronicDTO> findElectronic(String type, String highlight) {

        List<ElectronicEntity> list = repository.findByTypeAndHighlightsContainingOrderByCreatedDateAsc(type, highlight);


        return list.stream()
                .map(electronicConver::toDTO)
                .collect(Collectors.toList());
//        return repository
//                .findByTypeAndHighlightsContainingOrderByCreatedDateAsc(type,highlight)
//                .stream().map(electronicConver::toDTO)
//                .collect(Collectors.toList());
    }

}

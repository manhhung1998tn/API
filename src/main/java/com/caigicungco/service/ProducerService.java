package com.caigicungco.service;


import com.caigicungco.DTO.ProducerDTO;
import com.caigicungco.conver.ProducerConver;
import com.caigicungco.entity.ProducerEntity;
import com.caigicungco.repository.ProducerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ProducerService {

    @Autowired
    private ProducerRepository producerRepository;

    @Autowired
    private ProducerConver producerConver;


    public ProducerDTO add(ProducerDTO producerdto,String username){
        producerConver.setAdd(producerdto,username);
        ProducerEntity producerEntity = producerRepository.save(producerConver.toEtity(producerdto));
        return producerConver.toDTO(producerEntity);
    }

    public List<ProducerDTO> finAll(){
        return producerRepository.findAll().stream().map(producerConver::toDTO).collect(Collectors.toList());
    }
    public boolean delete(Long id){
        try{
            producerRepository.deleteById(id);
        }catch (Exception e){
            return false;
        }
        return true;
    }

    public ProducerDTO findById(Long id){
        Optional<ProducerEntity> producerEntity = producerRepository.findById(id);
        if(!producerEntity.isPresent()){
            return null;
        }

        ProducerDTO producerdto = producerConver.toDTO(producerEntity.get());



        return producerdto;
    }


}

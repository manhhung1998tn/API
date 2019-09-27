package com.caigicungco.service;

import com.caigicungco.DTO.GPUDTO;
import com.caigicungco.conver.GPUConver;
import com.caigicungco.entity.GPUEntity;
import com.caigicungco.repository.GPURepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class GPUService {

    @Autowired
    private GPURepository gpuRepository;

    @Autowired
    private GPUConver gpuConver;

    public List<GPUDTO> findAll(){
        List<GPUEntity> gpuEntities = gpuRepository.findAll();
        return gpuEntities.stream().map(gpuConver::toDTO).collect(Collectors.toList());
    }


    public GPUDTO add(GPUDTO dto, String username) {
        gpuConver.setAdd(dto,username);

        GPUEntity gpuEntity = gpuRepository.save(gpuConver.toEtity(dto));
        if(gpuEntity == null){
            return null;
        }
        return gpuConver.toDTO(gpuEntity);
    }

    public boolean delete(Long id) {
        try{
            gpuRepository.deleteById(id);
        }catch (Exception e){
            return false;
        }
        return true;
    }
}

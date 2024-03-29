package com.caigicungco.conver;

import com.caigicungco.DTO.CPUDTO;
import com.caigicungco.DTO.ElectronicDTO;
import com.caigicungco.DTO.GPUDTO;
import com.caigicungco.DTO.ProducerDTO;
import com.caigicungco.entity.ElectronicEntity;
import org.apache.commons.lang.StringUtils;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.stream.Collectors;


@Component
public class ElectronicConver extends AbstractConver<ElectronicEntity,ElectronicDTO> {


    @Autowired
    VersionConver versionConver;

    @Override
    public ElectronicDTO toDTO(ElectronicEntity entity) {

        if(entity == null){
            return null;
        }

        ModelMapper modelMapper = new ModelMapper();
        ElectronicDTO dto = modelMapper.map(entity,ElectronicDTO.class);

        dto.setDescribes(converToArray(entity.getDescribes()));
        dto.setHighlights(converToArray(entity.getHighlights()));
        dto.setHighlights(converToArray(entity.getHighlights()));
        dto.setSecondaryMamory(converToArray(entity.getSecondaryMamory()));
        dto.setPortConnector(converToArray(entity.getPortConnector()));


        if(entity.getVersions() != null){
            dto.setVersions(entity.getVersions().stream()
                    .map(versionConver::toDTO)
                    .collect(Collectors.toList()));
        }

        if(entity.getCpu() != null){
            dto.setCpu(modelMapper.map(entity.getCpu(), CPUDTO.class));
            dto.getCpu().setElectronics(null);
        }

        if(entity.getGpu() != null){
            dto.setGpu(modelMapper.map(entity.getGpu(), GPUDTO.class));
            dto.getGpu().setElectronics(null);
        }

        if(entity.getProducer() != null){
            dto.setProducer(modelMapper.map(entity.getProducer(), ProducerDTO.class));
            dto.getProducer().setElectronics(null);
        }

        return dto;
    }




    @Override
    public ElectronicEntity toEtity(ElectronicDTO dto) {
        ModelMapper modelMapper = new ModelMapper();
        ElectronicEntity entity = modelMapper.map(dto,ElectronicEntity.class);

        entity.setDescribes(converToString(dto.getDescribes()));
        entity.setHighlights(converToString(dto.getHighlights()));
        entity.setHighlights(converToString(dto.getHighlights()));
        entity.setSecondaryMamory(converToString(dto.getSecondaryMamory()));
        entity.setPortConnector(converToString(dto.getPortConnector()));

        return entity;
    }
}

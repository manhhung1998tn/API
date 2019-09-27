package com.caigicungco.conver;

import com.caigicungco.DTO.BaseDTO;
import org.apache.commons.lang.StringUtils;
import org.modelmapper.ModelMapper;

import java.util.Date;

abstract class AbstractConver<E,D extends BaseDTO> {

    protected static ModelMapper modelMapper = new ModelMapper();

    abstract D toDTO(E entity);
    abstract E toEtity(D dto);

    public String[] converToArray(String data){
        if(StringUtils.isNotBlank(data)){
            return data.split("~");
        }
        return null;
    }

    public  String converToString(String[] data){
        if(data != null){
            return StringUtils.join(data);
        }
        return null;
    }

    public void setAdd(D d,String username){
        d.setCreatedBy(username);
        d.setCreatedDate(new Date(System.currentTimeMillis()));
    }


    public void setUpdate(D d,String username){
        d.setId(null);
        d.setModifiedBy(username);
        d.setModifiedDate(new Date(System.currentTimeMillis()));
    }
}

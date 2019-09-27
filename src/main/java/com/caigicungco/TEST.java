package com.caigicungco;

import com.caigicungco.DTO.ElectronicDTO;
import com.caigicungco.api.ElectronicAPI;
import com.caigicungco.conver.ElectronicConver;
import com.caigicungco.entity.ElectronicEntity;

public class TEST {



    public static void main(String[] args) {
        ElectronicConver electronicConver = new ElectronicConver();


        ElectronicEntity entity = ElectronicAPI.initELectronic();
        entity.setVersions(null);
        ElectronicDTO electronicDTO = electronicConver.toDTO(entity);
        electronicConver.setUpdate(electronicDTO,"Test Update");


        System.out.println("");


        /*


        List<String> list1 = Arrays.asList(new String[]{"ahihi"});
        System.out.println(list1.isEmpty());
        //list1 = null;
        System.out.println(list1.isEmpty());
        list1 = new ArrayList<>();
        System.out.println(list1.isEmpty());
        */
    }
}

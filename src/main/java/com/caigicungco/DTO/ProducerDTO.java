package com.caigicungco.DTO;

import java.util.List;

public class ProducerDTO extends BaseDTO {
    private String name;
    private String code;
    private String notes;
    private String address;
    private List<ElectronicDTO> electronics;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<ElectronicDTO> getElectronics() {
        return electronics;
    }

    public void setElectronics(List<ElectronicDTO> electronics) {
        this.electronics = electronics;
    }
}

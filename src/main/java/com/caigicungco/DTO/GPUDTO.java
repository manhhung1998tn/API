package com.caigicungco.DTO;

import java.util.List;

public class GPUDTO extends BaseDTO{
    private String name;

    private Integer core;

    private Double maxClock;

    private Double baseClock;

    private List<ElectronicDTO> electronics;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCore() {
        return core;
    }

    public void setCore(Integer core) {
        this.core = core;
    }

    public Double getMaxClock() {
        return maxClock;
    }

    public void setMaxClock(Double maxClock) {
        this.maxClock = maxClock;
    }

    public Double getBaseClock() {
        return baseClock;
    }

    public void setBaseClock(Double baseClock) {
        this.baseClock = baseClock;
    }

    public List<ElectronicDTO> getElectronics() {
        return electronics;
    }

    public void setElectronics(List<ElectronicDTO> electronics) {
        this.electronics = electronics;
    }
}

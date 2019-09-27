package com.caigicungco.entity;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.List;
import java.util.Locale;

@Entity
@Table(name = "tblelectronic",uniqueConstraints = @UniqueConstraint(columnNames = "uri"))
public class ElectronicEntity extends BaseEntity{


    @Column(name = "uri") private String uri;

    @Column(name = "name") private String name;

    @Column(name = "picture_title") private String pictureTitle;

    @Column(name = "height") private int height;

    @Column(name = "width") private int width;

    @Column(name = "thickness") private int thickness;// dày

    @Column(name = "guarantee") private int guarantee; // bảo hành theo số tháng

    @Column(name = "type") private String type;

    @Column(name = "status") private int status;//còn bán hay hết

    @Column(name = "highlights") private String highlights;// 1-HOT|2-BanChay|3-NoiBat

    @Column(name = "describes",length = 1028) private String describes; // miêu tả - array

    @Column(name = "ram") private int ram;

    @Column(name = "secondary_mamory") private String secondaryMamory;// bộ nhớ ngoài

    @Column(name = "port_connector",length = 1028) private String portConnector;// cổng kết nối

    @Column(name = "size_display") private double sizeDisplay; // đơn vị "

    @Column(name = "resolution_display") private String resolutionDisplay;


    @ManyToOne
    @JoinColumn(name = "category_id")
    @Fetch(FetchMode.JOIN)
    private CategoryEntity category;

    @ManyToOne
    @JoinColumn(name = "gpu_id")
    @Fetch(FetchMode.JOIN)
    private GPUEntity gpu;

    @ManyToOne
    @JoinColumn(name = "cpu_id")
    @Fetch(FetchMode.JOIN)
    private CPUEntity cpu;


    @ManyToOne
    @Fetch(FetchMode.JOIN)
    @JoinColumn(name = "producer_id")
    private ProducerEntity producer;

    @OneToMany(mappedBy = "electronic",cascade = CascadeType.ALL)
    private List<VersionEntity> versions;

    @OneToMany(mappedBy = "electronic",fetch = FetchType.LAZY)
    private List<GoodsIssue_ElectronicEntity> goodsIssue_electronics;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPictureTitle() {
        return pictureTitle;
    }

    public void setPictureTitle(String pictureTitle) {
        this.pictureTitle = pictureTitle;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getThickness() {
        return thickness;
    }

    public void setThickness(int thickness) {
        this.thickness = thickness;
    }

    public int getGuarantee() {
        return guarantee;
    }

    public void setGuarantee(int guarantee) {
        this.guarantee = guarantee;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getHighlights() {
        return highlights;
    }

    public void setHighlights(String highlights) {
        this.highlights = highlights;
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes;
    }

    public int getRam() {
        return ram;
    }

    public void setRam(int ram) {
        this.ram = ram;
    }

    public String getSecondaryMamory() {
        return secondaryMamory;
    }

    public void setSecondaryMamory(String secondaryMamory) {
        this.secondaryMamory = secondaryMamory;
    }

    public String getPortConnector() {
        return portConnector;
    }

    public void setPortConnector(String portConnector) {
        this.portConnector = portConnector;
    }

    public double getSizeDisplay() {
        return sizeDisplay;
    }

    public void setSizeDisplay(double sizeDisplay) {
        this.sizeDisplay = sizeDisplay;
    }

    public String getResolutionDisplay() {
        return resolutionDisplay;
    }

    public void setResolutionDisplay(String resolutionDisplay) {
        this.resolutionDisplay = resolutionDisplay;
    }

    public GPUEntity getGpu() {
        return gpu;
    }

    public void setGpu(GPUEntity gpu) {
        this.gpu = gpu;
    }

    public CPUEntity getCpu() {
        return cpu;
    }

    public void setCpu(CPUEntity cpu) {
        this.cpu = cpu;
    }

    public ProducerEntity getProducer() {
        return producer;
    }

    public void setProducer(ProducerEntity producer) {
        this.producer = producer;
    }

    public List<VersionEntity> getVersions() {
        return versions;
    }

    public void setVersions(List<VersionEntity> versions) {
        this.versions = versions;
    }

    public List<GoodsIssue_ElectronicEntity> getGoodsIssue_electronics() {
        return goodsIssue_electronics;
    }

    public void setGoodsIssue_electronics(List<GoodsIssue_ElectronicEntity> goodsIssue_electronics) {
        this.goodsIssue_electronics = goodsIssue_electronics;
    }


}

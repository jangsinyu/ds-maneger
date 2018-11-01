package com.mr.model;

public class TMallProductImage {
    //编号
    private Integer id;
    //作用
    private String zy;
    //商品id
    private Integer shpId;
    //图片地址
    private String url;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getZy() {
        return zy;
    }

    public void setZy(String zy) {
        this.zy = zy == null ? null : zy.trim();
    }

    public Integer getShpId() {
        return shpId;
    }

    public void setShpId(Integer shpId) {
        this.shpId = shpId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    @Override
    public String toString() {
        return "TMallProductImage{" +
                "id=" + id +
                ", zy='" + zy + '\'' +
                ", shpId=" + shpId +
                ", url='" + url + '\'' +
                '}';
    }
}
/**
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. <br/>
 */
package com.icinfo.frk.business.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.icinfo.framework.mybatis.mapper.annotation.Before;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

/**
 * 描述:  cd_dc_clxx_valid 对应的实体类.<br>
 * WARNING：不是表中字段的属性必须加@Transient注解
 * @author framework generator
 * @date 2017年07月06日
 */
@Table(name = "frk.cd_dc_clxx_valid")
public class CdDcClxxValid implements Serializable {
    @Column(name = "id")
    private String id;

    @Column(name = "hash_unique")
    private String hashUnique;

    @Column(name = "frwybs")
    private String frwybs;

    @Column(name = "syzbh")
    private String syzbh;

    @Column(name = "syzmc")
    private String syzmc;

    @Column(name = "syzmcen")
    private String syzmcen;

    @Column(name = "syzdz")
    private String syzdz;

    @Column(name = "syzdzen")
    private String syzdzen;

    @Column(name = "syzdh")
    private String syzdh;

    @Column(name = "jdchpzl")
    private String jdchpzl;

    @Column(name = "jdchphm")
    private String jdchphm;

    @Column(name = "jcdpp")
    private String jcdpp;

    @Column(name = "jdcxh")
    private String jdcxh;

    @Column(name = "jdcsbdh")
    private String jdcsbdh;

    @Column(name = "jdcfdjh")
    private String jdcfdjh;

    @Column(name = "jdclx")
    private String jdclx;

    @Column(name = "jdcys")
    private String jdcys;

    @Column(name = "jdcsyxz")
    private String jdcsyxz;

    @Column(name = "jdcdjrq")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date jdcdjrq;

    @Column(name = "datasrdep")
    private String datasrdep;

    @Column(name = "datasource")
    private String datasource;

    @Column(name = "datakeycontent")
    private String datakeycontent;

    @Column(name = "createtime")
    private String createtime;

    @Column(name = "updatetime")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date updatetime;

    private static final long serialVersionUID = 1L;

    /**
     * @return id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return hash_unique
     */
    public String getHashUnique() {
        return hashUnique;
    }

    /**
     * @param hashUnique
     */
    public void setHashUnique(String hashUnique) {
        this.hashUnique = hashUnique;
    }

    /**
     * @return frwybs
     */
    public String getFrwybs() {
        return frwybs;
    }

    /**
     * @param frwybs
     */
    public void setFrwybs(String frwybs) {
        this.frwybs = frwybs;
    }

    /**
     * @return syzbh
     */
    public String getSyzbh() {
        return syzbh;
    }

    /**
     * @param syzbh
     */
    public void setSyzbh(String syzbh) {
        this.syzbh = syzbh;
    }

    /**
     * @return syzmc
     */
    public String getSyzmc() {
        return syzmc;
    }

    /**
     * @param syzmc
     */
    public void setSyzmc(String syzmc) {
        this.syzmc = syzmc;
    }

    /**
     * @return syzmcen
     */
    public String getSyzmcen() {
        return syzmcen;
    }

    /**
     * @param syzmcen
     */
    public void setSyzmcen(String syzmcen) {
        this.syzmcen = syzmcen;
    }

    /**
     * @return syzdz
     */
    public String getSyzdz() {
        return syzdz;
    }

    /**
     * @param syzdz
     */
    public void setSyzdz(String syzdz) {
        this.syzdz = syzdz;
    }

    /**
     * @return syzdzen
     */
    public String getSyzdzen() {
        return syzdzen;
    }

    /**
     * @param syzdzen
     */
    public void setSyzdzen(String syzdzen) {
        this.syzdzen = syzdzen;
    }

    /**
     * @return syzdh
     */
    public String getSyzdh() {
        return syzdh;
    }

    /**
     * @param syzdh
     */
    public void setSyzdh(String syzdh) {
        this.syzdh = syzdh;
    }

    /**
     * @return jdchpzl
     */
    public String getJdchpzl() {
        return jdchpzl;
    }

    /**
     * @param jdchpzl
     */
    public void setJdchpzl(String jdchpzl) {
        this.jdchpzl = jdchpzl;
    }

    /**
     * @return jdchphm
     */
    public String getJdchphm() {
        return jdchphm;
    }

    /**
     * @param jdchphm
     */
    public void setJdchphm(String jdchphm) {
        this.jdchphm = jdchphm;
    }

    /**
     * @return jcdpp
     */
    public String getJcdpp() {
        return jcdpp;
    }

    /**
     * @param jcdpp
     */
    public void setJcdpp(String jcdpp) {
        this.jcdpp = jcdpp;
    }

    /**
     * @return jdcxh
     */
    public String getJdcxh() {
        return jdcxh;
    }

    /**
     * @param jdcxh
     */
    public void setJdcxh(String jdcxh) {
        this.jdcxh = jdcxh;
    }

    /**
     * @return jdcsbdh
     */
    public String getJdcsbdh() {
        return jdcsbdh;
    }

    /**
     * @param jdcsbdh
     */
    public void setJdcsbdh(String jdcsbdh) {
        this.jdcsbdh = jdcsbdh;
    }

    /**
     * @return jdcfdjh
     */
    public String getJdcfdjh() {
        return jdcfdjh;
    }

    /**
     * @param jdcfdjh
     */
    public void setJdcfdjh(String jdcfdjh) {
        this.jdcfdjh = jdcfdjh;
    }

    /**
     * @return jdclx
     */
    public String getJdclx() {
        return jdclx;
    }

    /**
     * @param jdclx
     */
    public void setJdclx(String jdclx) {
        this.jdclx = jdclx;
    }

    /**
     * @return jdcys
     */
    public String getJdcys() {
        return jdcys;
    }

    /**
     * @param jdcys
     */
    public void setJdcys(String jdcys) {
        this.jdcys = jdcys;
    }

    /**
     * @return jdcsyxz
     */
    public String getJdcsyxz() {
        return jdcsyxz;
    }

    /**
     * @param jdcsyxz
     */
    public void setJdcsyxz(String jdcsyxz) {
        this.jdcsyxz = jdcsyxz;
    }

    /**
     * @return jdcdjrq
     */
    public Date getJdcdjrq() {
        return jdcdjrq;
    }

    /**
     * @param jdcdjrq
     */
    public void setJdcdjrq(Date jdcdjrq) {
        this.jdcdjrq = jdcdjrq;
    }

    /**
     * @return datasrdep
     */
    public String getDatasrdep() {
        return datasrdep;
    }

    /**
     * @param datasrdep
     */
    public void setDatasrdep(String datasrdep) {
        this.datasrdep = datasrdep;
    }

    /**
     * @return datasource
     */
    public String getDatasource() {
        return datasource;
    }

    /**
     * @param datasource
     */
    public void setDatasource(String datasource) {
        this.datasource = datasource;
    }

    /**
     * @return datakeycontent
     */
    public String getDatakeycontent() {
        return datakeycontent;
    }

    /**
     * @param datakeycontent
     */
    public void setDatakeycontent(String datakeycontent) {
        this.datakeycontent = datakeycontent;
    }

    /**
     * @return createtime
     */
    public String getCreatetime() {
        return createtime;
    }

    /**
     * @param createtime
     */
    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    /**
     * @return updatetime
     */
    public Date getUpdatetime() {
        return updatetime;
    }

    /**
     * @param updatetime
     */
    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }
}
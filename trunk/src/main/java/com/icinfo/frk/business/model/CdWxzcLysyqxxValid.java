/**
 * Copyright© 2003-2016 浙江汇信科技有限公司, All Rights Reserved. <br/>
 */
package com.icinfo.frk.business.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 描述:  cd_wxzc_lysyqxx_valid 对应的实体类.<br>
 * WARNING：不是表中字段的属性必须加@Transient注解
 *
 * @author framework generator
 * @date 2017年07月06日
 */
@Table(name = "frk.cd_wxzc_lysyqxx_valid")
public class CdWxzcLysyqxxValid implements Serializable {

  private static final long serialVersionUID = 1L;
  @Column(name = "id")
  private String id;
  @Column(name = "hash_unique")
  private String hashUnique;
  @Column(name = "frwybs")
  private String frwybs;
  @Column(name = "syzmc")
  private String syzmc;
  @Column(name = "syzbh")
  private String syzbh;
  @Column(name = "fsrk")
  private String fsrk;
  @Column(name = "slxz")
  private String slxz;
  @Column(name = "lqdjlx")
  private String lqdjlx;
  @Column(name = "sldjql")
  private String sldjql;
  @Column(name = "slzl")
  private String slzl;
  @Column(name = "xdm")
  private String xdm;
  @Column(name = "lb")
  private String lb;
  @Column(name = "xb")
  private String xb;
  @Column(name = "slmj")
  private BigDecimal slmj;
  @Column(name = "lz")
  private String lz;
  @Column(name = "zlnd")
  private Integer zlnd;
  @Column(name = "zs")
  private Integer zs;
  @Column(name = "zysz")
  private String zysz;
  @Column(name = "slsyq")
  private Integer slsyq;
  @Column(name = "slzzq")
  @JsonFormat(pattern = "yyyy-MM-dd ", timezone = "GMT+8")
  private Date slzzq;
  @Column(name = "slsz")
  private String slsz;
  @Column(name = "lyqzyqlyj")
  private String lyqzyqlyj;
  @Column(name = "slssxz")
  private String slssxz;
  @Column(name = "slsyc")
  private String slsyc;
  @Column(name = "sldd")
  private String sldd;
  @Column(name = "sxrbs")
  private String sxrbs;
  @Column(name = "crrbs")
  private String crrbs;
  @Column(name = "qrlqdjqlnr")
  private String qrlqdjqlnr;
  @Column(name = "lzzbh")
  private String lzzbh;
  @Column(name = "ldbgsqbh")
  private String ldbgsqbh;
  @Column(name = "lqzh")
  private String lqzh;
  @Column(name = "blllzh")
  private String blllzh;
  @Column(name = "zddm")
  private String zddm;
  @Column(name = "dyfs")
  private String dyfs;
  @Column(name = "djlx")
  private String djlx;
  @Column(name = "syqdjyy")
  private String syqdjyy;
  @Column(name = "bdbzzqsw")
  private BigDecimal bdbzzqsw;
  @Column(name = "zwlxqx")
  @JsonFormat(pattern = "yyyy-MM-dd ", timezone = "GMT+8")
  private Date zwlxqx;
  @Column(name = "zgzqqdsshse")
  private String zgzqqdsshse;
  @Column(name = "syqdjsj")
  @JsonFormat(pattern = "yyyy-MM-dd ", timezone = "GMT+8")
  private Date syqdjsj;
  @Column(name = "zxdyywh")
  private String zxdyywh;
  @Column(name = "zxdyyy")
  private String zxdyyy;
  @Column(name = "zxsj")
  @JsonFormat(pattern = "yyyy-MM-dd ", timezone = "GMT+8")
  private Date zxsj;
  @Column(name = "ywh")
  private String ywh;
  @Column(name = "cfjg")
  private String cfjg;
  @Column(name = "cflx")
  private String cflx;
  @Column(name = "cfwj")
  private String cfwj;
  @Column(name = "cfqy")
  @JsonFormat(pattern = "yyyy-MM-dd ", timezone = "GMT+8")
  private Date cfqy;
  @Column(name = "cffw")
  private String cffw;
  @Column(name = "jfywh")
  private String jfywh;
  @Column(name = "jfjg")
  private String jfjg;
  @Column(name = "jfwj")
  private String jfwj;
  @Column(name = "jfwh")
  private String jfwh;
  @Column(name = "datasrdep")
  private String datasrdep;
  @Column(name = "datasource")
  private String datasource;
  @Column(name = "datakeycontent")
  private String datakeycontent;
  @Column(name = "createtime")
  private String createtime;
  @Column(name = "updatetime")
  @JsonFormat(pattern = "yyyy-MM-dd ", timezone = "GMT+8")
  private Date updatetime;

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
   * @return fsrk
   */
  public String getFsrk() {
    return fsrk;
  }

  /**
   * @param fsrk
   */
  public void setFsrk(String fsrk) {
    this.fsrk = fsrk;
  }

  /**
   * @return slxz
   */
  public String getSlxz() {
    return slxz;
  }

  /**
   * @param slxz
   */
  public void setSlxz(String slxz) {
    this.slxz = slxz;
  }

  /**
   * @return lqdjlx
   */
  public String getLqdjlx() {
    return lqdjlx;
  }

  /**
   * @param lqdjlx
   */
  public void setLqdjlx(String lqdjlx) {
    this.lqdjlx = lqdjlx;
  }

  /**
   * @return sldjql
   */
  public String getSldjql() {
    return sldjql;
  }

  /**
   * @param sldjql
   */
  public void setSldjql(String sldjql) {
    this.sldjql = sldjql;
  }

  /**
   * @return slzl
   */
  public String getSlzl() {
    return slzl;
  }

  /**
   * @param slzl
   */
  public void setSlzl(String slzl) {
    this.slzl = slzl;
  }

  /**
   * @return xdm
   */
  public String getXdm() {
    return xdm;
  }

  /**
   * @param xdm
   */
  public void setXdm(String xdm) {
    this.xdm = xdm;
  }

  /**
   * @return lb
   */
  public String getLb() {
    return lb;
  }

  /**
   * @param lb
   */
  public void setLb(String lb) {
    this.lb = lb;
  }

  /**
   * @return xb
   */
  public String getXb() {
    return xb;
  }

  /**
   * @param xb
   */
  public void setXb(String xb) {
    this.xb = xb;
  }

  /**
   * @return slmj
   */
  public BigDecimal getSlmj() {
    return slmj;
  }

  /**
   * @param slmj
   */
  public void setSlmj(BigDecimal slmj) {
    this.slmj = slmj;
  }

  /**
   * @return lz
   */
  public String getLz() {
    return lz;
  }

  /**
   * @param lz
   */
  public void setLz(String lz) {
    this.lz = lz;
  }

  /**
   * @return zlnd
   */
  public Integer getZlnd() {
    return zlnd;
  }

  /**
   * @param zlnd
   */
  public void setZlnd(Integer zlnd) {
    this.zlnd = zlnd;
  }

  /**
   * @return zs
   */
  public Integer getZs() {
    return zs;
  }

  /**
   * @param zs
   */
  public void setZs(Integer zs) {
    this.zs = zs;
  }

  /**
   * @return zysz
   */
  public String getZysz() {
    return zysz;
  }

  /**
   * @param zysz
   */
  public void setZysz(String zysz) {
    this.zysz = zysz;
  }

  /**
   * @return slsyq
   */
  public Integer getSlsyq() {
    return slsyq;
  }

  /**
   * @param slsyq
   */
  public void setSlsyq(Integer slsyq) {
    this.slsyq = slsyq;
  }

  /**
   * @return slzzq
   */
  public Date getSlzzq() {
    return slzzq;
  }

  /**
   * @param slzzq
   */
  public void setSlzzq(Date slzzq) {
    this.slzzq = slzzq;
  }

  /**
   * @return slsz
   */
  public String getSlsz() {
    return slsz;
  }

  /**
   * @param slsz
   */
  public void setSlsz(String slsz) {
    this.slsz = slsz;
  }

  /**
   * @return lyqzyqlyj
   */
  public String getLyqzyqlyj() {
    return lyqzyqlyj;
  }

  /**
   * @param lyqzyqlyj
   */
  public void setLyqzyqlyj(String lyqzyqlyj) {
    this.lyqzyqlyj = lyqzyqlyj;
  }

  /**
   * @return slssxz
   */
  public String getSlssxz() {
    return slssxz;
  }

  /**
   * @param slssxz
   */
  public void setSlssxz(String slssxz) {
    this.slssxz = slssxz;
  }

  /**
   * @return slsyc
   */
  public String getSlsyc() {
    return slsyc;
  }

  /**
   * @param slsyc
   */
  public void setSlsyc(String slsyc) {
    this.slsyc = slsyc;
  }

  /**
   * @return sldd
   */
  public String getSldd() {
    return sldd;
  }

  /**
   * @param sldd
   */
  public void setSldd(String sldd) {
    this.sldd = sldd;
  }

  /**
   * @return sxrbs
   */
  public String getSxrbs() {
    return sxrbs;
  }

  /**
   * @param sxrbs
   */
  public void setSxrbs(String sxrbs) {
    this.sxrbs = sxrbs;
  }

  /**
   * @return crrbs
   */
  public String getCrrbs() {
    return crrbs;
  }

  /**
   * @param crrbs
   */
  public void setCrrbs(String crrbs) {
    this.crrbs = crrbs;
  }

  /**
   * @return qrlqdjqlnr
   */
  public String getQrlqdjqlnr() {
    return qrlqdjqlnr;
  }

  /**
   * @param qrlqdjqlnr
   */
  public void setQrlqdjqlnr(String qrlqdjqlnr) {
    this.qrlqdjqlnr = qrlqdjqlnr;
  }

  /**
   * @return lzzbh
   */
  public String getLzzbh() {
    return lzzbh;
  }

  /**
   * @param lzzbh
   */
  public void setLzzbh(String lzzbh) {
    this.lzzbh = lzzbh;
  }

  /**
   * @return ldbgsqbh
   */
  public String getLdbgsqbh() {
    return ldbgsqbh;
  }

  /**
   * @param ldbgsqbh
   */
  public void setLdbgsqbh(String ldbgsqbh) {
    this.ldbgsqbh = ldbgsqbh;
  }

  /**
   * @return lqzh
   */
  public String getLqzh() {
    return lqzh;
  }

  /**
   * @param lqzh
   */
  public void setLqzh(String lqzh) {
    this.lqzh = lqzh;
  }

  /**
   * @return blllzh
   */
  public String getBlllzh() {
    return blllzh;
  }

  /**
   * @param blllzh
   */
  public void setBlllzh(String blllzh) {
    this.blllzh = blllzh;
  }

  /**
   * @return zddm
   */
  public String getZddm() {
    return zddm;
  }

  /**
   * @param zddm
   */
  public void setZddm(String zddm) {
    this.zddm = zddm;
  }

  /**
   * @return dyfs
   */
  public String getDyfs() {
    return dyfs;
  }

  /**
   * @param dyfs
   */
  public void setDyfs(String dyfs) {
    this.dyfs = dyfs;
  }

  /**
   * @return djlx
   */
  public String getDjlx() {
    return djlx;
  }

  /**
   * @param djlx
   */
  public void setDjlx(String djlx) {
    this.djlx = djlx;
  }

  /**
   * @return syqdjyy
   */
  public String getSyqdjyy() {
    return syqdjyy;
  }

  /**
   * @param syqdjyy
   */
  public void setSyqdjyy(String syqdjyy) {
    this.syqdjyy = syqdjyy;
  }

  /**
   * @return bdbzzqsw
   */
  public BigDecimal getBdbzzqsw() {
    return bdbzzqsw;
  }

  /**
   * @param bdbzzqsw
   */
  public void setBdbzzqsw(BigDecimal bdbzzqsw) {
    this.bdbzzqsw = bdbzzqsw;
  }

  /**
   * @return zwlxqx
   */
  public Date getZwlxqx() {
    return zwlxqx;
  }

  /**
   * @param zwlxqx
   */
  public void setZwlxqx(Date zwlxqx) {
    this.zwlxqx = zwlxqx;
  }

  /**
   * @return zgzqqdsshse
   */
  public String getZgzqqdsshse() {
    return zgzqqdsshse;
  }

  /**
   * @param zgzqqdsshse
   */
  public void setZgzqqdsshse(String zgzqqdsshse) {
    this.zgzqqdsshse = zgzqqdsshse;
  }

  /**
   * @return syqdjsj
   */
  public Date getSyqdjsj() {
    return syqdjsj;
  }

  /**
   * @param syqdjsj
   */
  public void setSyqdjsj(Date syqdjsj) {
    this.syqdjsj = syqdjsj;
  }

  /**
   * @return zxdyywh
   */
  public String getZxdyywh() {
    return zxdyywh;
  }

  /**
   * @param zxdyywh
   */
  public void setZxdyywh(String zxdyywh) {
    this.zxdyywh = zxdyywh;
  }

  /**
   * @return zxdyyy
   */
  public String getZxdyyy() {
    return zxdyyy;
  }

  /**
   * @param zxdyyy
   */
  public void setZxdyyy(String zxdyyy) {
    this.zxdyyy = zxdyyy;
  }

  /**
   * @return zxsj
   */
  public Date getZxsj() {
    return zxsj;
  }

  /**
   * @param zxsj
   */
  public void setZxsj(Date zxsj) {
    this.zxsj = zxsj;
  }

  /**
   * @return ywh
   */
  public String getYwh() {
    return ywh;
  }

  /**
   * @param ywh
   */
  public void setYwh(String ywh) {
    this.ywh = ywh;
  }

  /**
   * @return cfjg
   */
  public String getCfjg() {
    return cfjg;
  }

  /**
   * @param cfjg
   */
  public void setCfjg(String cfjg) {
    this.cfjg = cfjg;
  }

  /**
   * @return cflx
   */
  public String getCflx() {
    return cflx;
  }

  /**
   * @param cflx
   */
  public void setCflx(String cflx) {
    this.cflx = cflx;
  }

  /**
   * @return cfwj
   */
  public String getCfwj() {
    return cfwj;
  }

  /**
   * @param cfwj
   */
  public void setCfwj(String cfwj) {
    this.cfwj = cfwj;
  }

  /**
   * @return cfqy
   */
  public Date getCfqy() {
    return cfqy;
  }

  /**
   * @param cfqy
   */
  public void setCfqy(Date cfqy) {
    this.cfqy = cfqy;
  }

  /**
   * @return cffw
   */
  public String getCffw() {
    return cffw;
  }

  /**
   * @param cffw
   */
  public void setCffw(String cffw) {
    this.cffw = cffw;
  }

  /**
   * @return jfywh
   */
  public String getJfywh() {
    return jfywh;
  }

  /**
   * @param jfywh
   */
  public void setJfywh(String jfywh) {
    this.jfywh = jfywh;
  }

  /**
   * @return jfjg
   */
  public String getJfjg() {
    return jfjg;
  }

  /**
   * @param jfjg
   */
  public void setJfjg(String jfjg) {
    this.jfjg = jfjg;
  }

  /**
   * @return jfwj
   */
  public String getJfwj() {
    return jfwj;
  }

  /**
   * @param jfwj
   */
  public void setJfwj(String jfwj) {
    this.jfwj = jfwj;
  }

  /**
   * @return jfwh
   */
  public String getJfwh() {
    return jfwh;
  }

  /**
   * @param jfwh
   */
  public void setJfwh(String jfwh) {
    this.jfwh = jfwh;
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
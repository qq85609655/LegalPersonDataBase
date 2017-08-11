package com.icinfo.frk.business.model;

import javax.persistence.Table;
/**
 * @AUTHOR:Code Templates
 * @DATE:- 2017-07-11 17:04:47
 **/

import com.fasterxml.jackson.annotation.JsonFormat;



/**
 * 
 * @author Guanzhou Song
 */
@Table(name="frk.ch_ccjc_jcjk_valid")
public class ChCcjcJcjkValid  implements java.io.Serializable{

	private static final long serialVersionUID = 5454155825314635342L;

	//columns START
	//
	private java.lang.String id;
	//
	private String frwybs;
	private java.lang.String hashUnique;
	//
	private java.lang.String qywybs;
	//
	private java.lang.String dwmc;
	//
	private java.lang.String zdbm;
	//
	private java.lang.String zdmc;
	//
	private java.lang.String zdlx;
	//
	private java.lang.String zxjksbbm;
	//
	private java.lang.String gljb;
	//
	private java.lang.String pffs;
	//
	private java.lang.String pfqx;
	//
	private java.lang.String sczq;
	//
	private java.lang.String scgy;
	//
	private java.lang.String zycp;
	//
	private java.lang.String cqjzbhj;
	//
	private java.lang.String wrwzljpfzk;
	//
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private java.util.Date jcsj;
	//
	private java.lang.String jczb;
	//
	private java.lang.String jcjg;
	//
	private java.lang.String dbqk;
	//
	private java.lang.Integer cbbs;
	//
	private java.lang.Integer sczt;
	//
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private java.util.Date kssj;
	//
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private java.util.Date jssj;
	//
	private java.lang.String yy;
	//
	private java.lang.String datasrdep;
	//
	private java.lang.String datasource;
	//
	private java.lang.String datakeycontent;
	//
	private java.lang.String createtime;
	//
	@JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
	private java.util.Date updatetime;
	//columns END



	public void setFrwybs(java.lang.String value) {
		this.frwybs = value;
	}

	public java.lang.String getFrwybs() {
		return this.frwybs;
	}
	
	public void setId(java.lang.String value) {
		this.id = value;
	}

	public java.lang.String getId() {
		return this.id;
	}

	public void setHashUnique(java.lang.String value) {
		this.hashUnique = value;
	}

	public java.lang.String getHashUnique() {
		return this.hashUnique;
	}

	public void setQywybs(java.lang.String value) {
		this.qywybs = value;
	}

	public java.lang.String getQywybs() {
		return this.qywybs;
	}

	public void setDwmc(java.lang.String value) {
		this.dwmc = value;
	}

	public java.lang.String getDwmc() {
		return this.dwmc;
	}

	public void setZdbm(java.lang.String value) {
		this.zdbm = value;
	}

	public java.lang.String getZdbm() {
		return this.zdbm;
	}

	public void setZdmc(java.lang.String value) {
		this.zdmc = value;
	}

	public java.lang.String getZdmc() {
		return this.zdmc;
	}

	public void setZdlx(java.lang.String value) {
		this.zdlx = value;
	}

	public java.lang.String getZdlx() {
		return this.zdlx;
	}

	public void setZxjksbbm(java.lang.String value) {
		this.zxjksbbm = value;
	}

	public java.lang.String getZxjksbbm() {
		return this.zxjksbbm;
	}

	public void setGljb(java.lang.String value) {
		this.gljb = value;
	}

	public java.lang.String getGljb() {
		return this.gljb;
	}

	public void setPffs(java.lang.String value) {
		this.pffs = value;
	}

	public java.lang.String getPffs() {
		return this.pffs;
	}

	public void setPfqx(java.lang.String value) {
		this.pfqx = value;
	}

	public java.lang.String getPfqx() {
		return this.pfqx;
	}

	public void setSczq(java.lang.String value) {
		this.sczq = value;
	}

	public java.lang.String getSczq() {
		return this.sczq;
	}

	public void setScgy(java.lang.String value) {
		this.scgy = value;
	}

	public java.lang.String getScgy() {
		return this.scgy;
	}

	public void setZycp(java.lang.String value) {
		this.zycp = value;
	}

	public java.lang.String getZycp() {
		return this.zycp;
	}

	public void setCqjzbhj(java.lang.String value) {
		this.cqjzbhj = value;
	}

	public java.lang.String getCqjzbhj() {
		return this.cqjzbhj;
	}

	public void setWrwzljpfzk(java.lang.String value) {
		this.wrwzljpfzk = value;
	}

	public java.lang.String getWrwzljpfzk() {
		return this.wrwzljpfzk;
	}

	public void setJcsj(java.util.Date value) {
		this.jcsj = value;
	}

	public java.util.Date getJcsj() {
		return this.jcsj;
	}

	public void setJczb(java.lang.String value) {
		this.jczb = value;
	}

	public java.lang.String getJczb() {
		return this.jczb;
	}

	public void setJcjg(java.lang.String value) {
		this.jcjg = value;
	}

	public java.lang.String getJcjg() {
		return this.jcjg;
	}

	public void setDbqk(java.lang.String value) {
		this.dbqk = value;
	}

	public java.lang.String getDbqk() {
		return this.dbqk;
	}

	public void setCbbs(java.lang.Integer value) {
		this.cbbs = value;
	}

	public java.lang.Integer getCbbs() {
		return this.cbbs;
	}

	public void setSczt(java.lang.Integer value) {
		this.sczt = value;
	}

	public java.lang.Integer getSczt() {
		return this.sczt;
	}

	public void setKssj(java.util.Date value) {
		this.kssj = value;
	}

	public java.util.Date getKssj() {
		return this.kssj;
	}

	public void setJssj(java.util.Date value) {
		this.jssj = value;
	}

	public java.util.Date getJssj() {
		return this.jssj;
	}

	public void setYy(java.lang.String value) {
		this.yy = value;
	}

	public java.lang.String getYy() {
		return this.yy;
	}

	public void setDatasrdep(java.lang.String value) {
		this.datasrdep = value;
	}

	public java.lang.String getDatasrdep() {
		return this.datasrdep;
	}

	public void setDatasource(java.lang.String value) {
		this.datasource = value;
	}

	public java.lang.String getDatasource() {
		return this.datasource;
	}

	public void setDatakeycontent(java.lang.String value) {
		this.datakeycontent = value;
	}

	public java.lang.String getDatakeycontent() {
		return this.datakeycontent;
	}

	public void setCreatetime(java.lang.String value) {
		this.createtime = value;
	}

	public java.lang.String getCreatetime() {
		return this.createtime;
	}

	public void setUpdatetime(java.util.Date value) {
		this.updatetime = value;
	}

	public java.util.Date getUpdatetime() {
		return this.updatetime;
	}

}


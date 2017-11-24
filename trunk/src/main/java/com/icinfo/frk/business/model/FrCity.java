package com.icinfo.frk.business.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Table;

import org.apache.commons.lang3.StringUtils;
/**
 * 描述:  gfr_city_num对应的实体类.<br>
 * WARNING：不是表中字段的属性必须加@Transient注解
 *
 * @author framework generator
 * @date 2017年07月11日
 */
@Table(name = "frk.fr_city_num")
public class FrCity implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Column(name = "id")
	private String id;
	
	//城市
	@Column(name = "city")
	private String city;
	
	//法人数量
	@Column(name = "num")
	private String num;

	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getNum() {
		if(StringUtils.isBlank(num))
			return num;
		if(num.contains(".")){
			return num.split("\\.")[0];
		}
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}
}

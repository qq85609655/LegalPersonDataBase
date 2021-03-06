package com.icinfo.frk.business.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.icinfo.framework.common.ajax.AjaxResult;
import com.icinfo.framework.core.web.BaseController;
import com.icinfo.frk.business.dto.DtFrflTjDto;
import com.icinfo.frk.business.dto.GlvStatDto;
import com.icinfo.frk.business.model.FrCity;
import com.icinfo.frk.business.service.FullPreviewService;
import com.icinfo.frk.support.util.DateUtil;

/**
 * 整体预览-大屏页
 * 
 * @author zhuyong
 */
@Controller
@RequestMapping("/admin/fullpreview")
public class FullPreviewController extends BaseController {
	@Autowired
	FullPreviewService fullPerviewService;

	@RequestMapping("show")
	public String show() throws Exception {
		return "business/datacount/fullpreview";
	}

	/**
	 * 在册法人数量统计
	 * 
	 * @author hzboom-sw:
	 * @datre 2017年9月29日
	 * @return
	 *
	 */
	@RequestMapping("/getLeagalPersonNum")
	@ResponseBody
	public AjaxResult getLeagalPersonNum() {
		JSONObject resp = new JSONObject();
		Long total = fullPerviewService.getRegistLeagalPersonNum();
		resp.put("Sum", total);
		return AjaxResult.success("resp", resp);
	}

	/**
	 * 数据总览
	 * 
	 * @author hzboom-sw:
	 * @datre 2017年9月29日
	 * @return
	 *
	 */
	@RequestMapping("/dataShowAll")
	@ResponseBody
	public AjaxResult dataShowAll() {
		JSONObject resp = new JSONObject();
		String year = Calendar.getInstance().get(Calendar.YEAR) + "-01-01";
		// 当年新成立法人数量
		DtFrflTjDto dto1 = fullPerviewService.getLegalPersonAdd(year);
		// 当年注销法人数量
		DtFrflTjDto dto2 = fullPerviewService.getLegalPersonSub(year);
		// 法人库采集量和入库量
		GlvStatDto glvStatDto = fullPerviewService.getDataNum();
		//获取本周新增数据
		Long weekNum = getWeekIncreaseNum();
		resp.put("dataSource", 49);
		resp.put("collectNum", glvStatDto.getColletNum());
		resp.put("importNum", glvStatDto.getImportNum());
		resp.put("weekAdd", weekNum==null?0:weekNum);
		resp.put("yearAdd", dto1.getLegalPersonAdd());
		resp.put("yearSub", dto2.getLegalPersonSub());
		return AjaxResult.success("resp", resp);
	}
	//获取本周新增数据
	private Long getWeekIncreaseNum() {
		
		Calendar calendar = Calendar.getInstance();
		String endTime = DateUtil.dateToString(calendar.getTime(),"yyyy-MM-dd");
		Map<String,String> map = new HashMap<String,String>();
		map.put("endTime", endTime);
		map.put("startTime", DateUtil.getLastSatDate("yyyy-MM-dd"));
		
		return fullPerviewService.getWeekIncreaseNum(map);
		
		
	}

	/**
	 * 法人类型数量分布
	 * 
	 * @author hzboom-sw:
	 * @datre 2017年9月29日
	 * @return
	 *
	 */
	@RequestMapping("/frTypeCounting")
	@ResponseBody
	public AjaxResult frTypeCounting() {
		JSONObject resp = new JSONObject();
		JSONObject pies = fullPerviewService.getFrTypeCounting();
		resp.put("pie", pies.get("pie"));
		return AjaxResult.success("resp", resp);
	}

	/**
	 * 法人属性分类
	 * 
	 * @author hzboom-sw:
	 * @datre 2017年9月30日
	 * @return
	 *
	 */
	@RequestMapping("/getFrAttr")
	@ResponseBody
	public AjaxResult getFrAttr() {
		JSONObject resp = new JSONObject();
		List<DtFrflTjDto> List = fullPerviewService.getFrAttrNum();
		Map<Integer, Integer> wd_map = new HashMap<>();
		for (DtFrflTjDto dto : List) {
			wd_map.put(dto.getwd_mc(), dto.getDimTotal());
		}
		for (int i = 1; i < 10; i++) {
			if (!wd_map.containsKey(i)) {
				wd_map.put(i, 0);
			}
		}
		resp.put("map", wd_map);
		return AjaxResult.success("resp", resp);
	}
	/**
	 * 部门调用数量top10
	* @author hzboom-sw:
	* @datre 2017年9月30日
	* @return
	*
	 */
	@RequestMapping("/getDepartTop")
	@ResponseBody
	public AjaxResult getDepartTop() {
		return null;
	}
	/**
	 * 接口调用数量top10
	* @author hzboom-sw:
	* @datre 2017年9月30日
	* @return
	*
	 */
	@RequestMapping("/getInterTop")
	@ResponseBody
	public AjaxResult getInterTop() {
		return null;
	}
	/**
	 * 法人地区调用情况
	* @author hzboom-sw:
	* @datre 2017年9月30日
	* @return
	*
	 */
	@RequestMapping("/getFrAreaNum")
	@ResponseBody
	public AjaxResult getFrAreaNum() {
		return null;
	}
	/**
	 * 法人地区分布
	* @author hzboom-sw:
	* @datre 2017年10月9日
	* @return
	*
	 */
	@RequestMapping("/getCityDetail")
	@ResponseBody
	public AjaxResult getCityDetail() {
		  JSONArray array = new JSONArray();
		  List<FrCity> cityDetail = fullPerviewService.getCityDetail();
		  if(cityDetail != null && cityDetail.size()>0){
			  for(FrCity citys : cityDetail){
				  if(citys != null){
					  Map<String,String> map =new HashMap<String,String>();
					  map.put("name",citys.getCity());
					  map.put("value", citys.getNum());
					  array.add(map);
					 
				  }
				  
			  }
		  }
		  
	    return AjaxResult.success("array", array);
	}
	/**
	 * 数据整合
	* @author hzboom-sw:
	* @datre 2017年10月9日
	* @return
	*
	 */
	@RequestMapping("/dataGather")
	@ResponseBody
	public AjaxResult dataGather() {
		JSONObject nl = fullPerviewService.doGetAllLinksAndNodesJsonObject();
	    JSONArray nodes = nl.getJSONArray("nodes");
	    JSONArray links = nl.getJSONArray("links");
	    JSONObject jsonresp = new JSONObject();

	    jsonresp.put("nodes", nodes);
	    jsonresp.put("links", links);

	    return AjaxResult.success("json", jsonresp);
	}
}

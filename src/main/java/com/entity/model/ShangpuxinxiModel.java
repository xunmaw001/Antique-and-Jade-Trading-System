package com.entity.model;

import com.entity.ShangpuxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 商铺信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-03-04 15:16:56
 */
public class ShangpuxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 经营范围
	 */
	
	private String jingyingfanwei;
		
	/**
	 * 商铺图片
	 */
	
	private String shangputupian;
		
	/**
	 * 商铺地址
	 */
	
	private String shangpudizhi;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 商铺介绍
	 */
	
	private String shangpujieshao;
				
	
	/**
	 * 设置：经营范围
	 */
	 
	public void setJingyingfanwei(String jingyingfanwei) {
		this.jingyingfanwei = jingyingfanwei;
	}
	
	/**
	 * 获取：经营范围
	 */
	public String getJingyingfanwei() {
		return jingyingfanwei;
	}
				
	
	/**
	 * 设置：商铺图片
	 */
	 
	public void setShangputupian(String shangputupian) {
		this.shangputupian = shangputupian;
	}
	
	/**
	 * 获取：商铺图片
	 */
	public String getShangputupian() {
		return shangputupian;
	}
				
	
	/**
	 * 设置：商铺地址
	 */
	 
	public void setShangpudizhi(String shangpudizhi) {
		this.shangpudizhi = shangpudizhi;
	}
	
	/**
	 * 获取：商铺地址
	 */
	public String getShangpudizhi() {
		return shangpudizhi;
	}
				
	
	/**
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：商铺介绍
	 */
	 
	public void setShangpujieshao(String shangpujieshao) {
		this.shangpujieshao = shangpujieshao;
	}
	
	/**
	 * 获取：商铺介绍
	 */
	public String getShangpujieshao() {
		return shangpujieshao;
	}
			
}

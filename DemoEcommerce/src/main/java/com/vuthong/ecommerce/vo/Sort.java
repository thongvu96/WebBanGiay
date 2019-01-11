/**
 * Sort.java
 * Jan 11, 2019
 */
package com.vuthong.ecommerce.vo;

import java.io.Serializable;

/**
 * @author VuThong
 */
public class Sort implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer sortId;
	private String sortName;

	public Integer getSortId() {
		return sortId;
	}

	public void setSortId(Integer sortId) {
		this.sortId = sortId;
	}

	public String getSortName() {
		return sortName;
	}

	public void setSortName(String sortName) {
		this.sortName = sortName;
	}

}

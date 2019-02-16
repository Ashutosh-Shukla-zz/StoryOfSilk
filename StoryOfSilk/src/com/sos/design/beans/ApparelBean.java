package com.sos.design.beans;

import java.util.ArrayList;

public class ApparelBean {

	private int apparelId;

	private String apparelName;

	private String description;

	private String gender;

	private String apparelEnabled;

	private String baseImage;

	private ArrayList<ParameterBean> listOfParameters;

	public int getApparelId() {
		return apparelId;
	}

	public void setApparelId(int apparelId) {
		this.apparelId = apparelId;
	}

	public String getApparelName() {
		return apparelName;
	}

	public void setApparelName(String apparelName) {
		this.apparelName = apparelName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getApparelEnabled() {
		return apparelEnabled;
	}

	public void setApparelEnabled(String apparelEnabled) {
		this.apparelEnabled = apparelEnabled;
	}

	public String getBaseImage() {
		return baseImage;
	}

	public void setBaseImage(String baseImage) {
		this.baseImage = baseImage;
	}

	public ArrayList<ParameterBean> getListOfParameters() {
		return listOfParameters;
	}

	public void setListOfParameters(ArrayList<ParameterBean> listOfParameters) {
		this.listOfParameters = listOfParameters;
	}

}

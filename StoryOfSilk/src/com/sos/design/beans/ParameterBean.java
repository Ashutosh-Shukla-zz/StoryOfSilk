package com.sos.design.beans;

import java.util.ArrayList;

public class ParameterBean {

	private int apparelParameter;

	private String parameterName;

	private String parameterImage;

	private String parameterDescription;

	private ArrayList<OptionBean> listOfOptions;

	public int getApparelParameter() {
		return apparelParameter;
	}

	public void setApparelParameter(int apparelParameter) {
		this.apparelParameter = apparelParameter;
	}

	public String getParameterName() {
		return parameterName;
	}

	public void setParameterName(String parameterName) {
		this.parameterName = parameterName;
	}

	public String getParameterImage() {
		return parameterImage;
	}

	public void setParameterImage(String parameterImage) {
		this.parameterImage = parameterImage;
	}

	public String getParameterDescription() {
		return parameterDescription;
	}

	public void setParameterDescription(String parameterDescription) {
		this.parameterDescription = parameterDescription;
	}

	public ArrayList<OptionBean> getListOfOptions() {
		return listOfOptions;
	}

	public void setListOfOptions(ArrayList<OptionBean> listOfOptions) {
		this.listOfOptions = listOfOptions;
	}

}

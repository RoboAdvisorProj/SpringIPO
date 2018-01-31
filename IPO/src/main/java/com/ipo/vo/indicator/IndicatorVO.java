package com.ipo.vo.indicator;

import java.math.BigDecimal;

public class IndicatorVO {

	private String code;
	private String name;
	private String price;
	private String value;
	private BigDecimal per;
	private BigDecimal eps;
	private BigDecimal roa;
	private BigDecimal roe;
	private BigDecimal beta;
	private BigDecimal pbr;
	private BigDecimal niy0;
	private BigDecimal ni3y;
	private BigDecimal sale3y;
	private BigDecimal deprt;
	private String d_iv;
	private BigDecimal vol_d;
	private BigDecimal vol_y;
	private BigDecimal chan;
	private Integer numb;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public BigDecimal getPer() {
		return per;
	}
	public void setPer(BigDecimal per) {
		this.per = per;
	}
	public BigDecimal getEps() {
		return eps;
	}
	public void setEps(BigDecimal eps) {
		this.eps = eps;
	}
	public BigDecimal getRoa() {
		return roa;
	}
	public void setRoa(BigDecimal roa) {
		this.roa = roa;
	}
	public BigDecimal getRoe() {
		return roe;
	}
	public void setRoe(BigDecimal roe) {
		this.roe = roe;
	}
	public BigDecimal getBeta() {
		return beta;
	}
	public void setBeta(BigDecimal beta) {
		this.beta = beta;
	}
	public BigDecimal getPbr() {
		return pbr;
	}
	public void setPbr(BigDecimal pbr) {
		this.pbr = pbr;
	}
	public BigDecimal getNiy0() {
		return niy0;
	}
	public void setNiy0(BigDecimal niy0) {
		this.niy0 = niy0;
	}
	public BigDecimal getNi3y() {
		return ni3y;
	}
	public void setNi3y(BigDecimal ni3y) {
		this.ni3y = ni3y;
	}
	public BigDecimal getSale3y() {
		return sale3y;
	}
	public void setSale3y(BigDecimal sale3y) {
		this.sale3y = sale3y;
	}
	public BigDecimal getDeprt() {
		return deprt;
	}
	public void setDeprt(BigDecimal deprt) {
		this.deprt = deprt;
	}
	public String getD_iv() {
		return d_iv;
	}
	public void setD_iv(String d_iv) {
		this.d_iv = d_iv;
	}
	public BigDecimal getVol_d() {
		return vol_d;
	}
	public void setVol_d(BigDecimal vol_d) {
		this.vol_d = vol_d;
	}
	public BigDecimal getVol_y() {
		return vol_y;
	}
	public void setVol_y(BigDecimal vol_y) {
		this.vol_y = vol_y;
	}
	public BigDecimal getChan() {
		return chan;
	}
	public void setChan(BigDecimal chan) {
		this.chan = chan;
	}
	public Integer getNumb() {
		return numb;
	}
	public void setNumb(Integer numb) {
		this.numb = numb;
	}
	@Override
	public String toString() {
		return "IndicatorVO [code=" + code + ", name=" + name + ", price=" + price + ", value=" + value + ", per=" + per
				+ ", eps=" + eps + ", roa=" + roa + ", roe=" + roe + ", beta=" + beta + ", pbr=" + pbr + ", niy0="
				+ niy0 + ", ni3y=" + ni3y + ", sale3y=" + sale3y + ", deprt=" + deprt + ", d_iv=" + d_iv + ", vol_d="
				+ vol_d + ", vol_y=" + vol_y + ", chan=" + chan + ", numb=" + numb + "]";
	}
	
	
}

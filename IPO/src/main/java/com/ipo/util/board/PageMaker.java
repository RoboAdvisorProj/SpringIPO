package com.ipo.util.board;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;
public class PageMaker {

	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int displayPageNum = 10;
	private PageCriteria pageCri;

	public String makeSearch(int page) {

		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", pageCri.getPerPageNum())
				.queryParam("searchType", ((SearchCriteria)pageCri).getSearchType())
				.queryParam("keyword", encoding(((SearchCriteria)pageCri).getKeyword()))
				.build();

		return uriComponents.toUriString();
	}
	private String encoding(String keyword) {
		if(keyword==null || keyword.trim().length()==0) {
			return "";
		}
		try {
			return URLEncoder.encode(keyword,"UTF-8");
		}catch(UnsupportedEncodingException e) {
			return "";
		}
	}
	public String makeQuery(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
				.queryParam("perPageNum", pageCri.getPerPageNum()).build();

		return uriComponents.toUriString();
	}

	private void calcData() {

		endPage = (int) (Math.ceil(pageCri.getPage() / (double) displayPageNum) * displayPageNum);

		startPage = (endPage - displayPageNum) + 1;

		int tempEndPage = (int) (Math.ceil(totalCount / (double) pageCri.getPerPageNum()));

		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}

		prev = startPage == 1 ? false : true;

		next = endPage * pageCri.getPerPageNum() >= totalCount ? false : true;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;

		calcData();
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public PageCriteria getPageCri() {
		return pageCri;
	}

	public void setPageCri(PageCriteria pageCri) {
		this.pageCri = pageCri;
	}

	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", pageCri=" + pageCri + "]";
	}

}

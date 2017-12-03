package com.ipo.controller.reply;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ipo.service.reply.ReplyService;
import com.ipo.util.board.PageCriteria;
import com.ipo.util.board.PageMaker;
import com.ipo.vo.reply.ReplyVO;

@RestController
@RequestMapping("/replies")
public class ReplyController {

	@Inject
	private ReplyService replyService;
	
	 @RequestMapping(value = "", method = RequestMethod.POST)
	  public ResponseEntity<String> register(@RequestBody ReplyVO replyVO) {

	    ResponseEntity<String> entity = null;
	    try {
	      replyService.addReply(replyVO);
	      entity = new ResponseEntity<String>("REPLY REGISTER SUCCESS", HttpStatus.OK);
	    } catch (Exception e) {
	      e.printStackTrace();
	      entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
	    }
	    return entity;
	  }

	  @RequestMapping(value = "/all/{bno}", method = RequestMethod.GET)
	  public ResponseEntity<List<ReplyVO>> list(@PathVariable("bno") Integer bno) {

	    ResponseEntity<List<ReplyVO>> entity = null;
	    try {
	      entity = new ResponseEntity<>(replyService.listReply(bno), HttpStatus.OK);

	    } catch (Exception e) {
	      e.printStackTrace();
	      entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
	    }

	    return entity;
	  }
	  @RequestMapping(value = "/{rno}", method = { RequestMethod.PUT, RequestMethod.PATCH })
	  public ResponseEntity<String> update(@PathVariable("rno") Integer rno, @RequestBody ReplyVO replyVO) {

	    ResponseEntity<String> entity = null;
	    try {
	      replyVO.setRno(rno);
	      replyService.modfiyReply(replyVO);

	      entity = new ResponseEntity<String>("REPLY UPDATE SUCCESS", HttpStatus.OK);
	    } catch (Exception e) {
	      e.printStackTrace();
	      entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
	    }
	    return entity;
	  }
	  @RequestMapping(value = "/{rno}", method = RequestMethod.DELETE)
	  public ResponseEntity<String> remove(@PathVariable("rno") Integer rno) {

	    ResponseEntity<String> entity = null;
	    try {
	      replyService.removeReply(rno);
	      entity = new ResponseEntity<String>("REPLY REMOVE SUCCESS", HttpStatus.OK);
	    } catch (Exception e) {
	      e.printStackTrace();
	      entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
	    }
	    return entity;
	  }
	  @RequestMapping(value = "/{bno}/{page}", method = RequestMethod.GET)
	  public ResponseEntity<Map<String, Object>> listPage(
	      @PathVariable("bno") Integer bno,
	      @PathVariable("page") Integer page) {

	    ResponseEntity<Map<String, Object>> entity = null;
	    
	    try {
	      PageCriteria pageCri = new PageCriteria();
	      pageCri.setPage(page);

	      PageMaker pageMaker = new PageMaker();
	      pageMaker.setPageCri(pageCri);

	      Map<String, Object> map = new HashMap<String, Object>();
	      List<ReplyVO> list = replyService.listReplyPage(bno, pageCri);

	      map.put("list", list);

	      int replyCount = replyService.count(bno);
	      pageMaker.setTotalCount(replyCount);

	      map.put("pageMaker", pageMaker);

	      entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);

	    } catch (Exception e) {
	      e.printStackTrace();
	      entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
	    }
	    return entity;
	  }
}

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
<title>D O ! P O</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
<link rel="stylesheet"
	href="<c:url value="/resources/assets/css/self_diagnosis.css"/>">
</head>

<body>
	<%@ include file="../include/topmenu.jsp"%>
	<!-- Section Background -->
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/index">Home</a></li>
				<li class="active">&nbsp;자가진단</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>

	<div class="container" style="margin-top: 50px;">
		<div class="content">
			<h2>자가진단검사</h2>
			<div class="cont">
				<!-- str : 내용시작 -->
				<h3>주식투자성향 자가진단</h3>
				아래 문항을 자세히 읽어 보신 후 현재 자신의 상태와 가장 근접하다고 생각하는 번호에 체크를 해주세요. <br>
				<br>

				<div class="bbs-list2 mb30">
					<table class="bbs" summary="">

						<colgroup>
							<col width="*">
							<col width="100px">
							<col width="100px">
							<col width="100px">
							<col width="100px">
							<col width="100px">
						</colgroup>
						<!-- 						<thead>
							<tr>
								<th class="firs">평가 내용</th>
								<th>전혀아니다</th>
								<th>드물지만있다</th>
								<th>가끔있다</th>
								<th>자주있다</th>
								<th>항상그렇다</th>
							</tr>,/
						</thead> -->
						<tbody>
							<tr>
								<th scope="row" class="firs textL">1. 고객님의 연령대는 어떻게 되십니까?</th>
								<td>
									<ul class="list-unstyled">
										<li><div class="radio">
												<label><input type="radio" name="answer1" value="4"
													id=""> 19세 이하</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer1" value="4"
													id="">20세 ～ 40세</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer1" value="3"
													id="">41세 ～ 50세</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer1" value="2"
													id="">51세 ～ 60세</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer1" value="1"
													id="">61세 이상</label>
											</div></li>
									</ul>
							</tr>
							<tr>
								<th scope="row" class="firs textL">2. 고객님께서 투자하고자 하는 자금의 투자
									가능 기간은 얼마나 되십니까?</th>
								<td><ul class="list-unstyled">
										<li><div class="radio">
												<label><input type="radio" name="answer2" value="1"
													id=""> 6개월 미만</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer2" value="2"
													id="">6개월 이상 ～ 1년 미만</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer2" value="3"
													id="">1년 이상 ～ 2년 미만</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer2" value="4"
													id="">2년 이상 ～ 3년 미만</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer2" value="5"
													id="">3년 이상</label>
											</div></li>
									</ul></td>
							</tr>
							<tr>
								<th scope="row" class="firs textL">3. 다음 중 고객님이 투자해본 금융상품과
									비슷한 것은 어느 것입니까?</th>
								<td><ul class="list-unstyled">
										<li><div class="radio">
												<label><input type="radio" name="answer3" value="1"
													id=""> 원금이 반드시 보장되는 은행 예․적금, 채권, 1년 미만 금융자산 등</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer3" value="2"
													id=""> 원금 손실 가능성이 없는 회사채, 채권형펀드, 원금보장형 파생상품 등</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer3" value="3"
													id=""> 원금 손실 가능성이 있는 낮은 등급의 회사채, 원금의 일부만 보장되는 파생상품,
													혼합형 펀드 등</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer3" value="4"
													id=""> 원금 손실이 발생하는 신용도가 낮은 회사채, 주식, 원금이 보장되지 않는
													파생상품, 시장 수준의 수익을 추구하는 주식형펀드 등</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer3" value="5"
													id=""> 원금 손실의 위험이 큰 선물옵션, 시장수익율 이상의 수익을 추구하는 주식형펀드,
													파생상품펀드, 주식 신용거래 등</label>
											</div></li>
									</ul></td>
							</tr>
							<tr>
								<th scope="row" class="firs textL">4. 고객님께서는 금융상품 투자에 대한
									본인의 지식수준이 어느 정도라고 생각하십니까?</th>
								<td><ul class="list-unstyled">
										<li><div class="radio">
												<label><input type="radio" name="answer4" value="1"
													id=""> <strong>매우 낮은 수준</strong>(투자를 스스로 해본 경험이 없다)</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer4" value="2"
													id=""> <strong>낮은 수준</strong>(주식과 채권의 차이를 구별할 수 있는
													정도)</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer4" value="3"
													id=""> <strong>높은 수준</strong>(대부분의 금융상품의 차이를 구별할 수
													있는 정도)</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer4" value="4"
													id=""> <strong>매우 높은 수준</strong>(모든 금융상품을 이해하고 있고
													속성을 아는 정도 )</label>
											</div></li>
									</ul></td>
							</tr>
							<tr>
								<th scope="row" class="firs textL">5. 고객님께서 투자하고자 하는 자금의
									비중은 고객님의 전체 금융자산(부동산 등을 제외) 중 어느 정도의 비중을 차지합니까?</th>
								<td><ul class="list-unstyled">
										<li><div class="radio">
												<label><input type="radio" name="answer5" value="5"
													id=""> 10% 이하</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer5" value="4"
													id=""> 10% 초과 ～ 20% 이하</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer5" value="3"
													id=""> 20% 초과 ～ 30% 이하</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer5" value="2"
													id=""> 30% 초과 ～ 40% 이하</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer5" value="1"
													id=""> 40% 초과</label>
											</div></li>
									</ul></td>
							</tr>
							<tr>
								<th scope="row" class="firs textL">6. 다음 중 고객님의 수입원을 가장 잘
									나타내는 것은 어느 것입니까?</th>
								<td><ul class="list-unstyled">
										<li><div class="radio">
												<label><input type="radio" name="answer6" value="3"
													id=""> 현재 일정한 수입이 발생하고 있으며, 향후 현재 수준을 유지하거나 증가할 것으로
													예상</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer6" value="2"
													id=""> 현재 일정한 수입이 발생하고 있으나, 향후 감소하거나 불안정할 것으로 예상</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer6" value="1"
													id=""> 현재 일정한 수입이 없으며, 연금이 주 수입원임</label>
											</div></li>
									</ul></td>
							</tr>
							<tr>
								<th scope="row" class="firs textL">7. 고객님의 투자원금에 손실이 발생할 경우
									다음 중 고객님이 감내할 수 있는 손실 수준은 어느 수준입니까?</th>
								<td><ul class="list-unstyled">
										<li><div class="radio">
												<label><input type="radio" name="answer7" value="-2"
													id=""> 무슨 일이 있어도 투자 원금은 보전되어야 한다.</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer7" value="2"
													id=""> 투자원금에서 최소한의 손실만을 감수할 수 있다.</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer7" value="4"
													id=""> 투자원금 중 일부의 손실을 감수할 수 있다.</label>
											</div></li>
										<li><div class="radio">
												<label><input type="radio" name="answer7" value="6"
													id=""> 기대수익이 높다면 위험이 높아도 상관하지 않겠다.</label>
											</div></li>
									</ul></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="buttons mb30">
					<a href="#none" onclick="aReset()" class="btn-a btn-a-c">다시
						작성하기</a> <a href="#none" onclick="aConfirm()" class="btn-a btn-a-a">총점
						결과보기</a>
				</div>
				<div class="container">
					<a href="#none" class="pull-right" data-toggle="modal" 
					style="margin-top: 50px; margin-right:20px; margin-bottom:20px;"
						data-target="#myModal">점수표 확인하기</a>
					<!-- Trigger the modal with a button -->
					<!-- Modal -->
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">투자 성향 5단계 점수표</h4>
								</div>
								<div class="modal-body">

									<dl>
										<dt>1단계(안정형):<span class='text-danger'>&nbsp;20점이하</span></dt>
										<dd>예금 또는 적금 수준의 수익률을 기대하며, 투자원금에 손실이 발생하는 것을 원하지 않음</dd>
										<br/>

										<dt>2단계(안정추구형):<span class='text-danger'>&nbsp;20점초과 ～ 40점이하</span></dt>
										<dd>투자원금의 손실위험은 최소화하고, 이자소득이나 배당소득 수준의 안정적인 투자를 목표로 함.<br/>
											다만, 수익을 위해 단기적인 손실을 수용할 수 있습니다.<br/>예)적금보다 높은 수익을 위해 자산 중 일부를 변동성
											높은 상품에 투자할 의향이 있음</dd>
										<br/>

										<dt>3단계(위험중립형):<span class='text-danger'>&nbsp;40점초과 ～ 60점이하</span></dt>
										<dd>투자에는 그에 상응하는 투자위험이 있음을 충분히 인식하고 있습니다.<br/>예)적금보다 높은 수익을
											기대할 수 있다면 일정수준의 손실위험을 감수할 수 있음</dd>
										<br/>

										<dt>4단계(적극투자형):<span class='text-danger'>&nbsp;60점초과 ～ 80점이하</span></dt>
										<dd>투자원금의 보전보다는 위험을 감내하더라도 높은 수준의 투자수익 실현을 추구함. <br/>투자자금의 상당
											부분을 주식, 주식형펀드 또는 파생상품 등의 위험자산에 투자할 의향이 있음</dd>
										<br/>

										<dt>5단계(공격투자형):<span class='text-danger'>&nbsp;80점초과</span></dt>
										<dd>시장평균 수익률을 훨씬 넘어서는 높은 수준의 투자수익을 추구하며, 이를 위해 자산가치의 변동에
											따른 손실 위험을 적극 수용.<br/> 투자자금 대부분을 주식, 주식형펀드 또는 파생상품 등의 위험자산에 투자할 의향이
											있음</dd>
										<br/>
									</dl>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">닫기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="bbs-list3 mb10">
					<div class="container">
						<div class="outer">
							<div class="inner">
								<div class="centered">
									<h3>
										총점 : <span id="totalPoint">0</span>점
									</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<ul id="maxUL" style="margin-bottom: 100px;">
					<li class="mb5" id="max20" style="display: none; margin-top: 30px;">
						<i class="fa fa-check" aria-hidden="true" style="color: green;"></i>
						당신의 주식투자 성향은 <strong>"안정형"</strong>입니다.<br> 예금 또는 적금 수준의 수익률을 기대하며, 투자원금에
						손실이 발생하는 것을 원하지 않음 <br /> <a class="btn btn-default"
						href="${location}/portfolio/riskAvoid" role="button">안정형
							바로가기&nbsp;<i class="fa fa-hand-o-up" aria-hidden="true"></i>
					</a>
					</li>
					<li class="mb5" id="max40" style="display: none; margin-top: 30px;">
						<i class="fa fa-check" aria-hidden="true" style="color: green;"></i>
						당신의 주식투자 성향은 <strong>"안정추구형"</strong>입니다.<br/> 투자원금의 손실위험은 최소화하고,
						이자소득이나 배당소득 수준의 안정적인 투자를 목표로 함. 다만, 수익을 위해 단기적인 손실을 수용할 수 있습니다.<br/>
						예)적금보다 높은 수익을 위해 자산 중 일부를 변동성 높은 상품에 투자할 의향이 있음 <br /> <a
						class="btn btn-default" href="${location}/portfolio/safetyPre"
						role="button">안정추구형 바로가기&nbsp;<i class="fa fa-hand-o-up"
							aria-hidden="true"></i></a>
					</li>
					<li class="mb5" id="max60" style="display: none; margin-top: 30px;">
						<i class="fa fa-check" aria-hidden="true" style="color: green;"></i>
						당신의 주식투자 성향은 <strong>"위험중립형"</strong>입니다.<br /> 투자에는 그에 상응하는 투자위험이 있음을
						충분히 인식하고 있습니다.<br/> 예)적금보다 높은 수익을 기대할 수 있다면 일정수준의 손실위험을 감수할 수 있음 <br />
						<a class="btn btn-default" href="${location}/portfolio/riskNeu"
						role="button">위험중립형 바로가기&nbsp;<i class="fa fa-hand-o-up"
							aria-hidden="true"></i></a>
					</li>
					<li class="mb5" id="max80" style="display: none; margin-top: 30px;">
						<i class="fa fa-check" aria-hidden="true" style="color: green;"></i>
						당신의 주식투자 성향은 <strong>"적극투자형"</strong>입니다.<br /> 투자원금의 보전보다는 위험을 감내하더라도
						높은 수준의 투자수익 실현을 추구함.<br/> 투자자금의 상당 부분을 주식, 주식형펀드 또는 파생상품 등의 위험자산에 투자할
						의향이 있음 <br /> <a class="btn btn-default"
						href="${location}/portfolio/activeInv" role="button">적극투자형
							바로가기&nbsp;<i class="fa fa-hand-o-up" aria-hidden="true"></i>
					</a>
					</li>
					<li id="max81" style="display: none; margin-top: 30px;"><i
						class="fa fa-check" aria-hidden="true" style="color: green;"></i>
						당신의 주식투자 성향은 <strong>"공격투자형"</strong>입니다.<br/> 시장평균 수익률을 훨씬 넘어서는 높은 수준의
						투자수익을 추구하며, 이를 위해 자산가치의 변동에 따른 손실 위험을 적극 수용.<br/> 투자자금 대부분을 주식, 주식형펀드
						또는 파생상품 등의 위험자산에 투자할 의향이 있음 <br /> <a class="btn btn-default"
						href="${location}/portfolio/riskPre" role="button">공격투자형
							바로가기&nbsp;<i class="fa fa-hand-o-up" aria-hidden="true"></i>
					</a></li>
				</ul>
				<!-- end : 결과보기 -->
				<!-- end : 내용마침 -->

			</div>
			<script type="text/javascript">
				var totalPoint = 0;
				var sum = 0;
				function aConfirm() {
					// 이전 결과가 있다면 리셋 후 진행
					if (totalPoint > 0) {
						totalPoint = 0;
						$("#maxUL").find("li").hide();
					}

					if ($("input[type='radio']:checked").size() < 7) {
						alert("모든 평가 내용 항목에 대한 답을 선택해 주세요!");
						return;
					}

					$("input[type='radio']:checked").each(function() {
						totalPoint += parseInt($(this).val());
						sum = totalPoint / 32 * 100;
						$("#totalPoint").html(sum);
					});

					if (sum <= 20)
						$("#max20").show();
					else if (sum > 20 && sum <= 40)
						$("#max40").show();
					else if (sum > 40 && sum <= 60)
						$("#max60").show();
					else if (sum > 60 && sum <= 80)
						$("#max80").show();
					else if (sum > 80)
						$("#max81").show();
				}

				function aReset() {
					$("input[type='radio']:checked").attr("checked", false);
					totalPoint = 0;
					$("#totalPoint").html(totalPoint);
					$("#maxUL").find("li").hide();
				}
			</script>

		</div>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">

<script type="text/javascript">

	function organization(){

		var modal = window.showModalDialog("${root }/jspc/popup/organizationchart.jsp", "organization", "dialogWidth:400px;dialogHeight:500px;");

	}
	
	$(document).ready( function() {
		  // 3자리마다 콤마찌기...
		})
		 
		 
	function fn_addComma(chknum){
		num = chknum.value;
		num = num.split(',').join('');
		var arr = num.split('.');
		var num = new Array();
		for (i = 0; i <= arr[0].length-1; i++) {
			num[i] = arr[0].substr(arr[0].length-1-i,1);
			if(i%3 == 0 && i != 0) num[i] += ',';
		}
		num = num.reverse().join('');
		if (!arr[1]) chknum.value = num; else chknum.value = num+'.'+arr[1];
		}
	
	function hap(hap){
		hap = document.f.Field2.value.replace(/\,/g,'')*document.f.Field4.value.replace(/\,/g,'');
		document.f.Field5.value = hap;
	}
</script>

          <!-- start: content -->
            <div id="content">
                <div class="panel">
                  <div class="panel-body">
                      <div class="col-md-6 col-sm-12">
                        <h3 class="animated fadeInLeft">${sessionScope.coInfo[6].strName }</h3>
                        <p class="animated fadeInDown"><span class="fa  fa-map-marker"></span> 메뉴카테고리 들어갈 자리</p>

                        
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="col-md-6 col-sm-6 text-right" style="padding-left:10px;">
                          <h5 id="addr"  style="color:#DDDDDE;"><span class="fa  fa-map-marker"></span> 위치정보 들어가는 자리</h5>
                          <h1 style="margin-top: -10px;color: #ddd;"></h1>
                        </div>
                        <div class="col-md-6 col-sm-6">
                           <div class="wheather">
	                            <div class="sun animated pulse infinite">
	                              <div class="suny"></div>
	                            </div>
                          </div>
                        </div>                   
                    </div>
                  </div>                    
                </div>
                
                <div class="panel-heading bg-white border-none" style="margin-bottom: 20px;">
                   	<h4><span class="icon-notebook icons"></span> 발주서
                   		<select>
	                   		<option onclick="location.href='${root }/jsp/appr/apprinsert.jsp'"> 정기휴가계</option>
	                   		<option onclick="location.href='${root }/jsp/appr/apprinsert2.jsp'"> 기안서</option>
	                   		<option onclick="location.href='${root }/jsp/appr/apprinsert3.jsp'"> 발주서</option>
	                   		<option onclick="location.href='${root }/jsp/appr/apprinsert4.jsp'"> 출장보고서</option>
                   		</select>
                   	</h4>	
                </div>

					<!-- start : 메뉴 디자인 구성하는 위치 -->
				<div class="col-md-12">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<div class="panel-heading bg-white border-none">
                   			<div class="panel-body">
                   				<form name="f" action="${root }/user/update.html" method="post" enctype="application/x-www-form-urlencoded">
                   					<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px;">
	                   					<h4>결재정보</h4>
	                   				</div>
	                   				
	                   				<table style="margin-left: 30px; width: 97%;">
	                   					<tbody>
	                   						<tr>
	                   							<td style="width: 12%;  text-align: center;">구 분</td>
	                   							<td colspan="2" style="width: 17%; text-align: center;">1란</td>
	                   							<td colspan="2" style="width: 17%; text-align: center;">2란</td>
	                   							<td colspan="2" style="width: 17%; text-align: center;">3란</td>
	                   							<td colspan="2" style="width: 17%; text-align: center;">4란</td>
	                   							<td colspan="2" style="width: 17%; text-align: center;">5란</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="width: 12%;  text-align: center;">결 재</td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="apprname1">대리 심응규</label>
	                   								<input type="hidden" id="apprcode1" name="apprcode1">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;">
	                   								<a href="#"  data-toggle="modal" data-target="#organization">
	                   									<i class="fa fa-plus-square"></i>
                   									</a>
               									</td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="apprname2">과장 김미희</label>
	                   								<input type="hidden" id="apprcode2" name="apprcode2">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;"><a href=""><i class="fa fa-plus-square"></i></a></td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="apprname3">팀장 박대성</label>
	                   								<input type="hidden" id="apprcode3" name="apprcode3">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;"><a href=""><i class="fa fa-plus-square"></i></a></td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="apprname4"></label>
	                   								<input type="hidden" id="apprcode4" name="apprcode4">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;"><a href=""><i class="fa fa-plus-square"></i></a></td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="apprname5"></label>
	                   								<input type="hidden" id="apprcode5" name="apprcode5">
                   								</td>
	                   							<td style="width: 2%; text-align: center;"><a href=""><i class="fa fa-plus-square"></i></a></td>
	                   						</tr>
	                   						<tr>
	                   							<td style="width: 12%;  text-align: center;">협 조</td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="coopername1">주임 김명섭</label>
	                   								<input type="hidden" id="coopercode1" name="coopercode1">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;"><a href=""><i class="fa fa-plus-square"></i></a></td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="coopername2"></label>
	                   								<input type="hidden" id="coopercode2" name="coopercode2">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;"><a href=""><i class="fa fa-plus-square"></i></a></td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="coopername3"></label>
	                   								<input type="hidden" id="coopercode3" name="coopercode3">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;"><a href=""><i class="fa fa-plus-square"></i></a></td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="coopername4"></label>
	                   								<input type="hidden" id="coopercode4" name="coopercode4">
	                   							</td>
	                   							<td style="width: 2%; text-align: center;"><a href=""><i class="fa fa-plus-square"></i></a></td>
	                   							<td style="width: 15%; text-align: center;">
	                   								<label style="width: 100%;" id="coopername5"></label>
	                   								<input type="hidden" id="coopercode5" name="coopercode5">
                   								</td>
	                   							<td style="width: 2%; text-align: center;"><a href=""><i class="fa fa-plus-square"></i></a></td>
	                   						</tr>
	                   						<tr>
	                   							<td style="width: 12%;  text-align: center;">수신부서</td>
	                   							<td colspan="10">
	                   								<input type="text" style="width: 95%;" id="receivedepartname" name="receivedepartname">
	                   								<input type="hidden" id="receivedepartcode" name="receivedepartcode">
	                   								<a href=""><i class="fa fa-plus-square"></i></a>&nbsp;&nbsp;<i class="fa fa-refresh"></i>
	                   							</td>
	                   						</tr>
	                   						<tr>
	                   							<td style="width: 12%;  text-align: center;">수신자</td>
	                   							<td colspan="10">
	                   								<input type="text" style="width: 95%;" id="receivename" name="receivename">
	                   								<input type="hidden" id="receivecode" name="receivecode">
	                   								<a href=""><i class="fa fa-plus-square"></i></a>&nbsp;&nbsp;<i class="fa fa-refresh"></i>
	                   							</td>
	                   						</tr>
	                   					</tbody>
                   					</table>
                   					
                   					<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px; margin-top: 30px;">
	                   					<h4>문서정보</h4>
	                   				</div>
	                   				
	                   				<table style="margin-left: 30px; width: 97%;">
	                   					<tbody>
	                   						<tr>
	                   							<td style="width: 12%; text-align: center;">문서번호</td>
	                   							<td style="width: 37%; text-align: center;"><label>1000</label>-<label>XXXX</label></td>
	                   							<td style="width: 12%; text-align: center;">문서종류</td>
	                   							<td style="width: 36%; text-align: center;"><label>휴가계 >> 정기휴가</label></td>
	                   						</tr>
	                   						<tr>
	                   							<td style="width: 12%; text-align: center;">부서</td>
	                   							<td style="width: 37%; text-align: center;"></td>
	                   							<td style="width: 12%; text-align: center;">기안자</td>
	                   							<td style="width: 36%; text-align: center;"></td>
	                   						</tr>
	                   						<tr>
	                   							<td style="width: 12%; text-align: center;">공개여부</td>
	                   							<td style="width: 37%; text-align: center;">
	                   								<select>
	                   									<c:forEach var="disclo" items="${disclosure }">
															<option value="${disclo.strSCode }">${disclo.strName }</option>
	                   									</c:forEach>
	                   								</select>
	                   							</td>
	                   							<td style="width: 12%; text-align: center;">보존기한</td>
	                   							<td style="width: 36%; text-align: center;">
	                   								<select>
	                   									<c:forEach var="record" items="${recordKeep }">
															<option value="${record.strSCode }">${record.strName }</option>
	                   									</c:forEach>
	                   								</select>
	                   							</td>
	                   						</tr>
                   							<tr>
                   								<td style="width: 12%; text-align: center;">기안일</td>
	                   							<td colspan="3">
	                   								<select style="width: 100px;">
		                                    			<option>선택</option>
		                                    				<c:forEach var="year" begin="1900" end="2100" step="1">
		                                    					<c:choose>
		                                    						<c:when test="${year eq sessionScope.userDetailInfo.strHire_YYYY }">
		                                    							<option value="${year }" selected="selected">${year }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${year }">${year }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
	                                    					</c:forEach>
		                                  			</select>
		                                  			년
		                                  			<select style="width: 100px;">
		                                    			<option>선택</option>
		                                    				<c:forEach var="month" begin="1" end="12" step="1">
		                                    					<c:if test="${month < 10 }">
		                                    						<c:set var="month" value="0${month }"/>
		                                    					</c:if>
		                                    					
		                                    					<c:choose>
		                                    						<c:when test="${month eq sessionScope.userDetailInfo.strHire_MM }">
		                                    							<option value="${month }" selected="selected">${month }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${month }">${month }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
		                                    				</c:forEach>
		                                  			</select>
		                                  			월
		                                  			<select style="width: 100px;">
		                                    			<option>선택</option>
		                                    				<c:forEach var="date" begin="1" end="31" step="1">
		                                    					<c:if test="${date < 10 }">
		                                    						<c:set var="date" value="0${date }"/>
		                                    					</c:if>
		                                    					
		                                    					<c:choose>
		                                    						<c:when test="${date eq sessionScope.userDetailInfo.strHire_DD }">
		                                    							<option value="${date }" selected="selected">${date }</option>
		                                    						</c:when>
		                                    							
		                                    						<c:otherwise>
		                                    							<option value="${date }">${date }</option>	
		                                    						</c:otherwise>
		                                    					</c:choose>
		                                    				</c:forEach>
		                                  			</select>
		                                  			일
	                   							</td>
                   							</tr>
	                   						<tr>
	                   							<td style="width: 12%; text-align: center;">제목</td>
	                   							<td colspan="3">
	                   								<input type="text" style="width: 100%" id=strtitle" name="strtitle">
	                   							</td>
	                   						</tr>
	                   					</tbody>
                   					</table>
                   					
                   					<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px; margin-top: 30px;">
	                   					<h4>문서내용</h4>
	                   				</div>
                   					
                   					<table style="margin-left: 30px; width: 97%;">
                   						<tbody>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;">품명</td>
	                   							<td style="width: 15%; text-align: center;">발주수량</td>
	                   							<td style="width: 15%; text-align: center;">규격</td>
	                   							<td style="width: 15%; text-align: center;">단가</td>
	                   							<td style="width: 15%; text-align: center;">금액</td>
	                   							<td style="width: 20%; text-align: center;">비고</td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field1" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field2" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field3" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field4" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);' onblur="hap(this)"></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field5" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);' readonly='readonly'></td>
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field6" style='width:90%; text-align:center; '></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field11" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field12" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field13" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field14" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field15" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);' readonly='readonly'></td>
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field16" style='width:90%; text-align:center; '></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field21" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field22" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field23" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field24" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field25" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);' readonly='readonly'></td>
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field26" style='width:90%; text-align:center; '></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field31" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field32" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field33" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field34" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field35" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);' readonly='readonly'></td>
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field36" style='width:90%; text-align:center; '></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field41" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field42" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field43" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field44" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field45" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);' readonly='readonly'></td>
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field46" style='width:90%; text-align:center; '></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field51" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field52" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field53" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field54" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field55" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);' readonly='readonly'></td>
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field56" style='width:90%; text-align:center; '></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field61" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field62" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field63" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field64" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field65" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);' readonly='readonly'></td>
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field66" style='width:90%; text-align:center; '></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field71" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field72" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field73" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field74" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field75" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);' readonly='readonly'></td>
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field76" style='width:90%; text-align:center; '></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field81" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field82" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field83" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field84" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field85" style='width:90%; text-align:center; ' onkeyup='fn_addComma(this);' readonly='readonly'></td>
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field86" style='width:90%; text-align:center; '></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field91" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field92" style='width:90%; text-align:center; ' onkeyup='javascript:fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field93" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field94" style='width:90%; text-align:center; ' onkeyup='javascript:fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field95" style='width:90%; text-align:center; ' onkeyup='javascript:fn_addComma(this);' readonly='readonly'></td>
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field96" style='width:90%; text-align:center; '></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field101" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field102" style='width:90%; text-align:center; ' onkeyup='javascript:fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field103" style='width:90%; text-align:center; '></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field104" style='width:90%; text-align:center; ' onkeyup='javascript:fn_addComma(this);'></td>
                   								<td style="width: 15%; text-align: center;"><input type="text" name="Field105" style='width:90%; text-align:center; ' onkeyup='javascript:fn_addComma(this);' readonly='readonly'></td>
                   								<td style="width: 20%; text-align: center;"><input type="text" name="Field106" style='width:90%; text-align:center; '></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;" colspan="3">소 계</td>
                   								<td style="width: 20%; text-align: center;" colspan="3"><input type="text" name="RField1" style='width:90%; text-align:center; ' readonly='readonly' onkeyup='javascript:fn_addComma(this);'></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;" colspan="3">세 액</td>
                   								<td style="width: 20%; text-align: center;" colspan="3"><input type="text" name="RField2" style='width:90%; text-align:center; ' readonly='readonly' onkeyup='javascript:fn_addComma(this);'></td>
                   							</tr>
                   							<tr height="30px">
                   								<td style="width: 20%; text-align: center;" colspan="3">합 계(VAT 포함)</td>
                   								<td style="width: 20%; text-align: center;" colspan="3"><input type="text" name="RField3" style='width:90%; text-align:center; ' readonly='readonly' onkeyup='javascript:fn_addComma(this);'></td>
                   							</tr>
                   							<tr height="150px">
                   								<td style="text-align: center;">특이사항</td>
                   								<td colspan="5"><textarea name="TField1" style='width:100%;height:150px;'></textarea></td>
                   							</tr>

                   						</tbody>
                   					</table>
                   					
                   					<div style="border-bottom: 1px dashed #BDBDBD; margin-bottom: 10px; margin-top: 30px;">
	                   					<h4>첨부파일</h4>
	                   				</div>
	                   				
	                   				<table style="margin-left: 30px; width: 97%;">
                   						<tbody>
                   							<tr>
                   								<td>
                   									<input type="file" value="파일찾기">
               									</td>
                   							</tr>
              							</tbody>
           							</table>
	                   				
                   				</form>
               				</div>
           				</div>
       				</div>
       				<div class="col-md-1"></div>
  				</div>
					<!-- end : 메뉴 디자인 구성하는 위치 -->
					
           </div>
          <!-- end: content -->
</html>
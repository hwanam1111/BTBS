<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- 마이 페이지 --%>

<!DOCTYPE html>
<html>
	<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="apple-touch-icon" sizes="76x76" href="/BTBP/resources/main/teamup-icon.png">
		<link rel="icon" href="/BTBP/resources/main/teamup-icon.png">
	    <title>BTBP - Best Teamwork Best Project</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	
		<!-- CSS Files -->
	    <link href="/BTBP/resources/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link href="/BTBP/resources/assets/css/paper-bootstrap-wizard.css" rel="stylesheet" />
		<!-- CSS Just for demo purpose, don't include it in your project -->
		<link href="/BTBP/resources/assets/css/demo.css" rel="stylesheet" />
		<!-- Fonts and Icons -->
	    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">
		<link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
		<link href="/BTBP/resources/assets/css/themify-icons.css" rel="stylesheet">
		<!--   Core JS Files   -->
		<script src="/BTBP/resources/assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
		<script src="/BTBP/resources/assets/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="/BTBP/resources/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
		<!--  Plugin for the Wizard -->
		<script src="/BTBP/resources/assets/js/paper-bootstrap-wizard.js" type="text/javascript"></script>
		<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
		<script src="/BTBP/resources/assets/js/jquery.validate.min.js" type="text/javascript"></script>
		<style>
			@import url('https://fonts.googleapis.com/earlyaccess/hanna.css');
			*{font-family: 'Hanna', sans-serif;}
		</style>
		<c:choose>
			<c:when test="${mvo.searchStatus eq 'Y'}">
				<style type="text/css">
					#searchYes{
						background-color: #68B3C8;
						color: white;
					}
				</style>
			</c:when>
			<c:otherwise>
				<style type="text/css">
					#searchNo{
						background-color: #66615B;
						color:white;
					}
				</style>
			</c:otherwise>
		</c:choose>
		
		<script type="text/javascript">
			$(function(){
				$('#searchNo').click(function(){
					$('#searchStatus').val('N');
					$('#searchNo').css('background-color', '#66615B');
					$('#searchYes').css('background-color', 'white');
					$('#noFont').css('color', 'white');
					$('#yesFont').css('color', '#68B3C8');
				});
				$('#searchYes').click(function(){
					$('#searchStatus').val('Y');
					$('#searchNo').css('background-color', 'white');
					$('#searchYes').css('background-color', '#68B3C8');
					$('#noFont').css('color', '#66615B');
					$('#yesFont').css('color', 'white');
				});
				
				$('#memberPw').click(function(){
					alert('비밀번호는 비밀번호 변경 메뉴에서 수정 가능합니다.');
				})
				
				$('#finishBtn').click(function(){
					if($('#memberId').val() == ""){
						alert('아이디를 입력해주세요.');
						$('#memberId').focus();
						return;
					}
					if($('#memberEmail').val() == ""){
						alert('이메일을 입력해주세요.');
						$('#memberEmail').focus();
						return;
					}
					if($('#memberPhone').val() == ""){
						alert('연락처를 입력해주세요.');
						$('#memberPhone').focus();
						return;
					}
					if($('#memberName').val() == ""){
						alert('이름를 입력해주세요.');
						$('#memberName').focus();
						return;
					}
					if($('#memberCompany').val() == ""){
						alert('회사명을 입력해주세요.');
						$('#memberCompany').focus();
						return;
					}
					if($('#memberDept').val() == ""){
						alert('부서를 입력해주세요.');
						$('#memberDept').focus();
						return;
					}
					if($('#memberRank').val() == ""){
						alert('직급을 입력해주세요.');
						$('#memberRank').focus();
						return;
					}
					alert('회원정보가 수정 되었습니다!');
					$('#frm').submit();
				});
			});
		</script>
	</head>

	<body>
		<div class="image-container set-full-height" style="background-image: url('/BTBP/resources/assets/img/paper-1.jpeg');">
		    <div class="container">
		        <div class="row">
			        <div class="col-sm-8 col-sm-offset-2">
			            <div>
			                <div class="card wizard-card" data-color="orange" id="wizardProfile" >
			                    <form id="frm" action="MemberInfoUpdate.do" method="post" enctype="multipart/form-data">
			                    	<div class="wizard-header text-center">
			                        	<h3 class="wizard-title">회원 가입</h3>
			                    	</div>
									<div class="wizard-navigation">
										<div class="progress-with-circle">
										     <div class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="1" aria-valuemax="3" style="width: 21%;"></div>
										</div>
										<ul>
				                            <li>
												<a href="#about" data-toggle="tab">
													<div class="icon-circle">
														<i class="ti-user"></i>
													</div>
													About
												</a>
											</li>
				                            <li>
												<a href="#account" data-toggle="tab">
													<div class="icon-circle">
														<i class="ti-settings"></i>
													</div>
													Work
												</a>
											</li>
				                            <li>
												<a href="#address" data-toggle="tab">
													<div class="icon-circle">
														<i class="ti-map"></i>
													</div>
													Other
												</a>
											</li>
				                        </ul>
									</div>
			                        <div class="tab-content">
			                            <div class="tab-pane" id="about">
			                            	<div class="row">
												<h5 class="info-text">아래 정보를 입력해주세요.</h5>
												<div class="col-sm-4 col-sm-offset-1">
													<div class="picture-container">
														<div class="picture">
														<c:if test="${mvo.memberImageName != null}">
															<img src="/BTBP/resources/upload/Members/${mvo.memberImageName }" class="picture-src" id="wizardPicturePreview" title="" />
														</c:if>
														<c:if test="${mvo.memberImageName == null}">
															<img src="/BTBP/resources/assets/img/default-avatar.jpg" class="picture-src" id="wizardPicturePreview" title="" />
														</c:if>
															<input type="file" name="file" id="wizard-picture" maxlength="60" size="40">
														</div>
														<h6>사진 업로드</h6>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="form-group">
														<label>아이디</label>
														<input id="memberId" name="memberId" type="text" class="form-control" value='${mvo.memberId}' readonly />
													</div>
													<div class="form-group">
														<label>비밀번호</label>
														<input name="memberPw" id="memberPw" type="password" class="form-control" value="********" readonly />
													</div>
												</div>
												<div class="col-sm-10 col-sm-offset-1">
													<div class="form-group">
														<label>이메일</label>
														<input id="memberEmail" name="memberEmail" type="email" class="form-control" value="${mvo.memberEmail }"  />
													</div>
												</div>
											</div>
			                            </div>
			                            <div class="tab-pane" id="address">
			                                <div class="row">
			                                    <div class="col-sm-12">
			                                        <h5 class="info-text"> 아래 정보를 입력해주세요. </h5>
			                                    </div>
			                                    <div class="col-sm-5 col-sm-offset-1">
			                                    	<div class="form-group">
			                                            <label>이름</label>
			                                            <input type="text" id="memberName" name="memberName" class="form-control" value="${mvo.memberName }"  />
			                                        </div>
			                                    </div>
			                                    <div class="col-sm-5">
			                                        <div class="form-group">
			                                            <label>성별</label>
			                                            <select class="form-control" name="memberGender" >
			                                           	 	<option>${mvo.memberGender}</option>
			                                            </select>
			                                        </div>
			                                    </div>
			                                    <div class="col-sm-5 col-sm-offset-1">
			                                        <div class="form-group">
			                                            <label>연락처</label>
			                                            <input type="text" id="memberPhone" name="memberPhone" class="form-control" value="${mvo.memberPhone }"  />
			                                        </div>
			                                    </div>
			                                    <div class="col-sm-5">
			                                        <div class="form-group">
			                                            <label>아이디 검색허용 여부</label>
			                                            <input type="hidden" name="searchStatus" id="searchStatus" value="${mvo.searchStatus }" >
			                                            <button type="button" class="btn btn-default" id="searchNo"><div id="noFont">N</div></button> <button type="button" class="btn btn-info" id="searchYes"><div id="yesFont">Y</div></button>
			                                        </div>
			                                    </div>
			                                </div>
			                            </div>
			                            
			                            <div class="tab-pane" id=account>
			                                <div class="row">
			                                    <div class="col-sm-12">
			                                        <h5 class="info-text"> 아래 정보를 입력해주세요. </h5>
			                                    </div>
			                                   	<div class="col-sm-10 col-sm-offset-1">
			                                        <div class="form-group">
			                                            <label>회사명</label>
			                                            <input type="text" id="memberCompany" name="memberCompany" class="form-control" value="${mvo.memberCompany }"  />
			                                        </div>
			                                    </div>
			                                    <div class="col-sm-5 col-sm-offset-1">
			                                    	<div class="form-group">
			                                            <label>부서명</label>
			                                            <input type="text" id="memberDept" name="memberDept" class="form-control" value="${mvo.memberDept }"  />
			                                        </div>
			                                    </div>
			                                    <div class="col-sm-5">
			                                        <div class="form-group">
			                                            <label>직급</label>
			                                            <input type="text" id="memberRank" name="memberRank" class="form-control" value="${mvo.memberRank }"  />
			                                        </div>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        <div class="wizard-footer">
			                            <div class="pull-right">
			                                <input type='button' class='btn btn-next btn-fill btn-warning btn-wd' name='next' value='Next' />
			                                <input type='button' class='btn btn-finish btn-fill btn-warning btn-wd' name='finish' id="finishBtn" value='Finish' />
			                            </div>
	
			                            <div class="pull-left">
			                                <input type='button' class='btn btn-previous btn-default btn-wd' name='previous' value='Previous' />
			                            </div>
			                            <div class="clearfix"></div>
			                        </div>
			                    </form>
			                </div>
			            </div>
			        </div>
		    	</div>
			</div>
		</div>
	</body>
</html>

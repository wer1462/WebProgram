<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member-change</title>
</head>
<body id="wrap">
	<div id="retouch">
		<!-- <div id="retouch-t">
			<div class="retouch-t-l">
			</div>
			<div class="retouch-t-r">
			</div>
		</div>
-->
		<div id="retouch-box">
			<div class="retouch-l">
				<div class="retouch-l-t">
					<a>회원정보</a>
				</div>
				<div class="retouch-l-m">
					<ul>
						<li class="retouch-admin"><a href="#">개인정보 수정</a></li>
						<li class="retouch-admin">
							<a>내 방 관리</a>
							<ul class="room-admin">
								<li><a href="#">전체 방</a></li>
								<li><a href="#">판매가 진행중인 방</a><span>999+</span></li>
								<li><a href="#">판매가 종료된 방</a><span>999+</span></li>
							</ul>
						</li>
						<li class="retouch-admin"><a href="#">알림</a><span>999+</span></li>
					</ul>
				</div>
				<div class="retouch-l-f">
					<a href="#">회원탈퇴 바로가기<span></span></a>
				</div>
			</div>
			<div class="retouch-r">
				<div class="retouch-check">
					<ul>
						<li>개인정보 수정</li>
					</ul>
					<div class="privacy">
						<form>
							<div class="privacy-items">
								<div>이름<span></span></div>
								<input class="privacy-name" type="text" value="이원희" disabled/>
							</div>
							<div class="privacy-items">
								<div>비밀번호<span>*</span></div>
								<input class="privacy-pw" type="password" maxlength="20" value="0123456789"/>
								<button>비밀번호 변경</button>
							</div>
							<div class="privacy-items">
								<div>생년월일<span>*</span></div>
								<input class="privacy-yy" type="text" value="1996"/>
								<select class="privacy-mm">
									<option>1월</option>
									<option>2월</option>
									<option>3월</option>
									<option>4월</option>
									<option>5월</option>
									<option>6월</option>
									<option>7월</option>
									<option>8월</option>
									<option>9월</option>
									<option>10월</option>
									<option>11월</option>
									<option>12월</option>
								</select>
								<input class="privacy-dd" type="text" value="31"/>
							</div>
							<div class="privacy-items">
								<div>이메일<span>*</span></div>
								<input class="privacy-mail" type="text" value="inroom@inroom.com"/>
							</div>
							<div class="privacy-items">
								<div>전화번호<span>*</span></div>
								<input class="privacy-phone" type="text" value="010-9999-9999"/>
							</div>
							<div class="privacy-items">
								<div>주소</div>
								<input class="privacy-addr" type="text" value="경기도 시흥시 정왕동"/>
								<button lass="privacy-addr-btn">주소검색</button>
							</div>
							<div class="privacy-items">
								<div>상세주소</div>
								<input class="privacy-addr" type="text" value="L동 207호"/>
							</div>
							<div class="privacy-items">
								<div>회원유형</div>
								<label class="privacy-member">
									<input class="privacy-member-ra" type="radio" name="member" checked/>
									<span></span><a>판매자</a>
								</label>
								<label class="privacy-member">
									<input class="privacy-member-ra" type="radio" name="member"/>
									<span></span><a>구매자</a>
								</label>
								<a class="privacy-member-a">※ 판매자에서 구매자로 변경 시 <span>메뉴사용에 제약</span>이 있을 수 있습니다.</a>
							</div>
							<div class="privacy-items privacy-ac">
								<input class="privacy-ac-btn" type="submit" value="수정"/>
								<input class="privacy-ac-btn" type="submit" value="취소"/>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
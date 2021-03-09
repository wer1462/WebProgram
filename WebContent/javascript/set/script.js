/**
 * 
*/
function registerForm(obj) {	
	var phone = /^\d{10,11}$/;
	var num = /^[0-9]*$/;

	if(!num.test(obj.room_Price1.value)) {		
		alert("숫자만 입력해주세요.");
		obj.room_Price1.focus();
		return false;		
	}
	
	if(obj.room_Price2.value == "") {
		alert("월세·전세을 반드시 입력하세요.");
		obj.room_Price2.focus();
		return false;
	}

	if(!num.test(obj.room_Price2.value)) {
		alert("숫자만 입력해주세요.");
		obj.room_Price2.focus();
		return false;	
	}
	
	if(obj.room_Deposit2.value == "") {
		var a = document.getElementById("a");
		
		if(a.disabled == false){
			alert("보증금을 반드시 입력하세요.");
			obj.room_Deposit2.focus();
			return false;
		}
	}
	
	
	if(!num.test(obj.room_Deposit2.value)) {
		var a = document.getElementById("a");
		if(a.disabled == false){
			alert("숫자만 입력해주세요.");
			obj.room_Deposit2.focus();
			return false;
		}
	}
	
	if(!num.test(obj.room_Deposit1.value)) {
		var a = document.getElementById("a");
		if(a.disabled == false){
			alert("숫자만 입력해주세요.");
			obj.room_Deposit1.focus();
			return false;
		}
	}
	8
	if(obj.room_Manageprice.value == "") {
		alert("관리비를 반드시 입력하세요.");
		obj.room_Manageprice.focus();
		return false;
	}
		if(!num.test(obj.room_Manageprice.value)) {
		alert("숫자만 입력해주세요.");
		obj.room_Manageprice.focus();
		return false;
	}
	
	
	if(obj.aa.value == "" || obj.cc.value == "") {		
		if(!obj.room_LiveDate.checked) {
			obj.aa.focus();
			alert("날짜를 선택하세요.");
			return false;
		}		
	}
	
	
	if(!num.test(obj.aa.value) || !num.test(obj.cc.value)) {	
		if(room_LiveDate[0].checked || room_LiveDate[1].checked) {
		}else{
			alert("숫자를 입력해주세요.");
			obj.aa.focus();
			return false;
		}	
	}
	
	if(obj.aa.value != "" && obj.cc.value != "" && obj.room_LiveDate[0].checked || obj.room_LiveDate[1].checked ) {
		obj.aa.focus();
		alert("날짜유형을 하나만 선택하세요.");
		return false;
	}
	
	if(obj.room_SupplySizeM.value == "") {
		alert("공급면적을 반드시 입력하세요.");
		obj.room_SupplySizeM.focus();
		return false;
	}
	if(!num.test(obj.room_SupplySizeM.value)) {
		alert("숫자를 입력해주세요.");
		obj.room_SupplySizeM.focus();
		return false;
	}
	
	if(obj.room_DedicatedSizeM.value == "") {
		alert("전용면적을 반드시 입력하세요.");
		obj.room_DedicatedSizeM.focus();
		return false;
	}
	if(!num.test(obj.room_DedicatedSizeM.value)) {
		alert("숫자를 입력해주세요.");
		obj.room_DedicatedSizeM.focus();
		return false;
	}
	
	if(obj.room_BuildingFloor.value == "") {
		alert("건물 층수을 반드시 입력하세요.");
		obj.room_BuildingFloor.focus();
		return false;
	}
	if(!num.test(obj.room_BuildingFloor.value)) {
		alert("숫자를 입력해주세요.");
		obj.room_BuildingFloor.focus();
		return false;
	}
	
	if(obj.room_Floor.value == "") {
		alert("해당 층수을 반드시 입력하세요.");
		obj.room_Floor.focus();
		return false;
	}
	if(!num.test(obj.room_Floor.value)) {
		alert("숫자를 입력해주세요.");
		obj.room_Floor.focus();
		return false;
	}
	
	if(obj.room_Count.value == "") {
		alert("방 수를 반드시 입력하세요.");
		obj.room_Count.focus();
		return false;
	}
	if(!num.test(obj.room_Count.value)) {
		alert("숫자를 입력해주세요.");
		obj.room_Count.focus();
		return false;
	}
	if(obj.room_Toilet.value == "") {
		alert("욕실 수를 반드시 입력하세요.");
		obj.room_Toilet.focus();
		return false;
	}
	if(!num.test(obj.room_Toilet.value)) {
		alert("숫자를 입력해주세요.");
		obj.room_Toilet.focus();
		return false;
	}
	
	var parkCheck = false;

	if(obj.room_Parking3.checked) {
		parkCheck = true;
	}
	
	if(obj.room_Parking.value == "" && parkCheck == false) {
		alert("총 주차가능 수를 반드시 입력하세요.");
		obj.room_Parking.focus();
		return false;
	}
	
	if(!num.test(obj.room_Parking.value)) {
		if(!obj.room_Parking3.checked){
			alert("숫자를 입력해주세요.");
			obj.room_Parking.focus();
			return false;
		}
	}
	
	
	if(obj.room_Parking2.value == "" && parkCheck == false) {
		alert("총 세대 수를 반드시 입력하세요.");
		obj.room_Parking2.focus();
		return false;
	}
	
	if(!num.test(obj.room_Parking2.value)) {
		if(!obj.room_Parking3.checked){
			alert("숫자를 입력해주세요.");
			obj.room_Parking2.focus();
			return false;
		}
	}	

	if(obj.room_Parking.value == "" && obj.room_Parking2.value == "" && parkCheck == false) {
		alert("주차 가능 여부를 반드시 입력하세요.");
		obj.room_Parking.focus();
		return false;
	}

	if(obj.room_Parking.value != "" && obj.room_Parking2.value != "" && parkCheck == true) {
		if(obj.room_Parking.value != "불가" && obj.room_Parking2.value != "불가"){
			alert("주차 가능 여부를 한가지만 입력하세요.");
			return false;
		}	
	}
		
	var PetCheck = false;
	for(var i=0; i<obj.room_Pet.length; i++) {
		if(obj.room_Pet[i].checked == true) {
			PetCheck = true;
		}		
	}
	if(PetCheck == false) {
		alert("반려동물을 선택하세요.");
		return false;
	}
	
	var ElevatorCheck = false;
	for(var i=0; i<obj.room_Elevator.length; i++) {
		if(obj.room_Elevator[i].checked == true) {
			ElevatorCheck = true;
		}		
	}
	if(ElevatorCheck == false) {
		alert("엘레베이터을 선택하세요.");
		return false;
	}
	
	var BuiltCheck = false;
	for(var i=0; i<obj.room_Built_In.length; i++) {
		if(obj.room_Built_In[i].checked == true) {
			BuiltCheck = true;
		}		
	}
	if(BuiltCheck == false) {
		alert("빌트인을 선택하세요.");
		return false;
	}
	
	var VerandaCheck = false;
	for(var i=0; i<obj.room_Veranda.length; i++) {
		if(obj.room_Veranda[i].checked == true) {
			VerandaCheck = true;
		}		
	}
	if(VerandaCheck == false) {
		alert("베란다/발코니를 선택하세요.");
		return false;
	}
	
	var Optioncheck = false;
	for(var i=0; i<obj.room_Options.length; i++) {
		if(obj.room_Options[i].checked == true) {
			Optioncheck = true;
		}		
	}	

	if(Optioncheck == false) {
		alert("추가 옵션을 하나 이상 선택하세요.");
		return false;
	}
	
	
	var Securitycheck = false;

	for(var i=0; i<obj.room_Security.length; i++) {
		if(obj.room_Security[i].checked == true) {
			Securitycheck = true;
		}		
	}	

	if(Securitycheck == false) {
		alert("보안옵션를 하나 이상 선택하세요.");
		return false;
	}
	
	
	if(obj.room_Content.value == "") {
		alert("상세 설명을 반드시 입력하세요.");
		obj.room_Content.focus();
		return false;
	}
	
	if(obj.room_Address.value == "") {
		alert("주소를 반드시 입력하세요.");
		obj.room_Address.focus();
		return false;
	}
	
	if(obj.room_Dong.value == "") {
		alert("동/건물명을 반드시 입력하세요.");
		obj.room_Dong.focus();
		return false;
	}
	
	if(obj.room_Ho.value == "") {
		alert("호를 반드시 입력하세요.");
		obj.room_Ho.focus();
		return false;
	}
	
	
	var Agentcheck = false;

	
	if(obj.room_Agent2.checked) {
		Agentcheck = true;
	}		
	
	
	if(obj.room_AgentStore.value == "" && Agentcheck == false) {
		alert("공인중개사 이름을 반드시 입력하세요.");
		obj.room_AgentStore.focus();
		return false;
	}
	
	if(obj.room_Agent.value == "" && Agentcheck == false) {
		alert("담당자를 반드시 입력하세요.");
		obj.room_Agent.focus();
		return false;
	}
	if(obj.room_AgentStore.value == "" && obj.room_Agent.value == "" && Agentcheck == false) {
		alert("공인중개사 이름/담당자를 반드시 입력하세요.");
		obj.room_Agent.focus();
		return false;
	}
	
	if (!num.test(obj.tellphone.value)) {
		alert("숫자를 입력해주세요.");
		obj.tellphone.focus();
		return false;
	}
	
	if (!phone.test(obj.tellphone.value)) {
		alert("10~11자리로 작성해주세요.");
		obj.tellphone.focus();
		return false;
	}
	
	
	
	
	
	
	obj.room_LiveDateNum.value = obj.aa.value+"."+obj.bb.value+"."+obj.cc.value;
	
	
	obj.room_DedicatedSizeNum.value =  obj.room_DedicatedSizeM.value+" / " + obj.room_SupplySizeM.value +"㎡평";
	
	
	obj.room_FloorNum.value = obj.room_Floorjs.value +"층"+" / " + obj.room_BuildingFloor.value+"층";
	obj.room_CountNum.value = obj.room_Count.value +"개"+" / " + obj.room_Toilet.value+"개";
	obj.room_ParkingNum.value = obj.room_Parking.value + "/"+obj.room_Parking2.value;
	

	alert(room_FloorNum);
	
	
	
	
	
	
	
	
	
	
	
}

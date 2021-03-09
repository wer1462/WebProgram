/**
 * 
*/
function registerForm(obj) {	
	alert("스크립트")	
	var TypeCheck = false;
	for(var i=0; i<obj.room_Type.length; i++) {
		if(obj.room_Type[i].checked == true) {
			TypeCheck = true;
		}		
	}
	if(TypeCheck == false) {
		alert("방종류를 선택하세요.");
		return false;
	}
	
	
	var RentTypeCheck = false;
	for(var i=0; i<obj.room_RentType.length; i++) {
		if(obj.room_RentType[i].checked == true) {
			RentTypeCheck = true;
		}		
	}
	if(RentTypeCheck == false) {
		alert("가격 종류를 선택하세요.");
		return false;
	}
	
	if(obj.room_Price.value == "") {
		alert("월세·전세을 반드시 입력하세요.");
		obj.room_Price.focus();
		return false;
	}
	
	if(obj.room_Deposit.value == "") {
		alert("보증금을 반드시 입력하세요.");
		obj.room_Deposit.focus();
		return false;
	}
	
	if(obj.room_Manageprice.value == "") {
		alert("관리비를 반드시 입력하세요.");
		obj.room_Manageprice.focus();
		return false;
	}
	
	
	var LiveDate = "";
	var LiveDateCheck = false;
	if(obj.aa.value == "" || obj.cc.value == "") {		
		
		for(var i=0; i<obj.room_LiveDate.length; i++) {
			if(obj.room_LiveDate[i].checked == true) {
				LiveDate += obj.room_LiveDate[i].value
				LiveDateCheck = true;
			}		
		
			if(LiveDateCheck == false) {
				obj.aa.focus();
				alert("날짜를 선택하세요.");
				return false;
			}
		}
	}
	if(obj.aa.value != "" && obj.cc.value != "" && LiveDateCheck == true) {
		obj.aa.focus();
		alert("날짜유형을 하나만 선택하세요.");
		return false;
	}
	
	if(obj.aa.value != "" && obj.cc.value != "" && LiveDateCheck == false) {
		var day = obj.aa.value + "년" + obj.bb.value + obj.cc.value + "일";	
		alert("day" + day)
		obj.hidroom_LiveDate.value = day;
	}
	
	if(obj.aa.value == "" && obj.cc.value == "" && LiveDateCheck == true) {
		obj.hidroom_LiveDate.value = LiveDate;
		alert("LiveDate" + LiveDate)
	}


	if(obj.room_SupplySize.value == "") {
		alert("공급면적을 반드시 입력하세요.");
		obj.room_SupplySize.focus();
		return false;
	}
	
	if(obj.room_SupplySizeM.value == "") {
		alert("공급면적을 반드시 입력하세요.");
		obj.room_SupplySizeM.focus();
		return false;
	}
	
	if(obj.room_DedicatedSize.value == "") {
		alert("전용면적을 반드시 입력하세요.");
		obj.room_DedicatedSize.focus();
		return false;
	}
	
	if(obj.room_DedicatedSizeM.value == "") {
		alert("전용면적을 반드시 입력하세요.");
		obj.room_DedicatedSizeM.focus();
		return false;
	}
	
	if(obj.room_BuildingFloor.value == "") {
		alert("건물 층수을 반드시 입력하세요.");
		obj.room_BuildingFloor.focus();
		return false;
	}
	
	if(obj.room_Floor.value == "") {
		alert("해당 층수을 반드시 입력하세요.");
		obj.room_Floor.focus();
		return false;
	}
	
	if(obj.room_Count.value == "") {
		alert("방 수를 반드시 입력하세요.");
		obj.room_Count.focus();
		return false;
	}
	
	if(obj.room_Toilet.value == "") {
		alert("욕실 수를 반드시 입력하세요.");
		obj.room_Toilet.focus();
		return false;
	}
	
	var parkNo = "";
	var parkCheck = false;

		if(obj.room_Parking3.checked) {
			parkNo += obj.room_Parking3.value;
			parkCheck = true;
			obj.hidroom_Parking.value = parkNo;
		}
	
	if(obj.room_Parking.value == "" && parkCheck == false) {
		alert("총 주차가능 수를 반드시 입력하세요.");
		obj.room_Parking.focus();
		return false;
	}
	
	if(obj.room_Parking2.value == "" && parkCheck == false) {
		alert("총 세대 수를 반드시 입력하세요.");
		obj.room_Parking2.focus();
		return false;
	}
	if(obj.room_Parking.value == "" && obj.room_Parking2.value == "" && parkCheck == false) {
		alert("주차 가능 여부를 반드시 입력하세요.");
		obj.room_Parking.focus();
		return false;
	}
	if(obj.room_Parking.value != "" && obj.room_Parking2.value != "" && parkCheck == false) {
		var park = obj.room_Parking.value/obj.room_Parking2.value
		obj.hidroom_Parking.value = park;
	}
	if(obj.room_Parking.value != "" && obj.room_Parking2.value != "" && parkCheck == true) {
		alert("주차 가능 여부를 한가지만 입력하세요.");
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
	var Options = "";
	for(var i=0; i<obj.room_Options.length; i++) {
		if(obj.room_Options[i].checked == true) {
			Options += obj.room_Options[i].value + ",";
			Optioncheck = true;
		}		
	}	
	alert(Options);
	if(Optioncheck == false) {
		alert("추가 옵션을 하나 이상 선택하세요.");
		return false;
	}
	obj.hidroom_Options.value = Options;
	
	
	var Securitycheck = false;
	var Security = "";
	for(var i=0; i<obj.room_Security.length; i++) {
		if(obj.room_Security[i].checked == true) {
			Security += obj.room_Security[i].value + ",";
			Securitycheck = true;
		}		
	}	
	alert(Security);
	if(Securitycheck == false) {
		alert("보안옵션를 하나 이상 선택하세요.");
		return false;
	}
	obj.hidroom_Security.value = Security;
	
	
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
	var Agent = "";
	
	if(obj.room_Agent2.checked) {
		Agent += obj.room_Agent2.value;
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
	
	if(obj.room_AgentStore.value == "" && obj.room_Agent.value == "" && Agentcheck == true) {
		obj.room_AgentStore.value = Agent;
		obj.room_Agent.value = Agent;
		alert(Agent)
	}	
	alert("이곳이 마지막");
}

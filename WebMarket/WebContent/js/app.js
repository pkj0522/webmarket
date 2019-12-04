$(function(){
	$("#btn").on("click",function(e){
		var id = $("#productid").val();
		var name = $("#name").val();
		var price = $("#aaa").val();
		var content = $("#content").val();
		var make = $("#manufacturer").val(); // 제조사
		var ak = $("#category").val(); // 분류
		var fff = $(".Op").val(); //제고수
		var qpqp = $("#condition").val(); // 상태
		var image = $("#productImage").val();
		console.log(id,name,price,content,make,ak,fff,qpqp,image);
		
		
		 var idex = /^[A-Z0-9+]*$/; // 대문자 영어랑 숫자만가능
         var namex = /^[가-힣]*$/; // 한글만 가능
         var unitPricex = /[0-9]/g; // 숫자만 가능
         var unitsInStockx = /[0-9]/g; // 숫자만 가능

		if(id && name && price && content && make && ak && fff && qpqp && image ){
			
		}
		else{
			alert("빈칸을 모두 채워주세요.");
		}
		
		if(idex.test(id)){
			
		}else{
			alert("영어와 숫자로 입력해주세요.");
		}
		
		
	});
});
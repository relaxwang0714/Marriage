var as1=document.getElementById("as");		//as1为高级选项展示
			$(function () {    
				var as1=document.getElementById("as");	//as1为高级选项展示

	//			高级选项
	            $('#icf .ao .ao_select').click(function (event) {    
	                 //取消事件冒泡    
	                event.stopPropagation();
	                $('#icf .aohb').toggle('slow');    
	            });    

	             //点击空白处或者自身隐藏弹出层，下面分别为滑动和淡出效果。    
	            $(document).click(function (event) { 
					$('#icf .aohb').slideUp('slow');
				});
	            $('#icf .aohb').click(function (event) { 
	                 event.stopPropagation(); 
	            });
				$('#icf .aohb .sure').click(function (event) {
	                event.stopPropagation();
	                $('#icf .aohb').hide('slow');    
	             });
				$('#ch').click(function (event) {
	                as1.innerText=$("#ch option:selected").val()+("  ")
									+$("#dt option:selected").val()+("  ");
	             });
				$('#dt').click(function (event) {
	                as1.innerText=$("#ch option:selected").val()+("  ")
									+$("#dt option:selected").val()+("  ");
	             });
				$('#icf .aohb .sure').click(function (event) {
	                as1.innerText=$("#ch option:selected").val()+("  ")+$("#dt option:selected").val()+
									("  ")+$("input[name='noc']").val()+("  ")+$("input[name='rd']").val();
	             });
	
				//点击置空， 清空内容
            	$('#icf .aohb .reset').click(function(){
                	$('#icf .aohb .input_1').val('');
                	$('#icf .aohb .input_2').val('');
                	$('#ch').val('');
                	as1.innerText=$("#ch option:selected").val();
                	$('#dt').val('');
                	as1.innerText=$("#ch option:selected").val()+("  ")
									+$("#dt option:selected").val()+("  ");
            	});
            	
//          	按钮动画
				$("#icf .ab button,#icf .sd button").mouseenter(function(){
					//给div加入一个鼠标移入事件
					$(this).css({'font-size':'17px'});
				
				})
				//给div加鼠标移出事件
				$("#icf .ab button,#icf .sd button").mouseleave(function(){
					$(this).css({'font-size':'13.5px'});
				})
            	
        //二级菜单动画
            	
           	//婚姻家庭纠纷类
				//同居关系纠纷
            	$(".ab_buttons").mouseover(function(){
					//给div加入一个鼠标移入事件
					$(this).children('.two_show_1').show();
				
				})
				//给div加鼠标移出事件
				$(".ab_buttons").mouseout(function(){
					$(this).children('.two_show_1').hide();
				})
				
				//抚养纠纷
				$(".ab_buttons").mouseover(function(){
					$(this).children('.two_show_2').show();
				})
				$(".ab_buttons").mouseout(function(){
					$(this).children('.two_show_2').hide();
				})
				
				//赡养纠纷
				$(".ab_buttons").mouseover(function(){
					$(this).children('.two_show_3').show();
				})
				$(".ab_buttons").mouseout(function(){
					$(this).children('.two_show_3').hide();
				})
				
				//收养关系纠纷
				$(".ab_buttons").mouseover(function(){
					$(this).children('.two_show_4').show();
				})
				$(".ab_buttons").mouseout(function(){
					$(this).children('.two_show_4').hide();
				})
				
			//继承纠纷类
				//法定继承纠纷
				$(".sd_buttons").mouseover(function(){
					$(this).children('.two_show_1').show();
				})
				$(".sd_buttons").mouseout(function(){
					$(this).children('.two_show_1').hide();
				})
				
	         }) 
	
		//			获取高级选项并显示
			function print(){
				
			}   
function up_say(){
		$('.write_list').remove();
	    var text = $('.write_box input').val(),
	        str  = '<div class="question">';
	        str += '<div class="heard_img right"><img src="img/logo f6.png"></div>';
	        str += '<div class="question_text clear"><p>'+text+'</p><i></i>';
	        str += '</div></div>';

	    if(text == ''){
	        alert('请输入提问！');
	        $('.write_box input').focus();
	    }else{
	        $('.speak_box').append(str);
	        $('.write_box input').val('');
	        $('.write_box input').focus();
	        autoWidth();
	        for_bottom();
	        setTimeout(function(){
	            var ans  = '<div class="answer"><div class="heard_img left"><img src="img/logo f6.png"></div>';
	            	ans += '<div class="answer_text"><p>正在为您搜索...<br/>稍等片刻哦~</p><i></i>';
	        		ans += '</div></div>';
	        	$('.speak_box').append(ans);
				for_bottom();
	        },1000);
		    setTimeout(function(){
		       var a=document.getElementById('aaa').value;
		       if(a==1){
		          var ans  = '<div class="answer"><div class="heard_img left"><img src="img/logo f6.png"></div>';
		          ans += '<div class="answer_text"><p>已为您找到相关文档点击进入<br/><a href="jdbcSql/select_main.jsp">点击</a></p><i></i>';
		          ans += '</div></div>';
		          $('.speak_box').append(ans);
		          for_bottom();
		       }else if(a==2){
		    	   var ans  = '<div class="answer"><div class="heard_img left"><img src="img/logo f6.png"></div>';
			          ans += '<div class="answer_text"><p>已为您找到相关文档点击进入<br/><a href="jdbcSql/select_main_2.jsp">点击</a></p><i></i>';
			          ans += '</div></div>';
			          $('.speak_box').append(ans);
			          for_bottom();
		       }else if(a==9.2){
		    	   var ans  = '<div class="answer"><div class="heard_img left"><img src="img/logo f6.png"></div>';
			          ans += '<div class="answer_text"><p>已为您找到相关文档点击进入<br/><a href="jdbcSql/select_main_9_2.jsp">点击</a></p><i></i>';
			          ans += '</div></div>';
			          $('.speak_box').append(ans);
			          for_bottom();
		       }
		        },2000);
	        
//	        setTimeout(function(){
//      	alert("已为您找到相关资料");
//      	window.location.href="login.html";
//      	},2000)
			
			
	    }
	}

	function keyup(){
		var footer_height = $('.wenwen-footer').outerHeight(),
			text = $('.write_box input').val(),
			str = '<div class="write_list">'+text+'</div>';
		if (text == '' || text == undefined){
			$('.write_list').remove();
		}else{
			$('.wenwen-footer').append(str);
			$('.write_list').css('bottom',footer_height);
		}
	}

//	var wen  = document.getElementById('wenwen');
	function _touch_start(event){
        event.preventDefault();
        $('.wenwen_text').css('background','#c1c1c1');
        $('.wenwen_text span').css('color','#fff');
        $('.saying').show();
    }

    function _touch_end(event){
        event.preventDefault();
        $('.wenwen_text').css('background','#fff');
        //$('.wenwen_text .circle-button').css('color','#666');    
        $('.saying').hide();
        var str  = '<div class="question">';
	        str += '<div class="heard_img right"><img src="img/logo f6.png"></div>';
	        str += '<div class="question_text clear"><p>不好意思，我听不清！</p><i></i>';
	        str += '</div></div>';
		$('.speak_box').append(str);
		for_bottom();
        setTimeout(function(){
        	var ans  = '<div class="answer"><div class="heard_img left"><img src="img/logo f6.png"></div>';
	        	ans += '<div class="answer_text"><p>我不知道你在说什么?</p><i></i>';
	    		ans += '</div></div>';
	    	$('.speak_box').append(ans);
			for_bottom();
        },1000);  
    }

//  wen.addEventListener("touchstart", _touch_start, false);
//  wen.addEventListener("touchend", _touch_end, false);
    
    function for_bottom(){
		var speak_height = $('.speak_box').height();
		$('.speak_box,.speak_window').animate({scrollTop:speak_height},500);
	}
	
	function autoWidth(){
		$('.question_text').css('max-width',$('.question').width()-60);
	}
	autoWidth();
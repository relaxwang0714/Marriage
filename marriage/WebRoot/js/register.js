$(function(){
	$('#username').focus().blur(checkName);
	$('#password').blur(checkPassword);
	$('#passwords').blur(checkPasswords);
	//$('#phone').blur(phone);
	//$('#address').blur(address);
	$('#email').blur(email);
});

function checkName(){
	var name = $('#username').val();
	if(name == null || name == ""){
		//提示错误
		$('#count-msg').html("用户名不能为空");
		return false;
	}
	var reg = /^\w|[\u4e00-\u9fa5]{3,10}$/;
	if(!reg.test(name)){
		$('#count-msg').html("输入3-10个字母或数字或下划线");
		return false;
	}
	$('#count-msg').empty();
	return true;
}

function checkPassword(){
	var password = $('#password').val();
	if(password == null || password == ""){
		//提示错误
		$('#password-msg').html("密码不能为空");
		return false;
	}
	var reg = /^\w{3,10}$/;
	if(!reg.test(password)){
		$('#password-msg').html("输入3-10个字母或数字或下划线");
		return false;
	}
	$('#password-msg').empty();
	return true;
}

function checkPasswords(){
	var password = $('#password').val();
	if(password == null || password == ""){
		//提示错误
		$('#passwords-msg').html("密码不能为空");
		return false;
	}
	var reg = /^\w{3,10}$/;
	if(!reg.test(password)){
		$('#passwords-msg').html("输入3-10个字母或数字或下划线");
		return false;
	}
	$('#passwords-msg').empty();
	return true;
}

/*
function phone(){
	var name = $('#phone').val();
	if(name == null || name == ""){
		//提示错误
		$('#phone-msg').html("电话不能为空");
		return false;
	}
	var reg = /^\w{3,10}$/;
	if(!reg.test(name)){
		$('#phone-msg').html("请输入正确的电话号码");
		return false;
	}
	$('#phone-msg').empty();
	return true;
}

function address(){
	var name = $('#address').val();
	if(name == null || name == ""){
		//提示错误
		$('#address-msg').html("地址不能为空");
		return false;
	}
	var reg = /^\w{3,10}$/;
	if(!reg.test(name)){
		$('#address-msg').html("请输入正确的地址");
		return false;
	}
	$('#address-msg').empty();
	return true;
}
*/

function realname(){
	var name = $('#email').val();
	if(name == null || name == ""){
		//提示错误
		$('#email-msg').html("邮箱不能为空");
		return false;
	}
	var reg = /^\w{3,10}$/;
	if(!reg.test(name)){
		$('#email-msg').html("请输入正确的邮箱");
		return false;
	}
	$('#email-msg').empty();
	return true;
}
/**
 * 登录框和注册框的数据验证
 */
$(document).ready(function(){
	//邮箱格式的正则表达式
	var emaliReg = new RegExp(/^[\w-]+(\.[\w-]+)*@([\w-]+\.)+(com|cn)$/);
	
	var tip = $(".form-tip");
	var reset = $("#reset");
	
	var log_acc = $("#login-account");
	var log_pas = $("#login-password");
	var log_submit = $("#login-submit");
	
	var reg_acc = $("#register-account");
	var reg_name = $("#register-name");
	var reg_pas = $("#register-password");
	var reg_repas = $("#register-repassword");
	var reg_submit = $("#register-submit");
	//显示提示信息
	function showTip(info){
		tip.css("display","block").html(info);
	}
	//重置
	reset.click(function resetInfo(){
		log_acc.val("");
		log_pas.val("");
		reg_acc.val("");
		reg_name.val("");
		reg_pas.val("");
		reg_repas.val("");
		tip.css("display","none").html("");
	})
	
	/*
	 * 登录表单的验证
	 */
	log_acc.blur(function(){
		if(!emaliReg.test(log_acc.val())){
			showTip("请输入合法的邮箱！");
		}
	})
	log_submit.click(function(){
		if(log_acc.val() == ""){
			showTip("请输入邮箱！")
		}else if(log_pas.val() == ""){
			showTip("请输入密码！")
		}else{
			$.post("UserServlet",
					{	
						action:"login",
						account:log_acc.val(),
						password:log_pas.val()
					},
					function(data){
						if(data == "ok"){
							window.location.href="index.jsp";
						}
						if(data == "error"){
							showTip("邮箱或密码错误！");
						}
					}	
				)
		}
	})
	
	/*
	 * 注册表单的验证
	 */
	reg_acc.blur(function(){
		if(!emaliReg.test(reg_acc.val())){
			showTip("请输入合法的邮箱！");
		}
	})
	reg_submit.click(function(){
		if(reg_acc.val() == ""){
			showTip("请输入邮箱！");
		}else if(reg_name.val() == ""){
			showTip("请输入昵称!");
		}else if(reg_pas.val() == ""){
			showTip("请输入密码！");
		}else if(reg_repas.val() == ""){
			showTip("请再次输入密码！");
		}else if(reg_pas.val() != reg_repas.val()){
			showTip("两次输入的密码不一致！");
		}else{
			$.post("UserServlet",
					{
						action:"register",
						account:reg_acc.val(),
						password:reg_pas.val(),
						name:reg_name.val()
					},
					function(data){
						if(data == "ok"){
							window.location.href="index.jsp";
						}
						if(data == "exist"){
							showTip("此邮箱已经存在！");
						}
					})
		}
	})
	
})
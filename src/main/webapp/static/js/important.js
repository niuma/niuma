
function login(){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    if(document.getElementById("remember").checked)
        var remember = true;
    else
        var remember = false;

    if (username == "") {
        document.getElementById("loginErrorInfo").innerHTML = "<span class='glyphicon glyphicon-warning-sign'  aria-hidden='true'></span> &nbsp username is required.";
        $("#username").focus();
        return;
    }
    if (password == ""){
        document.getElementById("loginErrorInfo").innerHTML = "<span class='glyphicon glyphicon-warning-sign'  aria-hidden='true'></span> &nbsp password is required.";
        $("#password").focus();
        return;
	}
	$.ajax({
	    type: "post",
	    url: "/user/loginByUsername.action",
		data: {"username":username, "password":password, "remember":remember},
		success: function (map) {
            if (map.msg == "success"){
                location.reload();
        	}
        	else{
                document.getElementById("loginErrorInfo").innerHTML = "<span class='glyphicon glyphicon-warning-sign'  aria-hidden='true'></span> &nbsp"+map.msg;
			}
        },
		error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log("status:"+XMLHttpRequest.status+"\nreadyStatus:"+XMLHttpRequest.readyState+"\ntextStatus:"+textStatus+"\nerrorThrown:"+errorThrown);
            console.log("error: \n"+XMLHttpRequest.responseText);
        }
	});
}

function register() {
    var username = document.getElementById("username1").value.trim();
    var password1 = document.getElementById("password1").value.trim();
    var password2 = document.getElementById("password2").value.trim();
    var phone = document.getElementById("phone").value;
    var mail = document.getElementById("mail").value;
    if (username.length<=0) {
        document.getElementById("registerErrorInfo").innerHTML = "<span class='glyphicon glyphicon-warning-sign'  aria-hidden='true'></span> &nbsp; The username is required.";
        $("#username1").focus();
        return;
    }
    if (password1.length<6){
        document.getElementById("registerErrorInfo").innerHTML = "<span class='glyphicon glyphicon-warning-sign'  aria-hidden='true'></span> &nbsp; The length of password is not enough.";
        $("#password1").focus();
        return;
    }
    if (password2.length<6){
        document.getElementById("registerErrorInfo").innerHTML = "<span class='glyphicon glyphicon-warning-sign'  aria-hidden='true'></span> &nbsp; The length of password is not enough.";
        $("#password2").focus();
        return;
	}
	if (password1 != password2){
        document.getElementById("registerErrorInfo").innerHTML = "<span class='glyphicon glyphicon-warning-sign'  aria-hidden='true'></span> &nbsp; The password must be the same.";
		$("#password1").empty();
		$("#password2").empty();
		$("#password1").focus();
		return;
    }
	if (phone.length != 11){
        document.getElementById("registerErrorInfo").innerHTML = "<span class='glyphicon glyphicon-warning-sign'  aria-hidden='true'></span> &nbsp; The phone number is not correct.";
		$("#phone").focus();
		return;
    }
    if (mail.length == 0){
        document.getElementById("registerErrorInfo").innerHTML = "<span class='glyphicon glyphicon-warning-sign'  aria-hidden='true'></span> &nbsp; The email address is not correct.";
        $("#mail").focus();
        return;
	}
    else {
	    var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
	    if (!reg.test(mail)) {
            document.getElementById("registerErrorInfo").innerHTML = "<span class='glyphicon glyphicon-warning-sign'  aria-hidden='true'></span> &nbsp; The email number is not correct.";
            $("#mail").focus();
            return;
        }
    }
    $.ajax({
        type: "post",
        url: "/user/register.action",
        data: {"username":username, "password":password1, "phone":phone, "mail":mail},

        success: function (map) {
            if (map == "Register successfully!"){
                alert(map.toString());
                window.location.reload();
                //window.location.href = "redirect:/user/loginByUsername.action?username="+username+"&password="+password1;
            }
            else{
                alert("error:"+map.toString());
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            alert("status:"+XMLHttpRequest.status+"\nreadyStatus:"+XMLHttpRequest.readyState+"\ntextStatus:"+textStatus+"\nerrorThrown:"+errorThrown);
            alert("error: \n"+XMLHttpRequest.responseText);
        }
    });
}
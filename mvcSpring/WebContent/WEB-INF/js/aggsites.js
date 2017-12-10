/**
 * 
 */
function login(){
	//window.open('./login');//打开新窗口
	window.location.href='./signin';//在同一个窗口
}
function logout(){
}
function register(){
	
}
function addClassAttribute(obj){
	var obj1 = document.getElementsByTagName("current_nav");
	if(obj1.href!= obj.href){
		obj1.removeAttribute("class");
	}
	obj.setAttribute("class","current_nav");
}
function writeBlog(){
	window.open('./writeBlog');
}
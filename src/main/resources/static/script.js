function validateId(){
	var id = document.getElementById("id").value;
	if(id.length < 1){
		alert("You need to assign this task to someone, use the table below.");
		return false;
	}
}
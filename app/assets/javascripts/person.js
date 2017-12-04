console.log("hello isinde person js")

$(function() {
	console.log("jquery is here")

	$("#button-jq").on('click', deletePerson);
})


function deletePerson() {
	console.log("deleting person")


	// ajax call
	// var xhttp = new XMLHttpRequest();
	// xhttp.onreadystatechange = function() {
	// 	if (this.readyState == 4 && this.status == 200) {
	// 	  // success
	// 	  console.log(this.getAllResponseHeaders());
	// 	  console.log(this.responseText)
	// 	}
	// };
	// var id = 10;
	// xhttp.open("post", "/peoples/" + id, true);
	// xhttp.send("_method=delete");

	// console.log("program moved forward")
	var id = $("#person-id").attr('data-id')
	var auth_token = $("#authenticity_token").attr("value")

	$.ajax({
		url: "/peoples/" + id,
		type: "delete",
		data: {'authenticity_token': auth_token},
		succes: function(result) {
			console.log("succesful")
		},
		error: function() {
			console.log("error")
		}
	})

}


// request (delete) -> peoples/id -> peoples#destroy

// synchrouns -> request -> server -> response -> program move forward
// asynchronous -> request -> program move forward 
// response -> callback function run.


// get -> server -> response.......



function footer() {

	const mat_id = document.getElementById("head").getAttribute('data-material');
	let tpl_source;
	let data_source;

	if (mat_id.length == 5){ 
		tpl_source = "../../../assets/template/footer_it.tpl";
		data_source = "../../../assets/data/website/footer_it.json";
	}
	else if (mat_id.length == 3) { // home
		tpl_source = "assets/template/footer_it.tpl";
		data_source = "assets/data/website/footer_it.json";
	}
	else {
		tpl_source = "../../assets/template/footer_it.tpl";
		data_source = "../../assets/data/website/footer_it.json";
	}

	const target = "#footer";

	function handlebars_footer(tpl_,data_){
		$.get(tpl_, function(tpl) {
			$.getJSON(data_, function(data) {

				let template = Handlebars.compile(tpl); 
				$(target).html(template(data));
			});
		});
	}

	handlebars_footer(tpl_source,data_source)
}

Handlebars.registerHelper('logo', function (value) {
	const page = document.getElementById("head").getAttribute('data-material');

	if (page.length == 5){
		return "../../../assets/images/logo/supsi-logo.png"
	}
	else if (page.length == 3){
		return "assets/images/logo/supsi-logo.png"
	}
	else {
		return "../../assets/images/logo/supsi-logo.png"
	}
	
});


window.addEventListener("load", function(){
    footer();
});
function footer() {

	const mat_id = document.getElementById("head").getAttribute('data-material');
	let tpl_source;
	let data_source;

	if (mat_id.length == 5){
		tpl_source = "../../../../assets/template/footer.tpl";
		data_source = "../../../../assets/data/website/footer.json";
	}
	else if (mat_id.length == 1) { // home
		tpl_source = "assets/template/footer.tpl";
		data_source = "assets/data/website/footer.json";
	}
	else {
		tpl_source = "../../assets/template/footer.tpl";
		data_source = "../../assets/data/website/footer.json";
	}

	const target = "#footer";

	$.get(tpl_source, function(tpl) {
		$.getJSON(data_source, function(data) {

			let template = Handlebars.compile(tpl); 
			$(target).html(template(data));
		});
	});
}

Handlebars.registerHelper('logo', function (value) {
	const page = document.getElementById("head").getAttribute('data-material');

	if (page.length == 5){
		return "../../../../assets/images/logo/supsi-logo.png"
	}
	else {
		return "../../assets/images/logo/supsi-logo.png"
	}
	
});


window.addEventListener("load", function(){
    footer();
});
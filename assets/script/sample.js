function sample() {

	const mat_id = document.title.split(" ")[0];

	const tpl_material_source = "../../../assets/template/sample.tpl";
	const data_source = "../../../assets/data/sample/" + mat_id + ".json";
	const target = "#sample";

	$.get(tpl_material_source, function(tpl) {
		$.getJSON(data_source, function(data) {

			let template = Handlebars.compile(tpl); 
			$(target).html(template(data));
		});
	});
}

Handlebars.registerHelper('loan', function (value) {
	if (value == true){
		return "consentito"
	}
	else {
		return "non consentito"
	}
});

window.addEventListener("load", function(){
    sample();
});
function materials() {

	let tpl_material_source = "../../assets/template/material.tpl";
	let data_source = "../../assets/data/material.json";
	let target = "#material";

	$.get(tpl_material_source, function(tpl) {
		$.getJSON(data_source, function(data) {

			let template = Handlebars.compile(tpl); 
			$(target).html(template(data));

			console.log(data)
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

Handlebars.registerHelper('n_samples', function (value) {
	return value
});

window.addEventListener("load", function(){
    materials();
});
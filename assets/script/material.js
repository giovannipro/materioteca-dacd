function materials() {

	const mat_id = document.title.split(" ")[0];

	const tpl_material_source = "../../assets/template/material.tpl";
	const data_source = "../../assets/data/material_" + mat_id + ".json";
	const target = "#material";

	$.get(tpl_material_source, function(tpl) {
		$.getJSON(data_source, function(data) {

			let template = Handlebars.compile(tpl); 
			$(target).html(template(data));
		});
	});
}

window.addEventListener("load", function(){
    materials();
});
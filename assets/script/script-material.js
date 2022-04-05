function materials() {

	var tpl_material_source = "../../assets/template/material.tpl";
	var data_source = "../../assets/data/materials.json";
	var target = "#material";

	$.get(tpl_material_source, function(tpl) {
		$.getJSON(data_source, function(data) {
			var template = Handlebars.compile(tpl); 
			$(target).html(template(data));

			console.log(data)
		});
	});
}

window.addEventListener("load", function(){
    materials();
});
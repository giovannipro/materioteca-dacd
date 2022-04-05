function company() {

	var tpl_company_source = "../../assets/template/company.tpl";
	var data_source = "../../assets/data/company.json";
	var target = "#company";

	$.get(tpl_company_source, function(tpl) {
		$.getJSON(data_source, function(data) {
			var template = Handlebars.compile(tpl); 
			$(target).html(template(data));

			console.log(data)
		});
	});
}

window.addEventListener("load", function(){
    company();
});
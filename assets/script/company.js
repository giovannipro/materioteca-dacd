function company() {

	const tpl_company_source = "../../assets/template/company.tpl";
	const data_source = "../../assets/data/company.json";
	const target = "#company";

	$.get(tpl_company_source, function(tpl) {
		$.getJSON(data_source, function(data) {

			let template = Handlebars.compile(tpl); 
			$(target).html(template(data));

			console.log(data)
		});
	});
}

window.addEventListener("load", function(){
    company();
});
function company() {

	let tpl_company_source = "../../assets/template/company.tpl";
	let data_source = "../../assets/data/company.json";
	let target = "#company";

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
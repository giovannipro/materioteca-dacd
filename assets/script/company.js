function company() {

	const com_id = document.title.split(" ")[0];

	const tpl_company_source = "../../assets/template/company.tpl";
	const data_source = "../../assets/data/company/" + com_id + ".json";
	const target = "#company";

	$.get(tpl_company_source, function(tpl) {
		$.getJSON(data_source, function(data) {

			let template = Handlebars.compile(tpl); 
			$(target).html(template(data));
		});
	});
}

window.addEventListener("load", function(){
    company();
});
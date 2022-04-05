function index() {

	let tpl_company_source = "../../assets/template/index.tpl";
	let data_source_a = "../../assets/data/company.json";
	let data_source_b = "../../assets/data/material.json";
	let target = "#index";

	// $.get(tpl_company_source, function(tpl) {

	// 	let data1 = $.getJSON(data_source_a, function(data) { 
	// 		console.log(data)
	// 	})
	// 	console.log(data_1)

		// $.when($.getJSON(data_source_a), $.getJSON(data_source_b))
		// 	.done(function(data1, data2) {
		// 		console.log(data1)
		// 		console.log(data2)

		// 		let data = data1.concat(data2)
		// 		console.log(data)

		// 		let template = Handlebars.compile(tpl); 
		// 		$(target).html(template(data));
		// })
	// })
}

window.addEventListener("load", function(){
    index();
});
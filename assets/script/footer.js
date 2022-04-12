function footer() {

	const tpl_source = "../../assets/template/footer.tpl";
	const data_source = "../../assets/data/website/footer.json";
	const target = "#footer";

	$.get(tpl_source, function(tpl) {
		$.getJSON(data_source, function(data) {

			let template = Handlebars.compile(tpl); 
			$(target).html(template(data));

			// console.log(data);
		});
	});
}

window.addEventListener("load", function(){
    footer();
});
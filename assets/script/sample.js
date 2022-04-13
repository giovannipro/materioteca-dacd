const switch_ = document.getElementById("switch");

function sample() {

	const mat_id = document.getElementById("head").getAttribute('data-material');
	const sam_id = document.title.split(" ")[0];
	const gray = "#3c3c3c";

	const tpl_material_source_it = "../../../assets/template/sample_it.tpl";
	const tpl_material_source_en = "../../../assets/template/sample_en.tpl";
	const target = "#sample";

	function handlebars(tpl_,data_){
		$.get(tpl_, function(tpl) {
			$.getJSON(data_, function(data) {

				let template = Handlebars.compile(tpl); 
				$(target).html(template(data));
			});
		});
	}

	const data_source = "../../../assets/data/sample/" + mat_id + "/" + sam_id + "_it.json";
	handlebars(tpl_material_source_it,data_source);

	// language switch
	switch_.addEventListener("click", switch_it);

	function switch_it(){

		let language = switch_.getAttribute("data-lang");

		if (language == "IT"){
			switch_.innerHTML = "ITA";
			switch_.setAttribute("data-lang","EN");
			tpl = tpl_material_source_en;
			data = "../../../assets/data/sample/" + mat_id + "/" + sam_id + "_it.json";
		}
		else if (language == "EN"){
			switch_.innerHTML = "ENG";
			switch_.setAttribute("data-lang","IT");
			tpl = tpl_material_source_it;
			data = "../../../assets/data/sample/" + mat_id + "/" + sam_id + "_en.json";
		}
		handlebars(tpl,data)
	}
}

Handlebars.registerHelper('loan', function (value,lang) {
	let language = switch_.getAttribute("data-lang");

	if (value == true){
		if (language == "IT"){
			return "consentito"
		}
		else if (language == "EN") {
			return "allowed"
		}
	}
	else {
		if (language == "IT"){
			return "non consentito"
		}
		else if (language == "EN") {
			return "not allowed"
		}
	}
});

window.addEventListener("load", function(){
    sample();
});
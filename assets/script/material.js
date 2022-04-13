function materials() {

	const mat_id = document.title.split(" ")[0];
	const gray = "#3c3c3c";

	const tpl_material_source_it = "../../assets/template/material_it.tpl";
	const tpl_material_source_en = "../../assets/template/material_en.tpl";
	const target = "#material";

	function handlebars(tpl_,data_){
		$.get(tpl_, function(tpl) {
			$.getJSON(data_, function(data) {

				let template = Handlebars.compile(tpl); 
				$(target).html(template(data));
			});
		});
	}

	const data_source = "../../assets/data/material/" + mat_id + "_it.json";
	handlebars(tpl_material_source_it,data_source);

	// language switch
	const switch_ = document.getElementById("switch");
	switch_.addEventListener("click", switch_it);

	function switch_it(){

		let language = switch_.getAttribute("data-lang");

		if (language == "IT"){
			switch_.innerHTML = "ITA";
			switch_.setAttribute("data-lang","EN");
			tpl = tpl_material_source_en;
			data = "../../assets/data/material/" + mat_id + "_en.json";
		}
		else if (language == "EN"){
			switch_.innerHTML = "ENG";
			switch_.setAttribute("data-lang","IT");
			tpl = tpl_material_source_it;
			data = "../../assets/data/material/" + mat_id + "_it.json"
		}
		handlebars(tpl,data)
	}
}

window.addEventListener("load", function(){
    materials();
});
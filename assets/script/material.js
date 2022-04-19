const switch_ = document.getElementById("switch");
const url = new URL(window.location.href);

const tpl_material_source_it = "../../assets/template/material_it.tpl";
const tpl_material_source_en = "../../assets/template/material_en.tpl";

function materials() {

	const mat_id = document.title.split(" ")[0];
	// const gray = "#3c3c3c";

	const target = "#material";

	function handlebars(tpl_,data_){
		$.get(tpl_, function(tpl) {
			$.getJSON(data_, function(data) {

				let template = Handlebars.compile(tpl); 
				$(target).html(template(data));
			});
		});
		// console.log(tpl_,data_)
	}

	function url_param() {
		let language  = url.searchParams.get("lang")
		let tpl_;
		let data_;

		if (!language){
			tpl_ = "../../assets/template/material_it.tpl";
			data_ = "../../assets/data/material/" + mat_id + "_it.json";
			// console.log(language,tpl_,data_)

			switch_.setAttribute("data-lang","IT");
			switch_.innerHTML = "ENG";

			// footer
			// handlebars_footer(tpl_source_it,data_source_it)

		}
		else {
			if (language == "it"){
				tpl_ = "../../assets/template/material_it.tpl";
				data_ = "../../assets/data/material/" + mat_id + "_it.json";
				
				switch_.setAttribute("data-lang","IT");
				switch_.innerHTML = "ENG"

				// footer
				// handlebars_footer(tpl_source_it,data_source_it)
			}
			else if (language == "en"){
				tpl_ = "../../assets/template/material_en.tpl";
				data_ = "../../assets/data/material/" + mat_id + "_en.json";
				
				switch_.setAttribute("data-lang","EN");
				switch_.innerHTML = "ITA"

				// footer
				// handlebars_footer(tpl_source_en,data_source_en)
			}
		}
		// console.log(language)
		handlebars(tpl_,data_);
	}
	setTimeout(url_param(),200);

	// language switch
	switch_.addEventListener("click", switch_it);

	function switch_it(){

		let language = switch_.getAttribute("data-lang");
		// console.log(language)

		if (language == "IT"){
			newurl = window.location.protocol + "//" + window.location.host + window.location.pathname + '?lang=en';
			url.searchParams.set("lang", "en");
			window.history.pushState({path:newurl},'',newurl);

			switch_.innerHTML = "ITA";
			switch_.setAttribute("data-lang","EN");
			tpl = tpl_material_source_en;
			data = "../../assets/data/material/" + mat_id + "_en.json";
		}
		else if (language == "EN"){
			newurl = window.location.protocol + "//" + window.location.host + window.location.pathname + '?lang=it';
			url.searchParams.set("lang", "it");
			window.history.pushState({path:newurl},'',newurl);

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
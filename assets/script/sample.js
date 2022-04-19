const switch_ = document.getElementById("switch");
const url = new URL(window.location.href);

const tpl_material_source_it = "../../../assets/template/sample_it.tpl";
const tpl_material_source_en = "../../../assets/template/sample_en.tpl";

function sample() {

	const mat_id = document.getElementById("head").getAttribute('data-material');
	const sam_id = document.title.split(" ")[0];
	const gray = "#3c3c3c";

	const target = "#sample";

	function handlebars(tpl_,data_){
		$.get(tpl_, function(tpl) {
			$.getJSON(data_, function(data) {

				let template = Handlebars.compile(tpl); 
				$(target).html(template(data));
			});
		});
	}
	
	function url_param() {
		let language  = url.searchParams.get("lang")
		let tpl_;
		let data_;
		if (!language){
			tpl_ = "../../../assets/template/sample_it.tpl";
			data_ = "../../../assets/data/sample/" + mat_id + "/" + sam_id + "_it.json";

			switch_.setAttribute("data-lang","IT");
			switch_.innerHTML = "ENG"
		}
		else {
			if (language == "it"){
				tpl_ = "../../../assets/template/sample_it.tpl";
				data_ = "../../../assets/data/sample/" + mat_id + "/" + sam_id + "_it.json";
				
				switch_.setAttribute("data-lang","IT");
				switch_.innerHTML = "ENG";
			}
			else if (language == "en"){
				tpl_ = "../../../assets/template/sample_en.tpl";
				data_ = "../../../assets/data/sample/" + mat_id + "/" + sam_id + "_en.json";
				
				switch_.setAttribute("data-lang","EN");
				switch_.innerHTML = "ITA"
			}
		}
		handlebars(tpl_,data_);
	}
	setTimeout(url_param(),200);

	// language switch
	switch_.addEventListener("click", switch_it);

	function switch_it(){

		let language = switch_.getAttribute("data-lang");
		console.log(language)

		if (language == "IT"){
			newurl = window.location.protocol + "//" + window.location.host + window.location.pathname + '?lang=en';
			url.searchParams.set("lang", "en");
			window.history.pushState({path:newurl},'',newurl);

			switch_.innerHTML = "ITA";
			switch_.setAttribute("data-lang","EN");
			tpl = tpl_material_source_en;
			data = "../../../assets/data/sample/" + mat_id + "/" + sam_id + "_en.json";
		}
		else if (language == "EN"){
			newurl = window.location.protocol + "//" + window.location.host + window.location.pathname + '?lang=it';
			url.searchParams.set("lang", "it");
			window.history.pushState({path:newurl},'',newurl);

			switch_.innerHTML = "ENG";
			switch_.setAttribute("data-lang","IT");		
			tpl = tpl_material_source_it;
			data = "../../../assets/data/sample/" + mat_id + "/" + sam_id + "_it.json";
		}
		console.log(url)
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
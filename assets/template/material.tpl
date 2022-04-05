<ul>
{{#each material}}

	<div id="material_title">
		<p id="id">
			#{{id}} · materiale 
		</p>

		<h2>
			{{name}} 
		</h2>

	</div>

	<ul id="material_detail">
		{{#each info}}

		<li>
			<div>Materia</div>
			<div>{{material}}</div>
		</li>

		<li>
			<div>Rivestimenti e finiture</div>
			<div>
			<ul>
				<li>
				{{#each finitures}}
					
					{{this}}<br/>

				{{/each}}
				</li>
			</ul>
			</div>
		</li>

		<li>
			<div>Dimensione</div>
			<div>{{size}}</div>
		</li>

		{{/each}}
	</ul>

	{{!-- 

	{{#each company}}
	<div style="margin-bottom: 3rem">
		<a href="aziende/{{link}}.html">
		{{name}} 
		</a>
	</div>
	{{/each}}

	<div id="samples">
		<h3 style="margin-bottom: 1rem;">
			Campioni
		</h3>

		{{#each sample}}
		<ul id="sample">

			<li>
			{{id}} 
			</li>

			<li>
			{{name}} 
			</li>

			<li>
			{{value}} 
			</li>

			<div>
				<img src="assets/images/{{image}}.png" style="width: 100%; height: auto;">
			</div>

		</ul>
		{{/each}}
	</div>

	--}}

{{/each}}
</ul>
{{#each materiale}}

	<div id="material_title">
		<p id="id">
			#{{id}} · materiale 
		</p>

		<h2>
			{{nome}} 
		</h2>

	</div>

	<ul class="list">
		<li><div>Azienda</div></li>

		{{#each azienda}}
		<li class="two_col">
			<a href="../../azienda/{{id}}">
				<div>
					{{relazione}}
				</div>
				<div class="link">
					<span>{{nome}}</span><span>→</span>
				</div>
			</a>
		</li>
		{{/each}}
	</ul>


	<ul class="material_detail">
		{{#each info}}

		<li><div>Informazioni</div></li>

		<li>
			<div>Materia</div>
			<div>{{materiale}} · {{materiale_dettaglio}}</div>
		</li>

		<li>
			<div>Applicazioni</div>
			<div>
			<ul>
				<li>
				{{#each applicazioni}}
					
					{{this}}<br/>

				{{/each}}
				</li>
			</ul>
			</div>
		</li>

		<li>
			<div>Arredamento</div>
			<div>
			<ul>
				<li>
				{{#each arredamento}}
					
					{{this}}<br/>

				{{/each}}
				</li>
			</ul>
			</div>
		</li>

		<li>
			<div>Forme</div>
			<div>
			<ul>
				<li>
				{{#each forme}}
					
					{{this}}<br/>

				{{/each}}
				</li>
			</ul>
			</div>
		</li>

		<li>
			<div>Proprietà</div>
			<div>
			<ul>
				<li>
				{{#each proprieta}}
					
					{{this}}<br/>

				{{/each}}
				</li>
			</ul>
			</div>
		</li>

		<li>
			<div>Finiture</div>
			<div>
			<ul>
				<li>
				{{#each finiture}}
					
					{{this}}<br/>

				{{/each}}
				</li>
			</ul>
			</div>
		</li>
	</ul>

	<ul class="material_detail">

		<li><div>Caratteristiche tecniche</div></li>

		<li>
			<div>Peso specifico</div>
			<div>{{peso}} N/m<sup>3</sup></div>
		</li>

		<li>
			<div>Massa volumica</div>
			<div>{{massa}} Kg/m<sup>3</sup></div>
		</li>

		<li>
			<div>Resistenza a compressione</div>
			<div>{{resistenza}} Mpa</div>
		</li>
	</ul>

		{{/each}}


	<ul class="list">
		<li><div>Complementi</div></li>

		{{#each links}}
		<li>
			<div>
				<a href="{{link}}">
					<span>{{nome}}</span><span>→</span>
				</a>
			</div>
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
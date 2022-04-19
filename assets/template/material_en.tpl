{{#each materiale}}

	<div id="material_title">
		<p id="id">
			#{{id}} · material 
		</p>

		<h2>
			{{nome}} 
		</h2>

	</div>

	{{!--
	<div id="cover">
		<img src="../../assets/images/{{copertina}}.jpg" alt="{{nome}}" width="1332" height="709">
	</div>
	--}}

	<ul class="list">
		<li><div><h3>Company<h3></div></li>

		{{#each azienda}}
		<li class="two_col">
			<a href="../../azienda/{{id}}?lang=en">
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

		<li><div><h3>Information</h3></div></li>

		<li>
			<div>Material</div>
			<div>{{materiale}} · {{materiale_dettaglio}}</div>
		</li>

		<li>
			<div>Description</div>
			<div>{{descrizione}}</div>
		</li>

		<li>
			<div>Applications</div>
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
			<div>Form</div>
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
			<div>Properties</div>
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
			<div>Finishes</div>
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

		<li><div><h3>Technical characteristics</h3></div></li>

		<li>
			<div>Weight</div>
			<div>{{peso}} N/m<sup>3</sup></div>
		</li>

		<li>
			<div>Mass</div>
			<div>{{massa}} Kg/m<sup>3</sup></div>
		</li>

		<li>
			<div>Strength</div>
			<div>{{resistenza}} Mpa</div>
		</li>
	</ul>

		{{/each}}


	<ul class="list">
		<li><div><h3>Links</h3></div></li>

		{{#each link}}
		<li>
			<div>
				<a href="{{link}}?lang=en" target="_blank" title="{{nome}}">
					<span>{{nome}}</span><span>↗</span>
				</a>
			</div>
		</li>
		{{/each}}
	</ul>

	{{!-- campioni --}}

	<div id="samples">
		<div class="title"><h3>Samples</h3></div>

		{{#each prodotto}}
		<div class="sample">

			<div class="space">
				<a href="{{id}}?lang=en" class="link">
					<p class="flex">
						<span>#{{id}} · <strong>{{nome}}</strong></span>
						<span>→</span>
					</p>
				</a>
					
				<p class="dida">{{descrizione}}</p>

				<a href="{{id}}?lang=en" class="link">
					<div class="image">
						<img src="../../assets/images/{{immagine.link}}.jpg" alt="{{nome}}" width="1332" height="709">
					</div>
				</a>
			</div>

		</div>
		{{/each}}

	</div>

{{/each}}
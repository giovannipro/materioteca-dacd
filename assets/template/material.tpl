{{#each materiale}}

	<div id="material_title">
		<p id="id">
			#{{id}} · materiale 
		</p>

		<h2>
			{{nome}} 
		</h2>

	</div>

	<div id="cover">
		<img src="../../assets/images/{{copertina}}.jpg" alt="{{nome}}" width="1332" height="709">
	</div>

	<ul class="list">
		<li><div><h3>Azienda<h3></div></li>

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

		<li><div><h3>Informazioni</h3></div></li>

		<li>
			<div>Materia</div>
			<div>{{materiale}} · {{materiale_dettaglio}}</div>
		</li>

		<li>
			<div>Descrizione</div>
			<div>{{descrizione}}</div>
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

		<li><div><h3>Caratteristiche tecniche</h3></div></li>

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
		<li><div><h3>Complementi</h3></div></li>

		{{#each link}}
		<li>
			<div>
				<a href="{{link}}" target="_blank" title="{{nome}}">
					<span>{{nome}}</span><span>↗</span>
				</a>
			</div>
		</li>
		{{/each}}
	</ul>

	{{!-- campioni --}}

	<div id="samples">
		<div class="title"><h3>Campioni</h3></div>

		{{#each prodotto}}
		<div class="sample">

			<div class="space">
				<a href="{{id}}" class="link">
					<p class="flex">
						<span>#{{id}} · <strong>{{nome}}</strong></span>
						<span>→</span>
					</p>
				</a>
					
				<p class="dida">{{descrizione}}</p>

				<a href="{{id}}" class="link">
					<div class="image">
						<img src="../../assets/images/{{immagine.link}}.jpg" alt="{{nome}}" width="1332" height="709">
					</div>
				</a>
			</div>

		</div>
		{{/each}}

	</div>

{{/each}}
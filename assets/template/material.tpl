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
				<a href="{{link}}">
					<span>{{nome}}</span><span>→</span>
				</a>
			</div>
		</li>
		{{/each}}
	</ul>

	{{!-- campioni --}}

	<div id="samples">
		<div><h3>Campioni</h3></div>

		<ul>
		{{#each prodotto}}
				<ul>
					
					<li style="margin-bottom: 2rem;">
						<div>#{{id}}</div>
						<div>{{nome}}</div>
						<div>{{descrizione}}</div>
					</li>

					<ul>
					{{#each campione}}
						<li style="margin-bottom: 2rem;">
							<div>{{id}}</div>
							
							<div>{{dimensioni.larghezza}} x {{dimensioni.lunghezza}} cm</div>
							<div>{{peso}} g</div>
							<div>{{collocazione.luogo}} · fila {{collocazione.fila}}</div>
							<div>prestito: {{prestito}}</div>

							<img src="../../assets/images/{{immagine.link}}.jpg" alt="{{immagine.didascalia}}">
							<p>{{immagine.didascalia}}</p>

						</li>
					{{/each}}
					</ul>

				</ul>

		{{/each}}
		</ul>


	</div>


{{/each}}
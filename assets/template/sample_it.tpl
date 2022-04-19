{{#each campione}}

	<div id="material_title">
		<p id="id">
			#{{id}} · campione 
		</p>

		<h2>
			{{nome}} 
		</h2>
		<p class="description">{{descrizione}}</p>
	</div>

	<div id="cover">
		<h4 class="product_name">
			<a href="../../{{id_materiale}}?lang=it" class="link">
				<span>← </span><span>{{prodotto}}</span>
			</a>
			 · 
			<a href="../../../azienda/{{azienda.id}}?lang=it" class="link">
				<span>{{azienda.nome}}</span>
			</a>
		</h4>
		<a href="../../{{id_materiale}}?lang=it">
			<img src="../../../assets/images/{{immagine.link}}.jpg" alt="{{nome}}" width="1332" height="709">
		</a>
	</div>

	{{!-- campioni --}}

	<div id="samples">
		<div class="title"><h3>Campioni</h3></div>

		{{#each item}}
		<div id="items" class="sample">

			<li>
				<div>Codice</div>
				<div>{{id}}</div>
			</li>
			<li>
				<div>Collocazione</div>
				<div>{{collocazione.luogo}} · fila {{collocazione.fila}}</div>
			</li>
			<li>
				<div>Dimensioni</div>
				<div>{{dimensioni.larghezza}} × {{dimensioni.lunghezza}} cm</div>
			</li>
			<li>
				<div>Peso</div>
				<div>{{peso}} g</div>
			</li>
			<li>
				<div>Prestito</div>
				<div>{{loan prestito}}</div>
			</li>

			{{#each item}}
			<ul id="items">

				<li>
					<div>Prestito</div>
					<div>{{loan prestito}}</div>
				</li>

			</ul>
			{{/each}}




		</div>
		{{/each}}

	</div>


{{/each}}
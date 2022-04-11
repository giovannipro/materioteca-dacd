{{#each campione}}

	<div id="material_title">
		<p id="id">
			#{{id}} · campione 
		</p>

		<h2>
			{{nome}} 
		</h2>
		<h4 class="product_name link">
			<a href="../../{{id_materiale}}/">
				<span>← </span><span>{{prodotto}}</span>
				 · 
			</a>
			<a href="../../../azienda/{{azienda.id}}/">
				<span>{{azienda.nome}}</span>
			</a>
		</h4>

	</div>

	<div id="cover">
		<a href="../../{{id_materiale}}">
			<img src="../../../assets/images/{{immagine.link}}.jpg" alt="{{nome}}">
		</a>
	</div>

	{{!-- campioni --}}

	<div id="samples">
		<div class="title"><h3>Campioni</h3></div>

		{{#each item}}
		<div class="sample">

			<ul id="items">
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
			</ul>



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
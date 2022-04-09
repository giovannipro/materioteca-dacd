{{#each campione}}

	<div id="material_title">
		<p id="id">
			#{{id}} · campione 
		</p>

		<h2>
			{{nome}} 
		</h2>
		<h3>
			{{prodotto}}
		</h3>

	</div>

	<div id="cover">
		<a href="../../{{material_id}}">
			<img src="../../../assets/images/{{immagine.link}}.jpg" alt="{{nome}}">
		</a>
	</div>

	{{!-- campioni --}}

	<div id="samples">
		<div class="title"><h3>Campioni</h3></div>

		{{#each item}}
		<div class="sample">

			<div class="space">
				<a name="{{id}}"></a>
					
				<p>#{{id}}</p>

			</div>

			<ul>
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
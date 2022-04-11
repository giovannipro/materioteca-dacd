{{#each azienda}}

	<div id="material_title">
		<p id="id">
			#{{id}} · azienda 
		</p>

		<h2>
			{{nome}} 
		</h2>

	</div>

	<ul class="material_detail">

		<li><div><h3>Informazioni</h3></div></li>

		<li>
			<div>indirizzo</div>
			<div>{{indirizzo}}</div>
		</li>
	</ul>

	{{!-- campioni --}}

	<div id="samples">
		<div class="title"><h3>Prodotti</h3></div>

		{{#each prodotto}}
		<div class="sample">

			<div class="space">
				
				<a href="../../materiale/{{id_prodotto}}/{{id}}/" class="link">
					<p style="display: flex; justify-content: space-between; padding: 0.5rem 0;">
						<span>#{{id}} · <strong>{{nome}}</strong></span>
						<span>→</span>
					</p>
				</a>

				<div class="image">
					<img src="../../assets/images/{{immagine.link}}.jpg" alt="{{immagine.didascalia}}">
				</div>
				
			</div>

		</div>
		{{/each}}

	</div>

{{/each}}
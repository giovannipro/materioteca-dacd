{{#each azienda}}

	<div id="material_title">
		<p id="id">
			#{{id}} · company 
		</p>

		<h2>
			{{nome}} 
		</h2>

	</div>

	<ul class="material_detail">

		<li><div><h3>Information</h3></div></li>

		<li>
			<div>Address</div>
			<div>{{indirizzo}}</div>
		</li>
		<li>
			<div>Phone</div>
			<div>
				<a href="tel:{{telefono}}" class="link">{{telefono}}</a>
			</div>
		</li>
		<li>
			<div>Mail</div>
			<div>
				<a href="mailto:{{mail}}" class="link">{{mail}}</a>
			</div>
		</li>
		<li>
			<div>Website</div>
			<div>
				<a href="{{sito_web.link}}" class="link" target="blank">{{sito_web.nome}}</a>
			</div>
		</li>
	</ul>

	{{!-- campioni --}}

	<div id="samples">
		<div class="title"><h3>Products</h3></div>

		{{#each prodotto}}
		<div class="sample">

			<div class="space" style="border-top:none;">
				
				<a href="../../materiale/{{id_prodotto}}?lang=en" class="link">
					<p style="display: flex; justify-content: space-between; padding: 0.5rem 0;">
						<span>#{{id}} · <strong>{{nome}}</strong></span>
						<span>→</span>
					</p>
				</a>

				<div class="image">
					<a href="../../materiale/{{id_prodotto}}?lang=en" class="link">
						<img src="../../assets/images/{{immagine.link}}.jpg" alt="{{immagine.didascalia}}" width="1332" height="709">
					</a>
				</div>
				
			</div>

		</div>
		{{/each}}

	</div>

{{/each}}
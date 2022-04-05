<ul>
{{#each company}}

	<li>
	{{id}} 
	</li>

	<li>
	{{name}} 
	</li>

	{{#each material}}
	<ul id="material">
		<li>
			<a href="../{{link}}.html">
			{{name}} 
			</a>
		</li>
		{{/each}}
	</ul>

{{/each}}
</ul>
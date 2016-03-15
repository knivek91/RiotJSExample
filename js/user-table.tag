<user-table>
	<div class="table-responsive">
	<table class="table table-hover table-striped table-condensed table-bordered">
		<thead>
			<tr>
				<th each=" { header in tableHeaders } "> {header} </th>
			</tr>
		</thead>
		<tbody>
			<tr each=" { person in lstUsers } ">
				<td> { person.name } </td>
			</tr>
		</tbody>
	</table>
</div>


<script>
	
	this.on('before-mount', function() {
		
		try	 {
			
			opts.tableHeaders = ['ID', 'User', 'Email'];
			opts.lstUsers = [{'a':41, 'name':'kevin', 'ass': 'knvce12'}];
			$.get('http://jsonplaceholder.typicode.com/users', {}, function(response) {
				opts.lstUsers = response
			}.bind(this))
		
		}catch(e) { console.log(e) }
	})
	
	this.on('mount', function() {
		
		console.log(opts.tableHeaders)
		console.log(opts.lstUsers)
		
	})
	
</script>

</user-table>
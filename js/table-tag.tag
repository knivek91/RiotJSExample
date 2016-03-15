
<example4>

<h2>{ opts.title }</h2>
<hr />
<div class="table-responsive">
	<table class="table table-hover table-striped table-condensed table-bordered">
		<thead>
			<tr>
				<th each=" { header in tableHeaders } "> {header} </th>
			</tr>
		</thead>
		<tbody>
			<tr each=" { person in people } ">
				<td> { person.name } </td>
				<td> { person.age } </td>
				<td><button type="button" class="btn btn-primary" 
							 data-id="{person.id}" onclick="{parent.editPerson}" data-name="{person.name}">
							 <i class="glyphicon glyphicon-pencil"></i>
					</button>
					<button type="button" class="btn btn-danger" 
							 data-id="{person.id}" onclick="{parent.deletePerson}" data-name="{person.name}">
							 <i class="glyphicon glyphicon-trash"></i>
					</button>
				</td>
			</tr>
		</tbody>
	</table>
</div>

<script>

	deletePerson(e) {

			var html = 'Sure want to remove <strong>' + e.target.dataset.name + '</strong>';
			var self = this;

			swal({
				title: 'Remove ' + e.target.dataset.name  + '?'
				,text: html
				,type: 'warning'
				,html: true
				,showCancelButton: true
				,closeOnConfirm: false
				,showLoaderOnConfirm: true
			}, function() {
				
				if (people.length == 1) {
					people = null;
				}
				else {
					people.splice((e.target.dataset.id - 1 ), 1);
				}
				
				self.update({people: people});
				swal.close();
			});

	}

</script>
</example4>
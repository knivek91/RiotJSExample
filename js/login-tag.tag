<login-tag>
	
	<div class="form">
	<br/><br/><br/>
		<form type="POST" onsubmit={ login } >
		
			<div show={ this.opts.hasError} class="alert alert-danger">
				<strong>Error!</strong> La combinación de usuario y contraseña no coincide.
			</div>
			<input type="text" name="user" placeholder="Username" class="form-control"/>
			<br/>
			<input type="password" name="password" placeholder="Password" class="form-control"/>
			<br/>
			<button type="submit" class="btn btn-warning btn-block">Login</button>

		</form>
	</div>
	
	<script>
	
		<!---->
		
		this.on('before-unmount', function() {
			riot.mount('.container','user-table')
		})
		
		login() {
			
			$.get('http:localhost:3000/Users', {name:this.user.value, password:this.password.value}, function(response) {
				if(response.length == 0 ) {
					
					this.opts.hasError = true
					this.update()
					
				} else { 
					/*this.unmount()*/
				}
			}.bind(this));
		}
		
	</script>
	
</login-tag>

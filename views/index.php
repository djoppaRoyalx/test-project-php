<h1>PHP Test Application</h1>

<p>This is a test application for the PHP framework.</p>

<div class="row">
	<div class="col-md-6">
		<table class="table">
			<thead>
				<tr>
					<th>Name</th>
					<th>E-mail</th>
					<th>City</th>
					<th>Phone Number</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($users as $user) { ?>
					<tr>
						<td><?= $user->getName() ?></td>
						<td><?= $user->getEmail() ?></td>
						<td><?= $user->getCity() ?></td>
						<td><?= $user->getPhone() ?></td>
					</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>

	<div class="col-md-6">
		<form method="post" class="needs-validation" action="create.php">
			<div class="form-group row">
				<label class="col-sm-2" for="name">Name:</label>
				<div class="col-sm-10">
					<input class="form-control" name="name" input="text" id="name" required />
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2" for="email">E-mail:</label>
				<div class="col-sm-10">
					<input class="form-control" name="email" input="text" id="email" required />
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2" for="city">City:</label>
				<div class="col-sm-10">
					<input class="form-control" name="city" input="text" id="city" required />
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2" for="phone">Phone Number:</label>
				<div class="col-sm-10">
					<input class="form-control" name="phone" input="text" id="phone" required />
				</div>
			</div>

			<div class="form-group row">
				<div class="col-sm-10">
					<button class="btn btn-default" type="submit">Create new row</button>
				</div>
		</form>
	</div>
</div>

<script>
	// javascript ajax call to create new row in database and reload page to show new row in table 
	$(document).ready(function() {
		$('form').submit(function(e) {
			e.preventDefault();
			$.ajax({
				url: '/create.php',
				type: 'POST',
				data: $(this).serialize(),
				success: function(data) {
					location.reload();
				}
			});
		});
	});
</script>
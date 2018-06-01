<div class="container">
  	<div class="row">
  		<?php foreach($listarAnimais as $key => $value): ?>
			<div class="col-md-4">
		    	<div class="card mb-4 box-shadow">
		        	<img class="card-img-top" src="../uploads/animais/<?= h($value->foto_1) ?>" data-src="a<?= h($value->foto_1) ?>" alt="Card image cap">
		        	<div class="card-body">
						<h4><?= h($value->nome) ?></h4>
						<p class="card-text">
							teste descrição animais
						</p>
						<div class="card-lance-atual">						
							Lance atual
							<div class="card-lance-atual-valor">
								<?= h($value->parcelas) ?>x de <strong>R$ <?= h(number_format($value->valor, 2, ",", ".")) ?></strong>
							</div>
						</div>
		          		<div class="d-flex justify-content-between align-items-center">
		            		<div class="btn-group">
		            			
		            			<?php if($flagLeilao[$key] == "FEC"): ?>
		              				<button type="button" class="btn btn-secondary btn-lg btn-block">FECHADO</button>
		              				<button type="button" class="btn btn-dark">X</button>
		              			<?php endif; ?>

		              			<?php if($flagLeilao[$key] == "ABE"): ?>
		              				<button type="button" class="btn btn-success btn-lg btn-block">LANCE</button>
		              				<button type="button" class="btn btn-dark btn-abe">+</button>
		              			<?php endif; ?>

		              			<?php if($flagLeilao[$key] == "EMB"): ?>
		              				<button type="button" class="btn btn-warning btn-lg btn-block">EM BREVE</button>
		              				<button type="button" class="btn btn-dark btn-emb">#</button>
		              			<?php endif; ?>
		              			
		            		</div>
		          		</div>
		        	</div>
		      	</div>
		    </div>
		<?php endforeach; ?>
	</div>
</div>

       
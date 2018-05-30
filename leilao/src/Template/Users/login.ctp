


<div class="users form">
<?= $this->Flash->render('auth') ?>
<?= $this->Form->create() ?>
    <fieldset>
        <legend><?= __('Área Restrita') ?></legend>
        <?= $this->Form->input('username' , ['label'=>'Usuário', 'required'=>'true' ]) ?>
        <?= $this->Form->input('password', ['label'=>'Senha', 'required'=>'true']) ?>
        <?= $this->Form->hidden('role', ['default'=> 'condomino' ]) ?>
        <?= $this->Form->hidden('avulso', ['default'=> 'true' ]) ?>
    </fieldset>
<?= $this->Form->button(__('Login')); ?>
<?= $this->Form->button('CADASTRO' , [ 'type' => 'submit', 'value'=>'cadastro', 'name'=>'cadastro']); ?>
<?= $this->Form->end() ?>
</div>

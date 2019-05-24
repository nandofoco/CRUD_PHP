<form class="row" action="../database/modalidades/update.php" method="POST">
    <div class="input-fild col s12">
        <input type="hidden" name="id" id="id" value="<?php echo $values['id']?>">
    </div>
    <div class="input-fild col s12">
        <label for="modalidade">Digite a Modalidade</label>
        <input type="text" name="modalidde" id="modalidde" value="<?php echo $values['modalidade']?>" required="">
    </div>
    
        <div class="input-fild col s12">
        <label for="mensalidade">Digite a Mensalidade</label>
        <input type="text" name="mensalidade" id="modalidde" value="<?php echo $values['mensalidade']?>" required="">
    </div>
    <div class="input-fild col s12">
        <input type="submit" value="Alterar" class="btn">
        <a href="modalidades.php" class="btn red">Cancelar</a>
    </div>
    
    
</form> 
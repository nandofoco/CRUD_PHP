<form action="../database/modalidades/create.php" method="POST" enctype="multipart/form-data">
    <div class="input-fild col s12">
        <label for="modalidade">Digite a Modalidade</label>
        <input type="text" class="" name="modalidade" id="modalidade" required autofocus>       
        
        <div class="input-fild col s12">
             <label for="mensalidsade">Valor Mensalidade</label>
             <input type="number" name="mensalidade" id="mensalidade"  required><br><br>
           
        </div>
        
        <input type="submit" value="Cadastrar" class="btn">
        <input type="reset" value="Limpar" class="btn red">
    </div>
</form>

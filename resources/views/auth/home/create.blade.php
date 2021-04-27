<form action="{{ route('home.store') }}" method="post">
@csrf

<label for="assunto">Assunto</label><br>
<input type="text" name="assunto" id="assunto"><br><br>

<label for="descricao">Descrição</label><br>
<textarea name="descricao" id="descricao" cols="20" rows="5">{{ old('descricao') }}</textarea><br><br>

<label for="data_criacao_chamado">Data:</label><br>
<input type="datetime" name="data_criacao_chamado" id="data_criacao_chamado"><br><br>

<label for="status">Status</label><br>
<select name="status" id="status">
    <option value="aberto">Aberto </option>
    <option value="andamento">Andamento </option>
    <option value="resolvido">Resolvido </option>
    <option value="atrasado">Atrasado </option>
</select><br><br>


<button type="submit">Enviar</button>

</form>
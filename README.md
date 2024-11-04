# Projeto NIS

Este projeto é uma aplicação simples para o cadastro de cidadãos utilizando o Número de Identificação Social (NIS). A aplicação permite cadastrar cidadãos, gerar automaticamente um NIS e buscar registros existentes.

## Tecnologias Utilizadas

- **PHP**: 7.4.33
- **Composer**: 2.7.8
- **Banco de Dados**: PostgreSQL
- **Servidor Local**: XAMPP (opcional)

## Funcionalidades

- **Cadastro de Cidadãos**: Permite cadastrar cidadãos informando apenas o nome. O NIS é gerado automaticamente.
- **Visualização**: Busca registros de cidadãos pelo NIS informado.
- **Atualização de Nome**: Possibilidade de atualizar o nome de um cidadão cadastrado.
- **Deleção de Cidadão**: Remove um cidadão do registro utilizando o NIS.

## Estrutura do Banco de Dados

A estrutura do banco de dados e o DUMP está disponível na pasta `db`. Certifique-se de configurar corretamente o banco de dados PostgreSQL no arquivo de configuração da aplicação.

## Como Executar

1. Clone o repositório:

   ```bash
   git clone https://github.com/luan356/projeto_nis.git
   cd projeto_nis
   ```

2. Instale as dependências com o Composer:

   ```bash
   composer install
   ```

3. Configure seu banco de dados PostgreSQL no arquivo de configuração da aplicação.
4. Execute a aplicação utilizando o XAMPP.

## Como Testar com Postman

Para testar as funcionalidades, você pode utilizar o Postman. Abaixo estão exemplos de como realizar as requisições:

### 1. Cadastrar um Cidadão

- **Método**: `POST`
- **URL**: `http://localhost/gesuas_desafio_backend/projeto_nis/index.php`
- **Corpo da Requisição**:
```json
{
    "action": "cadastrar",
    "nome": "Nome do Cidadão"
}
```

### 2. Visualizar um Cidadão pelo NIS

- **Método**: `GET`
- **URL**: `http://localhost/gesuas_desafio_backend/projeto_nis/index.php`
- **Corpo da Requisição**:
```json
{
    "action": "visualizar",
    "nis": "12345678900"
}
```

### 3. Atualizar o Nome de um Cidadão

- **Método**: `POST`
- **URL**: `http://localhost/gesuas_desafio_backend/projeto_nis/index.php`
- **Corpo da Requisição**:
```json
{
    "action": "atualizarNome",
    "nis": "12345678900",
    "novoNome": "Novo Nome do Cidadão"
}
```

### 4. Deletar um Cidadão

- **Método**: `DELETE`
- **URL**: `http://localhost/gesuas_desafio_backend/projeto_nis/index.php`
- **Corpo da Requisição**:
```json
{
    "action": "deletar",
    "nis": "12345678900"
}
```

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para enviar um pull request.

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).

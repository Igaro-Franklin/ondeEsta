# Onde Está

![Tela da Aplicação](app/assets/images/telaAplicacao.png)

Este é um projeto Ruby on Rails para gerenciar produtos em estoque. Ele permite criar, editar, excluir e pesquisar produtos.

## Configuração

1. Clone o repositório:
    ```sh
    git clone https://github.com/seu-usuario/onde_esta.git
    cd onde_esta
    ```

2. Instale as dependências:
    ```sh
    bundle install
    ```

3. Configure o banco de dados:
    ```sh
    rails db:create
    rails db:migrate
    ```

4. Inicie o servidor:
    ```sh
    rails server
    ```

## Uso

- Acesse `http://localhost:3000` no seu navegador.
- Utilize a interface para adicionar, editar, excluir e pesquisar produtos.

## Estrutura do Projeto

- `app/models/produto.rb`: Modelo do produto com validações.
- `app/views/produtos/index.html.erb`: Página inicial com a lista de produtos e pesquisa.
- `app/views/produtos/show.html.erb`: Página de detalhes de um produto.
- `app/views/produtos/_form.html.erb`: Formulário para criar/editar produtos.
- `app/views/produtos/_produtos_lista.html.erb`; Utilizavél para renderizar os itens salvos do BD.
- `app/views/produtos/edit.erb`: Página para editar produto.
- `app/views/produtos/new.html.erb`: Página para criar novo produto.
- `app/views/produtos/index.js.erb`: Ajuda na filtragem em tempo real no página principal da aplicação.

## Funcionalidades

- **Adicionar Produto**: Clique em "Novo Produto" na página inicial.
- **Editar Produto**: Clique em "Editar" na página de detalhes do produto.
- **Excluir Produto**: Clique em "Excluir" na página de detalhes do produto.
- **Pesquisar Produto**: Utilize a barra de pesquisa na página inicial para filtrar produtos em tempo real.

## Contribuição

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`).
3. Commit suas mudanças (`git commit -am 'Adiciona nova feature'`).
4. Faça um push para a branch (`git push origin feature/nova-feature`).
5. Abra um Pull Request.

## Licença

Este projeto está licenciado sob a licença MIT.

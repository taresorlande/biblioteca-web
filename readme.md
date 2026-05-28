# Biblioteca Online

A **biblioteca online** se trata de um acervo digital gratuito e disponível para os alunos da rede pública de ensino e para os alunos de aprendizagem industrial da rede ***Senac***.

## Tecnologias Utilizadas
- **Frontend**: HTML + CSS + JS + Vue.js
- **Backend**: JS + Node.js + Express + MySql2
- **Banco de Dados**: MySql ou PostgreeSql
- **Hospedagem**:

## Execução do Projeto
### 1. Instalações Iniciais:

- Baixar o **Visual Studio Code**.
- Instalar o **Git** localmente no Powershell:
```powershell
winget install --id Git.Git -e --source winget
```
- Instalar o **Node.js**.
- Instalar o **MySQL Server**.
    - **Microsoft Visual C++** é pré-requisito para o server.
- Reiniciar o dispositivo.

### 2. Extensões do VSCode:

- **MySql**: Serve para conectar e manipular o banco de dados.
- **Live Server** e **Live Preview**: Permite levantar um servidor local para exibir o frontend no navegador.
- **Material Icon Theme**: Estilizar a estrutura de pastas, para facilitar compreensão visul.
- **Thunder Client** ou **Postman**: Simular o cliente executando requisições no servidor.
- **Code Runner**: Opção gráfica para executar scripts.

### 3. Primeiras Configurações:

- Posicionar o cursor na pasta **/backend** e criar arquivo **.env**:

Exemplo:
```env
DB_HOST=127.0.0.1
DB_PORT=3306
DB_USER=root
DB_PASSWORD=0000
DB_NAME=database
```

- Rodar o comando para instalar as dependencias descritas no arquivo **package.json** com o cursor ainda em **/backend**:

```bash
npm install
```
`Set-ExecutionPolicy RemoteSigned` - Serve para habilitar a execução de scripts no **PowerShell** caso esteja desabilitado pelo Sistema.

- Executar o arquivo **library.sql** no Banco de Dados. Lembrando de ativar a conexão no topo do arquivo.

- Criar a requisição no **Thunder Client** para testar se o servidor está respondendo.

## Utils
### Git Config:

```bash
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

## Novos Horizontes:
- Documentação: Diagramas Mermaid
- Backend: Orientção a Objetos (Books)
    - Funcionalidade de cadastrar livro junto com autor.
    - Funcionalidade de consultar, alterar e excluir livro pelo id.
- Frontend: Criar o Frontend para exibir livros.
    - Avaliar os frameworks de Frontend (Vue, React e Angular).
- Projeto: Prototipação em Figma.
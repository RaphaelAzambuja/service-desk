# Service Desk

Este é um sistema de Service Desk desenvolvido utilizando o framework Ruby on Rails. O sistema oferece uma interface para usuários, colaboradores e administradores gerenciarem chamados de suporte técnico, solicitações de serviço e incidentes relacionados à área de Tecnologia da Informação.

## Funcionalidades do Sistema

### Visão do Usuário

- Autenticação: Os usuários podem entrar com seu nome de usuário e senha, cadastrados previamente pelo Service Desk.
- Listagem de Chamados: Os usuários têm acesso a uma lista de chamados abertos, organizados por diferentes critérios como usuário, data, prioridade, tipo de chamado, entre outros.
- Edição Limitada de Chamados: Os usuários podem editar informações limitadas sobre seus chamados.
- Abertura de Chamados: Os usuários podem criar novos chamados preenchendo um formulário com informações como prioridade, tipo de chamado e descrição do problema.
- Avaliação do Atendimento: Após o fechamento do chamado, os usuários podem atribuir uma nota ao colaborador responsável.

### Visão do Colaborador

- Autenticação: Os colaboradores também entram com seu usuário e senha.
- Listagem de Chamados: Os colaboradores têm acesso a uma lista de chamados abertos, organizados de forma semelhante à visão do usuário.
- Edição e Encaminhamento de Chamados: Os colaboradores podem editar informações dos chamados e encaminhá-los para análise de um nível superior, se necessário.
- Conclusão de Chamados: Os colaboradores podem adicionar uma descrição de conclusão aos chamados resolvidos.

### Dashboard

O sistema oferece um dashboard com as seguintes informações:

1. **Estatísticas Gerais**: Número total de chamados abertos, em andamento e fechados, além da distribuição por tipo, prioridade e nível de serviço.
2. **Feedback dos Usuários**: Avaliação média do suporte técnico recebido, número de feedbacks positivos e negativos.
3. **Performance dos Colaboradores**: Número de chamados resolvidos por cada colaborador.

## Configuração e Execução

- Clone o repositório.
- Instale as dependências usando `bundle install`.
- Configure o arquivo `config/database.yml` com as informações do banco de dados.
- Crie as bases de dados com `rails db:create`.
- Execute as migrações do banco de dados usando `rails db:migrate`.
- Inicie o servidor usando `rails server`.
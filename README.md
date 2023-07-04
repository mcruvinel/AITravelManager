
AITravelManager
O AITravelManager é um aplicativo de gerenciamento de viagens que utiliza a API do OpenAI para fornecer recursos de planejamento de viagens inteligentes. Com este aplicativo, os usuários podem criar viagens, adicionar itinerários diários e receber sugestões personalizadas de itinerários com base em suas preferências.

Funcionalidades
Cadastre viagens com informações de destino, data de início e data de término.
Adicione itinerários diários às viagens, incluindo data, localização e atividades planejadas.
Obtenha sugestões de itinerários inteligentes com base nas preferências do usuário.
Integração com a API do OpenAI para interações de chat com o GPT-3 para obter informações sobre destinos, sugestões de atividades, previsão do tempo e muito mais.
Interface intuitiva para facilitar o gerenciamento de viagens e itinerários.
Requisitos do Sistema
Ruby versão 2.7.0 ou superior
Rails versão 6.0.0 ou superior
Banco de dados PostgreSQL
Configuração do Projeto
Clone o repositório do AITravelManager para sua máquina local.
Execute o comando bundle install para instalar as dependências do projeto.
Configure as variáveis de ambiente necessárias no arquivo .env na raiz do projeto. Certifique-se de incluir a variável OPENAI_API_KEY com sua chave de API do OpenAI.
Execute o comando rails db:create para criar o banco de dados.
Execute o comando rails db:migrate para aplicar as migrações do banco de dados.
Inicie o servidor Rails com o comando rails server.
Acesse o aplicativo no seu navegador em http://localhost:3000.
Personalização
Personalize as visualizações, controladores e modelos de acordo com suas necessidades específicas.
Explore a documentação da API do OpenAI para integrar recursos adicionais de acordo com suas preferências.
Contribuição
Contribuições são bem-vindas! Sinta-se à vontade para abrir um problema ou enviar uma solicitação de pull com suas melhorias, correções de bugs ou novos recursos.

Licença
O AITravelManager é um software de código aberto licenciado sob a MIT License.
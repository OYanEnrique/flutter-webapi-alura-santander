# Flutter WebAPI - Alura Santander

Aplicativo Flutter desenvolvido durante o curso **"Flutter com WebAPI: integrando sua aplicação"** da Alura, realizado no **Bootcamp Mobile Santander 2026**.

## 📱 Sobre o Projeto

Aplicação de journal (diário) que demonstra integração com APIs REST, persistência de dados local e uso de recursos avançados do Flutter.

### Funcionalidades

- Interface de journal com listagem de entradas
- Integração com banco de dados local
- **Integração com API REST via HTTP**
- **Sistema de autenticação completo com json-server-auth**
- **Tela de login e registro de usuários**
- **Persistência de tokens com SharedPreferences**
- **Tratamento de exceções customizado (UserNotFoundException)**
- **Proteção de endpoints com Bearer token**
- **Sistema de interceptors para logging de requisições e respostas**
- **Comunicação com servidor JSON local**
- **Tela de adição de journal entries**
- **Navegação dinâmica com onGenerateRoute**
- **Serialização e deserialização de objetos Journal**
- **Deserialização de listas JSON com fromMap**
- **Método getAll() para buscar todos os journals**
- **Botão de refresh na AppBar para atualizar dados**
- **Atualização automática após adicionar novo registro**
- **Feedback visual com SnackBar**
- **Diálogo de confirmação para ações críticas**
- **Funcionalidade de remoção de journal entries com confirmação**
- **Edição de journal entries existentes**
- **Helper WeekDay aprimorado com toString()**
- Uso de Google Fonts para tipografia customizada
- Arquitetura organizada com models, helpers e screens

## 🛠️ Tecnologias Utilizadas

- **Flutter SDK** - Framework multiplataforma
- **Dart** - Linguagem de programação
- **Google Fonts** ^6.2.1 - Tipografia
- **UUID** ^3.0.6 - Geração de identificadores únicos
- **HTTP** ^1.6.0 - Cliente HTTP para requisições
- **HTTP Interceptor** ^2.0.0 - Interceptação e logging de requisições
- **Logger** ^1.1.0 - Sistema de logs estruturado
- **SharedPreferences** ^2.0.15 - Armazenamento local de tokens e dados
- **json-server** 0.17.4 - Servidor REST fake para desenvolvimento
- **json-server-auth** 2.1.0 - Sistema de autenticação para json-server
- **Gradle 8.7** - Sistema de build Android
- **Android Gradle Plugin 8.6.0** - Plugin Android
- **Kotlin 2.1.0** - Linguagem para código nativo Android

## 🚀 Como Executar

### Pré-requisitos

- Flutter SDK instalado
- Android Studio ou VS Code com extensões Flutter
- Emulador Android ou dispositivo físico

### Instalação

```bash
# Clone o repositório
git clone https://github.com/OYanEnrique/flutter-webapi-alura-santander.git

# Entre no diretório
cd flutter-webapi-alura-santander

# Configure a API local
# 1. Copie o arquivo de exemplo
cp lib/config/api_config.example.dart lib/config/api_config.dart

# 2. Edite lib/config/api_config.dart e substitua YOUR_LOCAL_IP pelo IP da sua máquina
# Para descobrir seu IP:
#   Windows: ipconfig
#   Linux/Mac: ifconfig ou ip addr

# Instale as dependências
flutter pub get

# Configure o servidor com autenticação
cd server

# Instale as dependências do servidor (primeira vez)
npm install

# Copie o arquivo de configuração do servidor
cp server.config.example.js server.config.js

# Edite server.config.js e configure seu IP local se necessário

# Inicie o servidor com autenticação
node server.js

# Em outro terminal, execute o aplicativo
flutter run
```

> **⚠️ Importante:** 
> - O arquivo `lib/config/api_config.dart` contém configurações locais e não é versionado
> - O arquivo `server/server.config.js` contém seu IP local e não é versionado
> - Certifique-se de criar ambos a partir dos arquivos de exemplo

## 📂 Estrutura do Projeto

```
lib/
├── main.dart                      # Ponto de entrada com rotas e tema
├── config/
│   ├── api_config.dart            # Configuração da URL base da API
│   └── api_config.example.dart    # Exemplo de configuração
├── database/                      # Camada de persistência
├── helpers/                       # Funções auxiliares (weekday, phrases)
│   └── weekday.dart               # Helper WeekDay com toString() para formatação
├── models/
│   └── journal.dart               # Modelo com serialização/deserialização JSON
├── services/                      # Serviços de API e interceptors
│   ├── auth_service.dart          # Serviço de autenticação (login/register)
│   ├── journal_service.dart       # Cliente HTTP (GET/POST/PUT/DELETE) com getAll()
│   └── http_interceptors.dart     # Logging de requisições
├── screens/
│   ├── add_journal_screen/        # Tela para criar journal entries
│   │   └── add_journal_screen.dart
│   ├── login-screen/              # Tela de login e registro
│   │   └── login-screen.dart
│   ├── common/                    # Componentes compartilhados
│   │   └── confirmation_dialog.dart # Diálogo de confirmação customizado
│   └── home_screen/               # Tela principal com listagem
│       └── widgets/
│           └── journal_card.dart  # Card com navegação e remoção

server/
├── db.json                        # Banco de dados JSON com endpoints
├── server.js                      # Servidor customizado com autenticação
├── server.config.js               # Configuração local (não versionado)
├── server.config.example.js       # Exemplo de configuração
├── routes.json                    # Regras de roteamento
└── package.json                   # Dependências do servidor
```

## 🔧 Migração Realizada

Este projeto passou por uma migração completa para suportar as versões mais recentes do Flutter e Gradle:

- ✅ Migração de Gradle 7.4 → 8.7
- ✅ Atualização do Android Gradle Plugin 7.1.2 → 8.6.0
- ✅ Atualização do Kotlin 1.6.10 → 2.1.0
- ✅ Migração para plugins declarativos (Gradle 8+)
- ✅ Adição de namespace no build.gradle
- ✅ Atualização do Google Fonts 3.0.1 → 6.2.1
- ✅ Compatibilidade com Java 21

## 📚 Aprendizados

- Integração de APIs REST em Flutter
- **Implementação completa de sistema de autenticação com json-server-auth**
- **Criação de tela de login e registro de usuários**
- **Persistência de tokens de autenticação com SharedPreferences**
- **Tratamento de exceções customizadas (UserNotFoundException)**
- **Diálogo de confirmação para registro de novos usuários**
- **Configuração de servidor Node.js customizado**
- **Proteção de rotas e endpoints privados**
- **Uso de middleware para autenticação**
- Implementação de HTTP interceptors para logging
- Uso do pacote http_interceptor para monitoramento de requisições
- Configuração de servidor JSON local para testes
- **Serialização e deserialização JSON com dart:convert**
- **Navegação com argumentos usando onGenerateRoute**
- **Construtores nomeados (Journal.empty())**
- **Geração de UUIDs para identificadores únicos**
- **Feedback ao usuário com SnackBar e Navigator**
- **Operações CRUD completas (Create, Read, Update, Delete)**
- **Criação de componentes reutilizáveis (confirmation_dialog)**
- **Uso de Future e async/await para operações assíncronas**
- Gerenciamento de estado e navegação
- Persistência de dados local
- Boas práticas de arquitetura Flutter
- Configuração e migração de projetos Android
- **Segurança de informações sensíveis com .gitignore**

## 👨‍💻 Autor

**Yan Enrique**
- GitHub: [@OYanEnrique](https://github.com/OYanEnrique)
- Bootcamp: Mobile Santander 2026

## 📝 Licença

Este projeto foi desenvolvido para fins educacionais durante o Bootcamp Mobile Santander.

---

⭐ Desenvolvido com Flutter durante o Bootcamp Mobile Santander 2026

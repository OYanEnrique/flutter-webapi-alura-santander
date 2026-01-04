# Flutter WebAPI - Alura Santander

Aplicativo Flutter desenvolvido durante o curso **"Flutter com WebAPI: integrando sua aplicação"** da Alura, realizado no **Bootcamp Mobile Santander 2026**.

## 📱 Sobre o Projeto

Aplicação de journal (diário) que demonstra integração com APIs REST, persistência de dados local e uso de recursos avançados do Flutter.

### Funcionalidades

- Interface de journal com listagem de entradas
- Integração com banco de dados local
- **Integração com API REST via HTTP**
- **Sistema de interceptors para logging de requisições e respostas**
- **Comunicação com servidor JSON local**
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

# Instale as dependências
flutter pub get

# Inicie o servidor JSON (em outro terminal)
cd server
npx json-server --watch db.json --host 0.0.0.0 --port 3000

# Execute o aplicativo
flutter run
```

> **Nota:** Certifique-se de atualizar o endereço IP no arquivo `lib/services/journal_service.dart` para o IP da sua máquina local.

## 📂 Estrutura do Projeto

```
lib/
├── main.dart           # Ponto de entrada da aplicação
├── database/           # Camada de persistência
├── helpers/            # Funções auxiliares
├── models/             # Modelos de dados
├── services/           # Serviços de API e interceptors
│   ├── journal_service.dart      # Cliente HTTP para journal
│   └── http_interceptors.dart    # Logging de requisições
└── screens/            # Telas da aplicação
    └── home_screen/

server/
└── db.json             # Banco de dados JSON para testes
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
- Implementação de HTTP interceptors para logging
- Uso do pacote http_interceptor para monitoramento de requisições
- Configuração de servidor JSON local para testes
- Gerenciamento de estado e navegação
- Persistência de dados local
- Boas práticas de arquitetura Flutter
- Configuração e migração de projetos Android

## 👨‍💻 Autor

**Yan Enrique**
- GitHub: [@OYanEnrique](https://github.com/OYanEnrique)
- Bootcamp: Mobile Santander 2026

## 📝 Licença

Este projeto foi desenvolvido para fins educacionais durante o Bootcamp Mobile Santander.

---

⭐ Desenvolvido com Flutter durante o Bootcamp Mobile Santander 2026

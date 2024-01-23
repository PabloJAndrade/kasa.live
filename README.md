# Execução de Testes com Robot Framework com a Biblioteca Browser

**Este projeto utiliza o Robot Framework em conjunto com a biblioteca Browser para realizar testes automatizados no site kasa.live. Abaixo estão as instruções para a execução dos testes, incluindo a opção de execução em modo headless, execução de todos os testes no diretório e como salvar os logs.**

## Pré-requisitos

### NodeJs

1. #### Windows:
   Baixe o instalador do Node.js para Windows no site oficial: Node.js Downloads.

Execute o instalador e siga as instruções na tela.

você pode verificar se o Node.js foi instalado corretamente abrindo o Prompt de Comando (CMD) e digitando os seguintes comandos:

```
node -v
npm -v
```

Isso deve exibir as versões do Node.js e do npm.

2. #### macOS:
   Você pode instalar o Node.js no macOS usando o Homebrew. Abra o Terminal e execute o seguinte comando para instalar o Homebrew (se ainda não estiver instalado):

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Após a instalação do Homebrew, instale o Node.js com o seguinte comando:

```
brew install node
Verifique se o Node.js foi instalado corretamente:
```

```
node -v
npm -v
```

3. #### Linux (Ubuntu/Debian):
   Abra o Terminal e execute os seguintes comandos para instalar o Node.js:

```
sudo apt update
sudo apt install nodejs npm
Verifique se o Node.js foi instalado corretamente:
```

```
node -v
npm -v
```

4. Certifique-se de ter o Robot Framework instalado. Você pode instalar utilizando o seguinte comando:

```
pip install robotframework
```

5. Instale a biblioteca Browser:

```
  pip install robotframework-browser
```

**_(Opcional) Se deseja executar em modo headless, certifique-se de ter o WebDriver adequado instalado (por exemplo, o ChromeDriver para o Google Chrome)._**

Executando os Testes

### É recomendado já está dentro do diretorio dos testes ao executar os comandos.

6. Execução Padrão
   Para executar todos os testes no diretório:

```
robot -r ./logs ./
```

**_(opcional)Execução em Modo Headless:
Para executar em modo headless, edite o arquivo base.resource na linha 12 e defina headless=True. Em seguida, execute os testes como de costume:_**

7. Salvando Logs
   Por padrão, os logs serão salvos no diretório atual. Se deseja salvar os logs em uma pasta específica, você pode utilizar a opção -d:

```
robot -d ./logs teste.robot
```

Isso salvará os logs no diretório especificado.

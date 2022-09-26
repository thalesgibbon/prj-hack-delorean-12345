# delorean

Este eh o repositorio do APLICATIVO do delorean para o hackathon btg.

A infraestrutura de processamento dos dados na AWS esta neste repo: https://github.com/lukecampos/prj-hack-delorean-12345

## Getting Started

Aqui contem todos os arquivos utilizados para criacao do app que se integra com nossa inteligencia que esta na AWS. Para isso desenvolvemos um app usando o firebase como backend as a service e utilizamos o flutter como linguagem para construcao do app. Escolhemos o FIrebase pois contem diversas funcionalidades nativas que agilizam o processo do app, por exemplo controle de acesso, criacao de usuario e recuperacao de senha. Podendo assim estar mais focado na ideia e na jornada do nosso usuario.

Criamos uma manual no primeiro acesso do app que apresenta ao usuario nosso proposito. Como tambem, pensamos e deixar o mais clean possivel para que nosso usuario chegue direto aonde deseja.

O aplicativo ja esta funcional, porem mockamos os dados do open finance pois eh base de desenvolvimento, entao a interacao com usuario poderia nao trazer dados com o cpf real. Porem todo o processo esta validado e integrado entre si.

Ponto de melhoria para o processo, pensar na arquitetura de atualizacao dos dados para nao ter que reprocessar tudo igual estamos fazendo. Talvez algo via streaming ou fazendo checkpoints de leitura na base do openfinance.

### IMPORTANT:

para testar o app, apenas baixe o arquivo delorean-release.apk

A pasta function-firebase-aws contem um arquivo importante que se comunica com a lambda que criamos na AWS para trazer todo o extrato ESG do cliente. Este servico foi instanciado no Firebase Funcionts.

qualquer duvida, favor entrar em contato com thales.gibbon@gmail.com

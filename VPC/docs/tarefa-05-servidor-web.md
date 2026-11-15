# Tarefa 05 — Lançar e validar o servidor web

**Laboratório** AWS Lab 267 — Amazon VPC e servidor web

## Objetivo

Lançar uma instância EC2 com IPv4 público na Lab VPC, instalar o Apache, o PHP e a aplicação do laboratório por meio de EC2 User Data e verificar o acesso à aplicação pelo navegador.

## Instância e rede

| Item | Configuração e evidência |
| --- | --- |
| Instância | `Web Server 1`, `t3.micro`, selecionada no formulário e exibida na lista após o lançamento (02–03, 07). |
| Sistema operacional | Amazon Linux 2023 no resumo do formulário de lançamento (02–05). A listagem pós-lançamento exibe `Linux/UNIX` (09). A versão em execução dentro da instância ficou sem verificação direta. |
| Par de chaves | `vockey`, selecionado no formulário e exibido na listagem (03, 08–09). |
| VPC e sub-rede | `Lab VPC` (`10.0.0.0/16`) e `Public Subnet 2` (`10.0.2.0/24`) selecionadas no formulário (04). A zona `us-west-2a` também aparece na listagem e na aplicação (07, 12). |
| IPv4 público | Atribuição automática habilitada no formulário. A listagem mostra IPv4 e DNS públicos atribuídos (04, 08). |
| Grupo de segurança | `Web Security Group` selecionado como grupo existente e exibido na listagem da instância (04, 08–09). A [Tarefa 04](tarefa-04-security-group.md) registra a criação da regra de entrada TCP 80 com origem `0.0.0.0/0`. |

## Automação com EC2 User Data

O roteiro original usa Amazon Linux 2 com `yum` e `chkconfig`. O [script local](../scripts/user-data.sh) foi preparado para Amazon Linux 2023. Ele usa `dnf update -y`, instala `httpd`, `php`, `unzip` e `wget` com DNF, baixa o ZIP institucional do Lab 267 via HTTPS, extrai os arquivos em `/var/www/html`, atribui a propriedade a `apache:apache` e habilita e inicia o Apache com `systemctl enable --now httpd`.

A captura 05 mostra a instalação dos pacotes, o mesmo endereço de download e os mesmos comandos de extração, propriedade e ativação do Apache que aparecem no arquivo local. O início do campo está acima da área visível. O bloco inicial do script local (`#!/bin/bash`, `set -e` e `dnf update -y`) ficou sem comparação. O carregamento da aplicação comprova o funcionamento do serviço naquele momento. A confirmação de execução integral do User Data exige o conteúdo salvo da instância e os logs do `cloud-init`.

## Execução e teste HTTP

1. O console confirmou o início do lançamento. A listagem mostrou a instância em execução enquanto as verificações inicializavam (06–07). A captura 10 mostra `3/3 verificações aprovadas`, contagem que também aparece na linha da instância na captura 14.
2. A primeira tentativa registrada de acesso ao IPv4 público exibiu `ERR_CONNECTION_TIMED_OUT` (11). A causa ficou indeterminada. A tentativa posterior no mesmo IPv4 carregou a aplicação via HTTP, indicada como **Não seguro** no navegador. A página exibiu o identificador da mesma instância e a zona `us-west-2a` (12). O código de status HTTP ficou sem registro.
3. Após o teste, a confirmação de encerramento mostrou a proteção contra encerramento desabilitada. O console registrou o início do encerramento e, posteriormente, exibiu o estado **Encerrado** (13–15).

## Validações

| Validação | Resultado | Evidência |
| --- | --- | --- |
| Seleção da AMI AL2023, tipo e par de chaves | Comprovado no formulário. Tipo e chave também aparecem na listagem. | 02–05, 07–09 |
| Seleção da Lab VPC e Public Subnet 2, com zona `us-west-2a` | Comprovado no formulário, com confirmação da zona na instância e na aplicação. | 04, 07, 12 |
| IPv4 público atribuído e Web Security Group associado | Comprovado na listagem. | 08–09 |
| Lançamento e verificações da instância | Comprovado, com 3/3 verificações aprovadas. | 06–07, 10, 14 |
| Trecho de User Data no formulário | Comprovado e compatível com o trecho correspondente do arquivo local. | 05 |
| User Data integral salvo, execução completa e versão de SO em execução | Pendente de verificação direta. | O trecho inicial e os logs ficaram fora das capturas. |
| Acesso HTTP à aplicação | Comprovado visualmente após uma tentativa com timeout. | 11–12 |
| Código de status HTTP e causa do timeout | Pendentes de registro e diagnóstico. | 11–12 |
| Encerramento da instância | Comprovado no console. | 13–15 |
| Regra de saída salva e recursos residuais após o encerramento | Pendentes de conferência. | As capturas registram o encerramento da EC2. |

## Evidências

1. [Painel do EC2 antes do lançamento](../evidencias/tarefa-05/01-painel-inicial-ec2.png)
2. [Nome e AMI selecionada](../evidencias/tarefa-05/02-nome-e-ami.png)
3. [Tipo e par de chaves](../evidencias/tarefa-05/03-tipo-e-par-de-chaves.png)
4. [VPC, sub-rede e grupo de segurança](../evidencias/tarefa-05/04-vpc-sub-rede-e-firewall.png)
5. [Trecho visível do User Data](../evidencias/tarefa-05/05-user-data.png)
6. [Confirmação do lançamento](../evidencias/tarefa-05/06-lancamento-confirmado.png)
7. [Instância em execução com verificações inicializando](../evidencias/tarefa-05/07-instancia-em-execucao.png)
8. [IPv4 público e grupo associado](../evidencias/tarefa-05/08-ipv4-publico-e-grupo.png)
9. [Plataforma Linux/UNIX e par de chaves](../evidencias/tarefa-05/09-plataforma-e-par-de-chaves.png)
10. [Indicador de 3/3 verificações aprovadas](../evidencias/tarefa-05/10-verificacoes-de-status.png)
11. [Tentativa de acesso com timeout](../evidencias/tarefa-05/11-http-timeout.png)
12. [Aplicação carregada via HTTP](../evidencias/tarefa-05/12-aplicacao-via-http.png)
13. [Confirmação solicitada para encerrar a instância](../evidencias/tarefa-05/13-confirmacao-de-encerramento.png)
14. [Encerramento iniciado e 3/3 verificações](../evidencias/tarefa-05/14-encerramento-iniciado.png)
15. [Estado final Encerrado](../evidencias/tarefa-05/15-instancia-encerrada.png)

As 15 cópias foram regravadas como PNGs com tarjas opacas sobre identificadores, endereços e sufixos pessoais. Os hashes dos originais foram conferidos antes e depois.

## Aprendizados e encerramento

- As verificações de status do EC2 e o teste no navegador validam aspectos diferentes. Para investigar um novo timeout, confira o caminho da sub-rede até o Internet Gateway, a regra de entrada TCP 80, o estado do Apache e os logs do `cloud-init`.
- Depois de registrar o teste, confira se a instância está **Encerrada** e verifique se volumes EBS e IPs elásticos vinculados ao laboratório precisam ser removidos ou liberados, conforme as permissões e as instruções do ambiente. O painel anterior ao lançamento já exibia um IP elástico na região, cuja vinculação precisa ser conferida antes de qualquer ação.

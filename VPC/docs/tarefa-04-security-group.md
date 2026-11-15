# Tarefa 04 — Criar o grupo de segurança do servidor web

**Laboratório** AWS Lab 267 — Amazon VPC e Servidor Web

**Status** Criação do grupo e da regra de entrada confirmada pelo console AWS. Associação a uma instância e teste HTTP pendentes.

## Objetivo

Criar o grupo de segurança Web Security Group na Lab VPC com a descrição `Enable HTTP access` e permitir requisições HTTP na porta TCP 80 a partir de qualquer endereço IPv4, conforme o roteiro do laboratório.

## Configurações e regras observadas

O formulário mostra a Lab VPC selecionada, a descrição `Enable HTTP access` e o nome funcional Web Security Group. O nome cadastrado inclui um sufixo de identificação, ocultado nas cópias. A descrição também aparece na listagem após a criação.

| Direção | Tipo | Protocolo | Portas | Origem ou destino | Descrição | Evidência |
| --- | --- | --- | --- | --- | --- | --- |
| Entrada | HTTP | TCP | 80 | Origem `0.0.0.0/0` (Qualquer local-IPv4 / Anywhere-IPv4) | `Permit web requests` | Formulário preenchido e confirmação de criação (04–05) |
| Saída | Todo o tráfego | Todos | Todas | Destino `0.0.0.0/0` | Campo em branco | Visível no formulário antes do envio (03–04) |

## Procedimento registrado

1. Em **VPC > Grupos de segurança**, abrir **Criar grupo de segurança**. A listagem inicial exibia dois grupos padrão.
2. Preencher o nome do grupo e a descrição e selecionar a **Lab VPC**. O formulário inicialmente mostrava zero regras de entrada.
3. Em **Regras de entrada > Adicionar regra**, selecionar **HTTP** e **Qualquer local-IPv4**, conferir **TCP**, porta **80** e `0.0.0.0/0`, e preencher a descrição `Permit web requests`.
4. Enviar o formulário. O console exibiu a mensagem de sucesso com os detalhes da regra de entrada. Na listagem final, o novo grupo aparece com a descrição `Enable HTTP access` e o identificador da VPC selecionada no formulário. Esse identificador foi conferido nos originais e ocultado nas cópias.

## Validação e resultado

- [x] Seleção da Lab VPC e descrição do grupo conferidas no formulário.
- [x] Criação do Web Security Group confirmada pela mensagem de sucesso e pela listagem final, que passou de dois para três grupos.
- [x] Criação da regra de entrada TCP 80, origem `0.0.0.0/0` e descrição `Permit web requests` confirmada pelo console.
- [ ] Conferir a regra de saída salva na aba **Regras de saída** do grupo criado.
- [ ] Confirmar a associação do grupo a uma instância EC2 ou interface de rede.
- [ ] Testar o acesso HTTP ao servidor e registrar a resposta.

## Evidências

1. [Listagem inicial dos grupos de segurança](../evidencias/tarefa-04/01-listagem-inicial.png)
2. [Detalhes básicos e seleção da Lab VPC](../evidencias/tarefa-04/02-detalhes-basicos.png)
3. [Estado inicial das regras no formulário](../evidencias/tarefa-04/03-regras-iniciais.png)
4. [Regra de entrada HTTP preenchida](../evidencias/tarefa-04/04-regra-entrada-http.png)
5. [Confirmação de criação do grupo e da regra](../evidencias/tarefa-04/05-criacao-confirmada.png)
6. [Listagem após a criação](../evidencias/tarefa-04/06-listagem-final.png)

As cópias foram regravadas com tarjas opacas nos pixels que exibiam IDs de VPCs, IDs de grupos de segurança e sufixos de identificação. Os arquivos originais foram preservados.

## Segurança e aprendizados

- A origem `0.0.0.0/0` permite conexões na porta TCP 80 de qualquer endereço IPv4 que alcance uma interface associada ao grupo. Esse escopo atende ao cenário público do laboratório.
- A confirmação do console comprova a criação do grupo e da regra de entrada. A validação do serviço exige conferir a associação do grupo, o caminho de rede e a resposta do servidor na porta 80.

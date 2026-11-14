# Tarefa 01 — Criar a Amazon VPC

**Laboratório:** AWS Lab 267 — Amazon VPC e Servidor Web
**Projeto:** AWS-Lab | Souzas Dev
**Status:** Tarefa 01 concluída | Validação de rotas na Tarefa 03
**Região:** us-west-2 (Oregon)

---

## 1. Objetivo

Criar uma VPC personalizada utilizando o assistente
"VPC e muito mais" no Console AWS.

A infraestrutura inicial deve conter:
- Uma VPC;
- Uma sub-rede pública;
- Uma sub-rede privada;
- Um Internet Gateway;
- Um NAT Gateway;
- Duas tabelas de rotas.

## 2. Configuração planejada

| Recurso | Configuração |
| --- | --- |
| VPC | Lab VPC |
| IPv4 CIDR | 10.0.0.0/16 |
| IPv6 | Nenhum |
| Tenancy | Padrão |
| Zona de Disponibilidade | us-west-2a |
| Sub-rede pública | Public Subnet 1 |
| CIDR público | 10.0.0.0/24 |
| Sub-rede privada | Private Subnet 1 |
| CIDR privado | 10.0.1.0/24 |
| Internet Gateway | 1 |
| NAT Gateway | Zonal, em 1 AZ |
| VPC Endpoints | Nenhum |
| Tabela pública | Public Route Table |
| Tabela privada | Private Route Table |

A tabela usa os nomes técnicos base. A prévia mostra os nomes da VPC, das sub-redes e das tabelas de rotas, e a listagem final confirma o nome base da Lab VPC.

## 3. Progresso observado

Durante o provisionamento, o assistente AWS
apresentou progresso de 72%.

Operações indicadas como concluídas:
- [x] Criar a VPC;
- [x] Habilitar nomes de host DNS;
- [x] Habilitar resolução DNS;
- [x] Criar duas sub-redes;
- [x] Criar e associar Internet Gateway;
- [x] Criar tabela de rotas inicial;
- [x] Criar e associar rota inicial;
- [x] Alocar Elastic IP;
- [x] Criar recurso NAT Gateway.

Operações pendentes na captura 10 e concluídas na captura 11:
- [x] Confirmar ativação do NAT Gateway pelo assistente;
- [x] Finalizar a segunda tabela de rotas;
- [x] Confirmar conclusão do assistente.

## 4. Validação

Após o provisionamento:
- [x] Confirmar estado Available e CIDR 10.0.0.0/16 na listagem da VPC;
- [x] Confirmar que o assistente criou duas sub-redes;
- [ ] Validar os nomes e CIDRs das sub-redes e os nomes das tabelas nos detalhes dos recursos;
- [x] Confirmar que o assistente anexou o Internet Gateway;
- [x] Confirmar ativação do NAT Gateway pelo assistente;
- [ ] Conferir rota pública 0.0.0.0/0 para IGW;
- [ ] Conferir rota privada 0.0.0.0/0 para NAT;
- [ ] Validar associações das sub-redes.

## 5. Evidências

Cada PNG foi regravado sem metadados do original. As tarjas pretas substituem os pixels dos campos ocultados. Os nomes técnicos base, os CIDRs, a região, a zona de disponibilidade e os estados do assistente foram preservados.

| Original | Arquivo revisado | Evidência | Ocultação |
| --- | --- | --- | --- |
| Captura 1.png | [01-console-aws-inicial.png](../evidencias/tarefa-01/01-console-aws-inicial.png) | Página inicial do console AWS. | Nenhuma tarja. |
| Captura 2.png | [02-painel-vpc-oregon.png](../evidencias/tarefa-01/02-painel-vpc-oregon.png) | Painel da VPC em Oregon antes do provisionamento. | Nenhuma tarja. |
| Captura 3.png | [03-assistente-vpc-e-cidr.png](../evidencias/tarefa-01/03-assistente-vpc-e-cidr.png) | Assistente `VPC e muito mais`, CIDR `10.0.0.0/16` e IPv6 desativado. | Nenhuma tarja. |
| Captura 4.png | [04-locacao-e-zona-de-disponibilidade.png](../evidencias/tarefa-01/04-locacao-e-zona-de-disponibilidade.png) | Locação padrão, uma zona de disponibilidade e uma sub-rede pública. | Nenhuma tarja. |
| Captura 5.png | [05-cidrs-das-sub-redes-e-nat-zonal.png](../evidencias/tarefa-01/05-cidrs-das-sub-redes-e-nat-zonal.png) | Sub-redes `10.0.0.0/24` e `10.0.1.0/24` em `us-west-2a`, com NAT zonal em uma AZ. | Nenhuma tarja. |
| Captura 6.png | [06-endpoints-dns-e-tags.png](../evidencias/tarefa-01/06-endpoints-dns-e-tags.png) | Nenhum endpoint, nomes de host e resolução DNS habilitados, e painel de tags. | Nenhuma tarja. |
| Captura 7.png | [07-previa-do-nome-da-vpc.png](../evidencias/tarefa-01/07-previa-do-nome-da-vpc.png) | Nome base `Lab VPC` na prévia. | Sufixo de identificação do projeto no nome da VPC. |
| Captura 8.png | [08-previa-das-sub-redes.png](../evidencias/tarefa-01/08-previa-das-sub-redes.png) | Prévia das duas sub-redes em `us-west-2a`. | Sufixos de identificação do projeto nos dois nomes. |
| Captura 9.png | [09-previa-das-tabelas-de-rotas-e-gateways.png](../evidencias/tarefa-01/09-previa-das-tabelas-de-rotas-e-gateways.png) | Prévia das tabelas pública e privada e das conexões com IGW e NAT. | Sufixos de identificação do projeto nos dois nomes das tabelas. |
| Captura 10.png | [10-provisionamento-aguardando-nat.png](../evidencias/tarefa-01/10-provisionamento-aguardando-nat.png) | Assistente em 72%, aguardando ativação do NAT. | ID da VPC (duas ocorrências), IDs das duas sub-redes, do IGW, da tabela inicial, da alocação do Elastic IP e do NAT. |
| Captura 11.png | [11-provisionamento-concluido.png](../evidencias/tarefa-01/11-provisionamento-concluido.png) | Assistente em Êxito, com ativação do NAT e etapas de criação e associação de rotas concluídas. | ID da VPC (duas ocorrências), IDs das duas sub-redes, do IGW, das duas tabelas de rotas, da alocação do Elastic IP e do NAT. |
| Captura 12.png | [12-lab-vpc-disponivel.png](../evidencias/tarefa-01/12-lab-vpc-disponivel.png) | Lab VPC `Available` com CIDR `10.0.0.0/16`. | Sufixo de identificação do projeto no nome da Lab VPC e IDs das duas VPCs listadas. |
| Captura 13.png | [13-atributos-da-vpc-e-vpc-padrao.png](../evidencias/tarefa-01/13-atributos-da-vpc-e-vpc-padrao.png) | Locação padrão, ausência de IPv6 e coluna que distingue a VPC padrão. | IDs dos conjuntos de opções DHCP, das tabelas de rotas principais, das Network ACLs principais e da conta proprietária nas duas linhas. |

## 6. Resultado

O assistente registrou **Êxito** após ativar o NAT Gateway e concluir as etapas de criação e associação de rotas. A listagem confirmou a Lab VPC como `Available` com CIDR `10.0.0.0/16`. A validação das entradas `0.0.0.0/0`, dos destinos IGW e NAT e das associações específicas continua pendente.

## 7. Aprendizados e observações

A validação detalhada das rotas e associações pode ser registrada nesta seção.

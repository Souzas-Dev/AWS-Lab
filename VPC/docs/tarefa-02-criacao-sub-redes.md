# Tarefa 02 — Criar sub-redes adicionais

**Laboratório:** AWS Lab 267 — Amazon VPC e Servidor Web

**Projeto:** AWS-Lab | Souzas Dev

**Status:** Configuração revisada. Validação após a criação pendente.

**Região prevista no roteiro:** us-west-2 (Oregon)

## 1. Objetivo

Expandir a Lab VPC com duas sub-redes adicionais para organizar a infraestrutura entre Zonas de Disponibilidade.

## 2. Configuração observada

| VPC selecionada | CIDR da VPC | Sub-rede | CIDR IPv4 | Seleção de AZ |
| --- | --- | --- | --- | --- |
| Lab VPC | `10.0.0.0/16` | Public Subnet 2 | `10.0.2.0/24` | Sem preferência |
| Lab VPC | `10.0.0.0/16` | Private Subnet 2 | `10.0.3.0/24` | Sem preferência |

## 3. Procedimento institucional

1. Em **VPC > Sub-redes**, selecionar **Criar sub-rede**.
2. Selecionar **Lab VPC** e preencher **Public Subnet 2** com o bloco `10.0.2.0/24` e a opção **Sem preferência** para a AZ.
3. Repetir para **Private Subnet 2** com o bloco `10.0.3.0/24` e a mesma opção de AZ.
4. Após a criação, conferir a VPC, os CIDRs, as AZs atribuídas e os estados na listagem de sub-redes.

## 4. Validação

- [x] Confirmar os nomes e CIDRs nos dois formulários de criação.
- [x] Confirmar a seleção da Lab VPC e seu CIDR nos dois formulários.
- [x] Confirmar a opção **Sem preferência** para a AZ nos dois formulários.
- [ ] Confirmar a criação, a associação efetiva à Lab VPC e o estado das duas sub-redes.
- [ ] Confirmar a região, as AZs atribuídas, a distribuição entre zonas e a listagem final das quatro sub-redes.

## 5. Evidências

1. [Public Subnet 2 — seleção da Lab VPC](../evidencias/tarefa-02/01-public-subnet-2-selecao-vpc.png)
2. [Public Subnet 2 — CIDR e opção de AZ](../evidencias/tarefa-02/02-public-subnet-2-cidr-e-az.png)
3. [Private Subnet 2 — seleção da Lab VPC](../evidencias/tarefa-02/03-private-subnet-2-selecao-vpc.png)
4. [Private Subnet 2 — CIDR e opção de AZ](../evidencias/tarefa-02/04-private-subnet-2-cidr-e-az.png)

Tarjas opacas nas cópias ocultam o ID da VPC e o sufixo de identificação dos nomes e tags.

## 6. Próxima etapa

Tarefa 03 — Associar as sub-redes às tabelas de rotas.

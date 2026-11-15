# Tarefa 03 — Associar sub-redes às tabelas de rotas

**Laboratório** AWS Lab 267 — Amazon VPC e Servidor Web

**Status** Associações explícitas confirmadas. Rotas e conectividade pendentes de validação.

## Objetivo

Associar a Public Subnet 2 à Public Route Table e a Private Subnet 2 à Private Route Table na Lab VPC, mantendo as associações da Public Subnet 1 e da Private Subnet 1.

## Recursos e associações observadas

A Lab VPC tem o CIDR IPv4 `10.0.0.0/16` conforme o [registro da Tarefa 02](tarefa-02-criacao-sub-redes.md). A captura 03 lista as quatro sub-redes e seus CIDRs. As tabelas pública e privada aparecem com **Principal = Não**.

| Sub-rede | CIDR IPv4 | Associação inicial | Associação após a atualização | Evidências |
| --- | --- | --- | --- | --- |
| Public Subnet 1 | `10.0.0.0/24` | Public Route Table, explícita | Public Route Table, explícita | 01, 04–05, 08 |
| Public Subnet 2 | `10.0.2.0/24` | Tabela principal, implícita | Public Route Table, explícita | 02–05, 08 |
| Private Subnet 1 | `10.0.1.0/24` | Private Route Table, explícita | Private Route Table, explícita | 06–09 |
| Private Subnet 2 | `10.0.3.0/24` | Tabela principal, implícita | Private Route Table, explícita | 02–03, 07–09 |

## Procedimento registrado

1. Em **VPC > Tabelas de rotas**, abrir a **Public Route Table** da Lab VPC e conferir as associações iniciais. A Public Subnet 1 já estava associada explicitamente. As duas sub-redes da Tarefa 02 ainda usavam a tabela principal.
2. Em **Associações de sub-rede > Editar associações de sub-rede**, manter a Public Subnet 1 selecionada, marcar a Public Subnet 2 e salvar. A captura 05 mostra a mensagem de sucesso e duas associações explícitas. A captura 08 mostra as duas sub-redes públicas vinculadas à Public Route Table na coluna de tabela vigente.
3. Abrir a **Private Route Table** da Lab VPC e conferir a associação explícita existente da Private Subnet 1. Manter essa sub-rede selecionada, marcar a Private Subnet 2 e salvar. As capturas 08 e 09 mostram a seleção das duas sub-redes privadas, a mensagem de sucesso e a contagem final de duas associações explícitas.

## Rotas esperadas no roteiro

A aba **Rotas** aparece na interface, mas nenhuma das nove capturas exibe seu conteúdo. Os destinos, alvos e estados efetivos das rotas seguem pendentes.

| Tabela | Destino esperado | Alvo esperado | Validação |
| --- | --- | --- | --- |
| Public Route Table | `10.0.0.0/16` | `local` | Pendente |
| Public Route Table | `0.0.0.0/0` | Internet Gateway | Pendente |
| Private Route Table | `10.0.0.0/16` | `local` | Pendente |
| Private Route Table | `0.0.0.0/0` | NAT Gateway | Pendente |

## Validações

- [x] Confirmar as associações explícitas das duas sub-redes públicas e das duas privadas pela sequência de seleção e salvamento.
- [x] Confirmar a existência de Public Subnet 2 e Private Subnet 2 na Lab VPC, seus CIDRs e a listagem das quatro sub-redes. Essa evidência complementa a Tarefa 02.
- [ ] Confirmar o estado das sub-redes, a região efetiva e as AZs atribuídas na listagem de **Sub-redes**. O roteiro prevê `us-west-2` (Oregon). A distribuição entre zonas segue pendente.
- [ ] Conferir os destinos, os alvos e o estado das quatro rotas esperadas na aba **Rotas** das duas tabelas.
- [ ] Validar a conectividade prevista pelo roteiro.

## Evidências

1. [Detalhes iniciais da tabela pública](../evidencias/tarefa-03/01-tabela-publica-detalhes-iniciais.png)
2. [Duas sub-redes com associação implícita à tabela principal](../evidencias/tarefa-03/02-sub-redes-sem-associacao-explicita.png)
3. [Edição inicial e inventário das quatro sub-redes](../evidencias/tarefa-03/03-tabela-publica-edicao-inicial.png)
4. [Seleção das duas sub-redes públicas](../evidencias/tarefa-03/04-tabela-publica-sub-redes-selecionadas.png)
5. [Salvamento das associações públicas](../evidencias/tarefa-03/05-tabela-publica-associacoes-salvas.png)
6. [Detalhes iniciais da tabela privada](../evidencias/tarefa-03/06-tabela-privada-detalhes-iniciais.png)
7. [Associação privada inicial e Private Subnet 2 na tabela principal](../evidencias/tarefa-03/07-tabela-privada-associacoes-iniciais.png)
8. [Seleção das sub-redes privadas e vínculos públicos vigentes](../evidencias/tarefa-03/08-tabela-privada-sub-redes-selecionadas.png)
9. [Salvamento das associações privadas](../evidencias/tarefa-03/09-tabela-privada-associacoes-salvas.png)

As cópias têm tarjas opacas aplicadas aos pixels sobre o número da conta AWS, IDs de recursos e sufixos de identificação. Os originais foram preservados.

## Alertas e aprendizados

- Uma sub-rede sem associação explícita usa a tabela principal da VPC, como aparece nas capturas 02 e 07.
- Durante a edição, a coluna de tabela de rotas indica o vínculo vigente. A seção **Sub-redes selecionadas** mostra o conjunto a aplicar ao salvar. Mantenha selecionada a sub-rede que já pertence à tabela.
- A mensagem de sucesso comprova o salvamento das associações. A validação do caminho do tráfego exige conferir as rotas e testar a conectividade.

# Controle de custos — Amazon EC2

## Objetivo

Este documento registra os recursos utilizados durante o laboratório Amazon EC2 e os principais fatores que podem gerar custos em uma conta AWS real.

## Ambiente de execução

O laboratório é executado em um ambiente educacional temporário fornecido pela Escola da Nuvem.

Por esse motivo, os valores documentados neste projeto possuem finalidade educacional e não representam necessariamente uma cobrança realizada em minha conta AWS pessoal.

## Recursos utilizados

Durante o laboratório poderão ser utilizados:

- Amazon EC2;
- instâncias `t3.micro` e `t3.small`;
- Amazon EBS;
- endereço IPv4 público;
- Amazon CloudWatch;
- tráfego de dados.

## Instância EC2

A atividade inicia com uma instância:

```text
t3.micro
```

Posteriormente, a instância será redimensionada para:

```text
t3.small
```

Em uma conta AWS convencional, instâncias EC2 podem gerar cobrança enquanto permanecem em execução.

## Amazon EBS

O volume raiz inicia com:

```text
8 GiB
```

Durante o laboratório será ampliado para:

```text
10 GiB
```

Volumes EBS podem continuar gerando custos mesmo quando uma instância EC2 está interrompida.

## IPv4 público

Instâncias que utilizam endereços IPv4 públicos também podem gerar cobrança dependendo da configuração e das políticas vigentes da AWS.

## Boas práticas

Ao utilizar uma conta AWS pessoal, devo sempre:

- monitorar o AWS Billing;
- utilizar AWS Budgets;
- acompanhar recursos ativos;
- interromper ou encerrar instâncias não utilizadas;
- verificar volumes EBS remanescentes;
- verificar endereços IP públicos;
- remover recursos após os testes.

## Resultado

O controle de custos deste laboratório será atualizado conforme os recursos forem utilizados e analisados.

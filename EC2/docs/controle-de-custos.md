# Controle de custos — Amazon EC2

![AWS Cost](https://img.shields.io/badge/AWS-Cost_Management-FF9900?logo=amazonwebservices&logoColor=white)
![Environment](https://img.shields.io/badge/ambiente-educacional-blue)

Este documento registra os recursos utilizados durante o laboratório Amazon EC2 e os principais fatores que podem gerar custos em uma conta AWS real.

---

## 1. Ambiente de execução

O laboratório é executado em um ambiente educacional temporário fornecido pela **Escola da Nuvem**.

Por esse motivo, os valores e recursos analisados neste documento possuem finalidade educacional e não representam necessariamente cobranças realizadas em minha conta AWS pessoal.

---

## 2. Recursos analisados

| Recurso | Configuração utilizada |
| --- | --- |
| Amazon EC2 | `t3.micro` e posteriormente `t3.small` |
| Amazon EBS | Volume raiz de `8 GiB`, posteriormente `10 GiB` |
| IPv4 público | Utilizado para acesso ao servidor web |
| Amazon CloudWatch | Monitoramento da instância |
| Data Transfer | Tráfego gerado durante os testes |

---

## 3. Amazon EC2

A atividade inicia com uma instância:

```text
t3.micro
```

Posteriormente, a instância será redimensionada para:

```text
t3.small
```

Em uma conta AWS convencional, instâncias EC2 podem gerar cobrança enquanto permanecem em execução.

Uma instância interrompida deixa de consumir capacidade computacional, mas outros recursos associados podem continuar gerando custos.

---

## 4. Amazon EBS

O volume raiz inicia com:

```text
8 GiB
```

Durante o laboratório será ampliado para:

```text
10 GiB
```

Volumes Amazon EBS podem continuar existindo e gerar custos mesmo quando uma instância EC2 está interrompida.

---

## 5. Endereço IPv4 público

A instância utilizará um endereço IPv4 público para permitir o acesso ao servidor web durante o laboratório.

Em uma conta AWS real, endereços IPv4 públicos podem representar um componente adicional de custo.

---

## 6. Monitoramento

O laboratório utiliza recursos de monitoramento da instância por meio do Amazon CloudWatch.

O monitoramento será analisado principalmente para verificar:

- estado da instância;
- métricas básicas;
- verificações de status;
- disponibilidade do recurso.

---

## 7. Transferência de dados

O acesso ao servidor web também gera tráfego de dados.

Durante este laboratório o volume de tráfego será pequeno, porém a transferência de dados é um fator que deve ser considerado em ambientes reais.

---

## 8. Boas práticas de controle de custos

Ao utilizar uma conta AWS pessoal, devo sempre:

- monitorar o AWS Billing;
- utilizar AWS Budgets;
- acompanhar recursos ativos;
- interromper ou encerrar instâncias não utilizadas;
- verificar volumes EBS remanescentes;
- verificar endereços IPv4 públicos;
- acompanhar transferência de dados;
- remover recursos após os testes.

---

## 9. Checklist de encerramento

Ao finalizar um laboratório em uma conta AWS real, devo verificar:

- [ ] Instâncias EC2 encerradas;
- [ ] Volumes EBS desnecessários removidos;
- [ ] Endereços IP públicos liberados;
- [ ] Security Groups temporários revisados;
- [ ] Outros recursos do laboratório removidos;
- [ ] AWS Billing conferido.

---

## 10. Resultado

O controle de custos será atualizado conforme os recursos forem utilizados e analisados durante o laboratório.

Ao final da atividade, esta seção registrará os principais aprendizados relacionados ao impacto financeiro da arquitetura utilizada.

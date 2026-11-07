# Controle de custos — Amazon EC2

![AWS Cost](https://img.shields.io/badge/AWS-Cost_Management-FF9900?logo=amazonwebservices&logoColor=white)
![Environment](https://img.shields.io/badge/ambiente-educacional-blue)

Este documento registra os recursos utilizados durante o laboratório Amazon EC2 e os principais fatores que podem gerar custos em uma conta AWS real.

---

## 1. Ambiente de execução

O laboratório foi executado em um ambiente educacional temporário fornecido pela **Escola da Nuvem**.

A análise usa os recursos do laboratório como referência para entender cobranças em uma conta AWS própria.

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

A atividade começou com uma instância `t3.micro`. Após a interrupção, alterei o tipo para `t3.small` e iniciei a instância novamente.

Em uma conta AWS convencional, instâncias EC2 podem gerar cobrança enquanto permanecem em execução.

Uma instância interrompida deixa de consumir capacidade computacional, mas outros recursos associados podem continuar gerando custos.

---

## 4. Amazon EBS

O volume raiz `gp3` começou com `8 GiB` e foi ampliado para `10 GiB`.

Volumes Amazon EBS podem continuar existindo e gerar custos mesmo quando uma instância EC2 está interrompida.

---

## 5. Endereço IPv4 público

Usei o IPv4 público da instância para testar o acesso ao servidor web pelo navegador.

Em uma conta AWS real, endereços IPv4 públicos podem representar um componente adicional de custo.

---

## 6. Monitoramento

Consultei métricas de CPU e rede do CloudWatch na aba Monitoramento do EC2. Acompanhei o estado e as verificações de status no console da instância.

---

## 7. Transferência de dados

O acesso ao servidor web também gera tráfego de dados.

O tráfego do laboratório veio dos testes de acesso HTTP. A transferência de dados é um dos fatores a acompanhar em uma conta própria.

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

A instância foi encerrada no EC2 e a sessão educacional foi finalizada. A análise de custos é qualitativa. Durante a interrupção para o redimensionamento, o console destacou que volumes EBS e outros recursos associados podem continuar gerando cobranças. Em uma conta própria, vale conferir esses recursos separadamente ao encerrar a instância.

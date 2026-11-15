# Controle de custos — Lab 02 Amazon VPC

![AWS Cost](https://img.shields.io/badge/AWS-Cost_Management-FF9900?logo=amazonwebservices&logoColor=white)
![Status](https://img.shields.io/badge/execucao-documentada-green)

## 1. Contexto

O Lab AWS 267 foi executado em ambiente educacional.

A documentação comprova o provisionamento inicial da VPC, associações de rede, criação do Security Group, execução do servidor web e encerramento da instância EC2.

**Não há valores reais de cobrança apurados nem comprovação da exclusão de todos os recursos da VPC.**

## 2. Recursos e possíveis custos

| Recurso | Situação documentada | Atenção a custos |
| --- | --- | --- |
| Amazon VPC | Criação confirmada | A VPC em si não possui cobrança adicional |
| Sub-redes | Quatro sub-redes identificadas | Criação sem cobrança adicional |
| Internet Gateway | Criação registrada no assistente | Transferência de dados pode gerar cobrança |
| NAT Gateway | Criação e ativação registradas | Pode cobrar por duração e dados processados |
| IPv4 público | Atribuído à EC2; EIP aparece no ambiente | Verificar endereços ainda alocados |
| Amazon EC2 | t3.micro executada e encerrada | Computação cobrada quando aplicável |
| Amazon EBS | Armazenamento associado à EC2 não auditado | Volumes residuais podem gerar cobrança |
| Transferência de dados | Aplicação acessada via HTTP | Cobrança depende do tráfego e do ambiente |

Os valores dependem da região, do período e das condições da conta AWS.

## 3. Resultado observado

- [x] Acesso HTTP à aplicação documentado.
- [x] Instância EC2 colocada no estado Encerrado.
- [ ] Confirmar a exclusão do NAT Gateway.
- [ ] Conferir Elastic IPs e IPv4 públicos remanescentes.
- [ ] Conferir volumes EBS residuais.
- [ ] Confirmar remoção dos recursos de rede temporários, quando aplicável.
- [ ] Verificar recursos remanescentes na região.
- [ ] Consultar Billing ou Budgets, caso o ambiente permita.
- [ ] Registrar o custo real ou a impossibilidade de consulta.

Encerrar uma instância EC2 não remove automaticamente todos os recursos associados ao laboratório.

## 4. Informações da execução

| Item | Registro |
| --- | --- |
| Laboratório | AWS Lab 267 |
| Região prevista | Oregon, `us-west-2` |
| Instância | Web Server 1, t3.micro |
| AMI selecionada | Amazon Linux 2023 |
| Verificações EC2 | 3/3 aprovadas |
| Aplicação HTTP | Carregamento comprovado |
| Estado final da EC2 | Encerrado |
| NAT Gateway removido | Não confirmado |
| Elastic IP liberado | Não confirmado |
| Custos efetivos | Não apurados |

## 5. Atenção ao NAT Gateway

O NAT Gateway pode continuar gerando cobranças enquanto provisionado, dependendo das condições da conta.

A documentação da Tarefa 01 confirma seu provisionamento inicial, mas não apresenta comprovação da exclusão posterior.

Não se deve declarar custo zero apenas porque a instância EC2 foi encerrada.

## 6. Referências

- [Preços da Amazon VPC](https://aws.amazon.com/pt/vpc/pricing/)
- [Documentação da Amazon VPC](https://docs.aws.amazon.com/vpc/)

## 7. Conclusão

O encerramento da instância EC2 foi comprovado.

**A auditoria financeira e a verificação dos recursos residuais permanecem pendentes.**

Consulte também a [documentação geral do Lab 02](../README.md).

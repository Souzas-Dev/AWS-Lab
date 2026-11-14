# Controle de custos — Amazon VPC

![AWS Cost](https://img.shields.io/badge/AWS-Cost_Management-FF9900?logo=amazonwebservices&logoColor=white)
![Environment](https://img.shields.io/badge/ambiente-educacional-blue)
![Status](https://img.shields.io/badge/status-planejamento-blue)

Este documento acompanha os recursos previstos para o **Lab 02 — Amazon VPC e Servidor Web**. O controle começa no planejamento e será atualizado com os recursos efetivamente usados, os testes e as observações da execução.

---

## 1. Ambiente e escopo

A atividade está planejada para um ambiente educacional temporário. A disponibilidade dos serviços e eventuais restrições serão conferidas no ambiente antes do provisionamento.

**Status:** planejamento. Não há custos reais apurados nem recursos provisionados confirmados neste documento.

A análise de cobrança abaixo vale como referência para uma conta AWS convencional. Preços variam conforme região, configuração e período.

---

## 2. Recursos previstos

| Recurso | Configuração planejada | Atenção a custos |
| --- | --- | --- |
| Amazon VPC | `Lab VPC`, `10.0.0.0/16` | A criação da VPC em si não tem cobrança adicional |
| Sub-redes | Duas públicas e duas privadas, em duas AZs | A criação das sub-redes em si não tem cobrança adicional |
| Internet Gateway | Um associado à VPC | Avaliar a transferência de dados dos recursos |
| Tabelas de rotas | Pública e privada | A criação das tabelas em si não tem cobrança adicional |
| NAT Gateway | Um, inicialmente em uma AZ | Cobrança por disponibilidade/tempo e por dados processados |
| IPv4 público / Elastic IP | Conforme NAT Gateway e instância EC2 | Cobrança por endereços IPv4 públicos aplicáveis |
| Amazon EC2 | `t3.micro`, servidor web | Cobrança de computação quando aplicável |
| Amazon EBS | Volume raiz associado à EC2 | Cobrança por armazenamento provisionado |
| Transferência de dados | Testes HTTP e eventuais downloads | Pode gerar cobrança dependendo do caminho do tráfego |

---

## 3. Atenção especial ao NAT Gateway

O NAT Gateway deve ser criado **somente quando a etapa exigir e o ambiente permitir**. Em uma conta própria, ele pode gerar cobrança enquanto estiver provisionado, mesmo sem tráfego, além das cobranças por volume de dados processados.

O desenho planejado usa um NAT Gateway na primeira Zona de Disponibilidade. Se recursos da segunda zona enviarem tráfego por ele, também pode haver cobrança por transferência de dados entre zonas. Esse desenho é apropriado para seguir a atividade educacional, mas não representa, por si só, uma arquitetura de alta disponibilidade.

**Boas práticas:**
- Confirmar a região e a estrutura de preços antes de iniciar;
- Registrar o horário de criação e de exclusão do NAT Gateway;
- Evitar manter o recurso ativo fora da atividade;
- Verificar se há Elastic IP remanescente após a exclusão;
- Não presumir que o Free Tier ou créditos educacionais cobrem todos os recursos.

---

## 4. Amazon EC2, EBS e IPv4 público

Na Tarefa 5, uma instância EC2 será provisionada em sub-rede pública para validar a página web.

Em conta convencional, acompanhar:
- tempo de execução da EC2;
- tipo de instância e armazenamento EBS;
- endereços IPv4 públicos atribuídos ou reservados;
- tráfego de saída e entre zonas;
- possíveis recursos que continuam existindo após o encerramento da instância.

Desligar ou encerrar a EC2 não elimina automaticamente todos os recursos de rede da VPC.

---

## 5. Registro da execução

| Item | Valor |
| --- | --- |
| Data da execução | A preencher |
| Região AWS | A preencher |
| Tipo de ambiente | Educacional; confirmar na execução |
| Horário de criação do NAT Gateway | A preencher |
| Horário de exclusão do NAT Gateway | A preencher |
| Tempo de execução EC2 | A preencher |
| Evidências de custos e limpeza | A preencher |
| Cobrança real observada | Não apurada |

Não serão publicados IDs de conta, credenciais, tokens ou dados pessoais nas evidências.

---

## 6. Checklist de encerramento

- [ ] Encerrar a instância EC2 de teste;
- [ ] Conferir e remover volumes EBS não necessários;
- [ ] Excluir o NAT Gateway temporário;
- [ ] Conferir e liberar Elastic IPs não utilizados;
- [ ] Excluir as sub-redes, tabelas de rotas e Internet Gateway criados especificamente para o laboratório, conforme as regras do ambiente;
- [ ] Excluir a VPC temporária após a remoção de dependências, quando aplicável;
- [ ] Verificar recursos restantes na região utilizada;
- [ ] Revisar Billing/Budgets quando disponível;
- [ ] Registrar as evidências de limpeza e o resultado real.

Em ambientes educacionais, respeitar também as orientações do laboratório para finalizar a sessão.

---

## 7. Referências oficiais

- [Preços da Amazon VPC](https://aws.amazon.com/pt/vpc/pricing/)
- [Criar uma VPC e recursos associados](https://docs.aws.amazon.com/pt_br/vpc/latest/userguide/create-vpc.html)

---

## 8. Resultado

**Pendente de execução.** Atualizar esta seção somente após conferir os recursos efetivamente utilizados e a limpeza do ambiente.

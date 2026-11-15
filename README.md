# AWS Lab

![AWS](https://img.shields.io/badge/AWS-Cloud_Computing-FF9900?logo=amazonwebservices&logoColor=white)
![Status](https://img.shields.io/badge/status-em%20desenvolvimento-blue)
![GitHub last commit](https://img.shields.io/github/last-commit/Souzas-Dev/AWS-Lab)
![GitHub repo size](https://img.shields.io/github/repo-size/Souzas-Dev/AWS-Lab)

Repositório dedicado à documentação dos meus **laboratórios práticos em Amazon Web Services (AWS)**.

Este projeto funciona como um portfólio técnico da minha evolução em computação em nuvem, reunindo documentação, scripts, evidências e aprendizados obtidos durante atividades práticas.

---

## Sobre o projeto

O objetivo deste repositório é registrar meus estudos práticos em AWS de maneira organizada e reproduzível.

Durante os laboratórios são trabalhados conceitos relacionados a:

- computação em nuvem;
- infraestrutura;
- redes;
- segurança;
- armazenamento;
- Linux;
- automação;
- monitoramento;
- controle de custos;
- boas práticas AWS.

Cada serviço estudado recebe sua própria pasta dentro do repositório.

---

## Laboratórios

| Lab | Serviço AWS | Conteúdo principal | Status |
| --- | --- | --- | --- |
| 01 | [Amazon EC2](./EC2/) | Provisionamento, monitoramento, HTTP e ciclo de vida da EC2 | Concluído |
| 02 | [Amazon VPC e Servidor Web](./VPC/) | Sub-redes, roteamento, Security Group, EC2 e Apache | Documentação concluída |

O Lab 02 possui cinco tarefas documentadas e 47 capturas revisadas. A aplicação web foi acessada via HTTP e a instância EC2 foi encerrada.

As verificações pendentes de roteamento, distribuição multi-AZ e recursos residuais estão registradas na documentação.

---

## Estrutura do repositório

```text
AWS-Lab/
|-- README.md
|-- EC2/
|   |-- README.md
|   |-- assets/
|   |-- docs/
|   |-- evidencias/
|   `-- scripts/
`-- VPC/
    |-- README.md
    |-- assets/
    |-- docs/
    |   |-- controle-de-custos.md
    |   |-- tarefa-01-criacao-vpc.md
    |   |-- tarefa-02-criacao-sub-redes.md
    |   |-- tarefa-03-roteamento.md
    |   |-- tarefa-04-security-group.md
    |   `-- tarefa-05-servidor-web.md
    |-- evidencias/
    |   |-- tarefa-01/
    |   |-- tarefa-02/
    |   |-- tarefa-03/
    |   |-- tarefa-04/
    |   `-- tarefa-05/
    `-- scripts/
        `-- user-data.sh
```

---

## Padrão de documentação

Cada laboratório poderá conter:

- documentação técnica;
- scripts utilizados;
- configurações relevantes;
- evidências da execução;
- controle e análise de custos;
- problemas encontrados e respectivas soluções;
- resultados obtidos;
- conclusões e aprendizados.

---

## Segurança

Nenhuma credencial ou informação sensível deve ser publicada neste repositório.

Antes de versionar evidências, são revisados itens como:

- IDs de contas AWS;
- Access Keys;
- Secret Access Keys;
- tokens;
- credenciais;
- informações pessoais;
- outros identificadores sensíveis.

---

## Controle de custos

Os laboratórios também consideram os aspectos financeiros dos serviços AWS.

Quando aplicável, são analisados:

- recursos que podem gerar cobrança;
- tempo de execução;
- armazenamento;
- transferência de dados;
- endereços IPv4 públicos;
- AWS Budgets;
- remoção de recursos não utilizados.

Em ambientes educacionais temporários, os custos são tratados como referência de aprendizado.

---

## Tecnologias e ferramentas

- Amazon Web Services
- AWS Management Console
- AWS CLI
- Linux
- Bash
- PowerShell
- Git
- GitHub
- Visual Studio Code

---

## Laboratórios em destaque

### Amazon EC2

O primeiro laboratório do repositório acompanhou o ciclo de vida de uma instância Amazon EC2, do provisionamento ao encerramento.

Entre os principais tópicos estão:

- criação de instâncias;
- Amazon Linux 2023;
- tipos de instância;
- Amazon VPC;
- Security Groups;
- Amazon EBS;
- EC2 User Data;
- Apache HTTP Server;
- monitoramento;
- Amazon CloudWatch;
- redimensionamento;
- proteção contra encerramento.

[Acessar documentação do laboratório Amazon EC2](./EC2/)

### Amazon VPC e Servidor Web

O segundo laboratório documenta a criação de uma VPC `10.0.0.0/16`, quatro sub-redes, associações de tabelas de rotas e um Security Group para HTTP.

Uma instância EC2 `t3.micro`, com Amazon Linux 2023 selecionado no lançamento, hospedou a aplicação institucional. O acesso HTTP funcionou após uma tentativa inicial com timeout.

A EC2 foi encerrada. A distribuição efetiva entre duas AZs e a limpeza completa dos recursos de rede não foram comprovadas.

[Consultar documentação completa do Lab 02](./VPC/)

[Consultar controle de custos e encerramento](./VPC/docs/controle-de-custos.md)

---

## Objetivos

Com este projeto busco:

- consolidar conhecimentos práticos em AWS;
- desenvolver experiência com serviços de nuvem;
- aprimorar minha documentação técnica;
- aplicar boas práticas de segurança;
- compreender custos e arquitetura de recursos;
- praticar Git e GitHub;
- registrar minha evolução profissional;
- construir um portfólio técnico baseado em atividades práticas.

---

## Autor

Eduardo Souza — Souzas Dev

Desenvolvimento, tecnologia e aprendizado contínuo.

# Laboratório AWS — Amazon EC2

![AWS EC2](https://img.shields.io/badge/AWS-Amazon_EC2-FF9900?logo=amazonwebservices&logoColor=white)
![Amazon Linux](https://img.shields.io/badge/Amazon_Linux-2023-232F3E?logo=linux&logoColor=white)
![Status](https://img.shields.io/badge/status-em%20andamento-yellow)

Laboratório prático dedicado ao provisionamento, gerenciamento, monitoramento e redimensionamento de uma instância **Amazon EC2**.

A atividade é executada em um ambiente educacional temporário disponibilizado pela **Escola da Nuvem**, utilizando o Console de Gerenciamento da AWS.

---

## 1. Visão geral

O **Amazon Elastic Compute Cloud (Amazon EC2)** fornece capacidade computacional redimensionável na nuvem.

O serviço permite provisionar servidores virtuais em poucos minutos e ajustar a capacidade computacional conforme as necessidades do ambiente ou da aplicação.

Durante este laboratório serão exploradas operações relacionadas ao ciclo de vida de uma instância EC2, incluindo criação, configuração de segurança, monitoramento, acesso a uma aplicação web, redimensionamento e encerramento.

### Arquitetura conceitual

A arquitetura apresentada no material introdutório representa:

- uma instância Amazon EC2;
- execução dentro de uma Availability Zone;
- proteção de rede por meio de um Security Group;
- hospedagem de um servidor web.

O Security Group funciona como uma camada de controle de tráfego da instância, definindo quais conexões de entrada e saída são permitidas.

> Observação: o diagrama introdutório identifica o servidor como `IIS Web Server`. Entretanto, a execução prática deste laboratório utiliza **Amazon Linux 2023 com Apache HTTP Server**, conforme definido nas instruções da atividade.

### Duração estimada

A duração prevista do laboratório é de aproximadamente **45 minutos**.

---

## 2. Objetivos de aprendizagem

Ao final do laboratório, pretendo ser capaz de:

- iniciar um servidor web em uma instância EC2 com proteção contra encerramento;
- monitorar uma instância Amazon EC2;
- modificar um Security Group para permitir acesso HTTP;
- acessar uma aplicação web hospedada na instância;
- redimensionar uma instância EC2 conforme a necessidade;
- ampliar o armazenamento Amazon EBS;
- testar a proteção contra encerramento;
- encerrar corretamente a instância utilizada.

---

## 3. Tecnologias utilizadas

| Tecnologia | Utilização |
| --- | --- |
| Amazon EC2 | Provisionamento e gerenciamento da instância virtual |
| Amazon Linux 2023 | Sistema operacional da instância |
| Amazon VPC | Rede virtual utilizada pelo laboratório |
| Security Groups | Controle do tráfego de rede |
| Amazon EBS | Armazenamento em bloco da instância |
| Apache HTTP Server | Servidor web utilizado na atividade |
| Bash | Automação da configuração inicial |
| EC2 User Data | Execução automática do script de inicialização |
| Amazon CloudWatch | Monitoramento e métricas da instância |

---

## 4. Etapas do laboratório

A atividade é dividida em cinco tarefas principais.

### Tarefa 1 — Iniciar a instância EC2

- criar a instância `Web Server`;
- utilizar Amazon Linux 2023;
- selecionar inicialmente o tipo `t3.micro`;
- configurar rede e Security Group;
- utilizar volume Amazon EBS;
- habilitar proteção contra encerramento;
- executar o script de User Data;
- aguardar a aprovação das verificações de status.

### Tarefa 2 — Monitorar a instância

- analisar as verificações de status;
- consultar métricas de monitoramento;
- explorar recursos de diagnóstico da instância.

### Tarefa 3 — Atualizar o Security Group

- testar inicialmente o acesso ao servidor web;
- identificar o bloqueio da porta HTTP;
- adicionar uma regra de entrada para a porta 80;
- validar o funcionamento da página web.

### Tarefa 4 — Redimensionar a instância

- interromper a instância;
- alterar o tipo de `t3.micro` para `t3.small`;
- aumentar o volume EBS de `8 GiB` para `10 GiB`;
- iniciar novamente a instância.

### Tarefa 5 — Testar a proteção contra encerramento

- tentar encerrar a instância com a proteção habilitada;
- validar o bloqueio do encerramento;
- desabilitar a proteção;
- encerrar corretamente a instância.

---

## 5. Configuração planejada

| Configuração | Valor |
| --- | --- |
| Nome da instância | `Web Server` |
| AMI | Amazon Linux 2023 |
| Tipo inicial | `t3.micro` |
| Tipo após redimensionamento | `t3.small` |
| Par de chaves | Não utilizado |
| VPC | Lab VPC fornecida pelo ambiente |
| Security Group | `Web Server security group` |
| Volume inicial | `8 GiB` |
| Volume final | `10 GiB` |
| Proteção contra encerramento | Habilitada inicialmente |
| Servidor web | Apache HTTP Server |
| Automação | EC2 User Data |

---

## 6. Automação com EC2 User Data

O script armazenado em `scripts/user-data.sh` será utilizado durante a criação da instância.

Ele será responsável por:

- instalar o Apache HTTP Server;
- habilitar o serviço durante a inicialização;
- iniciar o servidor web;
- criar uma página HTML de teste.

```bash
#!/bin/bash

yum -y install httpd
systemctl enable httpd
systemctl start httpd

echo '<html><h1>Hello From Your Web Server!</h1></html>' > /var/www/html/index.html
```

---

## 7. Evidências

As capturas de tela serão registradas durante a execução e organizadas de acordo com cada tarefa.

| Diretório | Conteúdo |
| --- | --- |
| `evidencias/tarefa-01/` | Criação e configuração inicial da instância |
| `evidencias/tarefa-02/` | Monitoramento e verificações de status |
| `evidencias/tarefa-03/` | Security Group e acesso HTTP |
| `evidencias/tarefa-04/` | Redimensionamento da EC2 e do EBS |
| `evidencias/tarefa-05/` | Proteção contra encerramento e finalização |
| `evidencias/custos/` | Evidências relacionadas à análise de custos |

Antes da publicação, as imagens serão revisadas para evitar a exposição de informações sensíveis.

---

## 8. Controle de custos

O Amazon EC2 utiliza um modelo em que o consumo de recursos influencia diretamente o custo do ambiente.

Embora este laboratório seja executado em um ambiente educacional temporário, também serão analisados os principais componentes que poderiam gerar custos em uma conta AWS real.

[Acessar o controle de custos do laboratório](./docs/controle-de-custos.md)

---

## 9. Estrutura do laboratório

```text
EC2/
|-- README.md
|-- docs/
|   `-- controle-de-custos.md
|-- evidencias/
|   |-- custos/
|   |-- tarefa-01/
|   |-- tarefa-02/
|   |-- tarefa-03/
|   |-- tarefa-04/
|   `-- tarefa-05/
`-- scripts/
    `-- user-data.sh
```

---

## 10. Segurança e boas práticas

Durante a documentação do laboratório serão observadas práticas como:

- não publicar credenciais;
- não armazenar Access Keys ou Secret Access Keys;
- revisar identificadores presentes nas capturas de tela;
- utilizar Security Groups para controlar o tráfego;
- remover recursos temporários ao final das atividades;
- registrar problemas e soluções encontrados durante a execução.

---

## 11. Status

Em andamento.

---

## 12. Conclusão

Esta seção será atualizada após a conclusão integral do laboratório, registrando os resultados, desafios encontrados e principais aprendizados.

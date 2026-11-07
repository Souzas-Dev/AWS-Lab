# Laboratório AWS — Amazon EC2

## 1. Apresentação

Neste laboratório, realizo o provisionamento e a administração básica de uma instância Amazon EC2.

A atividade é executada em um ambiente educacional temporário disponibilizado pela Escola da Nuvem, utilizando o Console de Gerenciamento da AWS.

O objetivo é compreender, na prática, conceitos relacionados a computação, rede, segurança, armazenamento, monitoramento e automação de inicialização.

## 2. Tecnologias utilizadas

- Amazon EC2
- Amazon Linux 2023
- Amazon VPC
- Amazon EBS
- Security Groups
- Apache HTTP Server
- Bash
- EC2 User Data
- Amazon CloudWatch

## 3. Objetivos do laboratório

Durante a atividade, serão realizadas as seguintes etapas:

- Criar uma instância Amazon EC2.
- Utilizar Amazon Linux 2023.
- Configurar rede e Security Group.
- Utilizar armazenamento Amazon EBS.
- Habilitar proteção contra encerramento.
- Automatizar a instalação do Apache com EC2 User Data.
- Monitorar a instância.
- Liberar acesso HTTP ao servidor web.
- Redimensionar a instância.
- Expandir o volume EBS.
- Testar a proteção contra encerramento.
- Encerrar os recursos utilizados.

## 4. Estrutura do laboratório

```text
EC2/
├── README.md
├── docs/
│   └── controle-de-custos.md
├── evidencias/
│   ├── custos/
│   ├── tarefa-01/
│   ├── tarefa-02/
│   ├── tarefa-03/
│   ├── tarefa-04/
│   └── tarefa-05/
└── scripts/
    └── user-data.sh
```

## 5. Automação com User Data

O script localizado em `scripts/user-data.sh` será utilizado durante a criação da instância.

Ele será responsável por:

- instalar o Apache HTTP Server;
- habilitar o serviço na inicialização;
- iniciar o servidor web;
- criar uma página HTML de teste.

## 6. Execução

A documentação será atualizada durante a execução do laboratório.

Cada etapa terá suas respectivas evidências armazenadas na pasta `evidencias`.

## 7. Controle de custos

Como a execução ocorre em um ambiente educacional temporário, os valores apresentados em `docs/controle-de-custos.md` serão utilizados como referência de aprendizado e estimativa de custos AWS.

## 8. Evidências

As capturas de tela serão organizadas de acordo com cada tarefa do laboratório.

Informações sensíveis, identificadores de conta, credenciais e outros dados privados não serão publicados.

## 9. Status

**Em andamento.**

## 10. Conclusão

Esta seção será preenchida após a conclusão integral do laboratório.

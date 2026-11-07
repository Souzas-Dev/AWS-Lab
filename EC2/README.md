# Laboratório AWS — Amazon EC2

![AWS EC2](https://img.shields.io/badge/AWS-Amazon_EC2-FF9900?logo=amazonwebservices&logoColor=white)
![Amazon Linux](https://img.shields.io/badge/Amazon_Linux-2023-232F3E?logo=linux&logoColor=white)
![Status](https://img.shields.io/badge/status-em%20andamento-yellow)

Laboratório prático dedicado ao provisionamento e à administração básica de uma instância **Amazon EC2**.

A atividade é executada em um ambiente educacional temporário disponibilizado pela **Escola da Nuvem**, utilizando o Console de Gerenciamento da AWS.

---

## 1. Objetivo

O objetivo deste laboratório é compreender, na prática, conceitos relacionados a:

- computação em nuvem;
- provisionamento de instâncias;
- redes;
- segurança;
- armazenamento;
- automação;
- monitoramento;
- controle de custos;
- gerenciamento do ciclo de vida de recursos.

---

## 2. Tecnologias utilizadas

| Tecnologia | Utilização |
| --- | --- |
| Amazon EC2 | Provisionamento da instância virtual |
| Amazon Linux 2023 | Sistema operacional da instância |
| Amazon VPC | Rede virtual utilizada pela instância |
| Security Groups | Controle de tráfego de rede |
| Amazon EBS | Armazenamento em bloco |
| Apache HTTP Server | Servidor web utilizado no laboratório |
| Bash | Automação da configuração inicial |
| EC2 User Data | Execução automática do script de inicialização |
| Amazon CloudWatch | Monitoramento da instância |

---

## 3. Etapas do laboratório

Durante a atividade serão realizadas as seguintes etapas:

1. Criar uma instância Amazon EC2.
2. Utilizar Amazon Linux 2023.
3. Configurar rede e Security Group.
4. Utilizar armazenamento Amazon EBS.
5. Habilitar proteção contra encerramento.
6. Automatizar a instalação do Apache com EC2 User Data.
7. Monitorar a instância.
8. Liberar acesso HTTP ao servidor web.
9. Redimensionar a instância.
10. Expandir o volume EBS.
11. Testar a proteção contra encerramento.
12. Encerrar os recursos utilizados.

---

## 4. Estrutura do laboratório

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

## 5. Automação com EC2 User Data

O script localizado em `scripts/user-data.sh` será utilizado durante a criação da instância.

O script executará automaticamente as seguintes ações:

- instalação do Apache HTTP Server;
- habilitação do serviço durante a inicialização;
- inicialização do servidor web;
- criação de uma página HTML de teste.

### Script

```bash
#!/bin/bash

yum -y install httpd
systemctl enable httpd
systemctl start httpd

echo '<html><h1>Hello From Your Web Server!</h1></html>' > /var/www/html/index.html
```

---

## 6. Evidências

As evidências serão registradas durante a execução do laboratório e organizadas por tarefa.

| Pasta | Conteúdo |
| --- | --- |
| `evidencias/tarefa-01/` | Criação e configuração inicial da instância |
| `evidencias/tarefa-02/` | Monitoramento da instância |
| `evidencias/tarefa-03/` | Security Group e acesso HTTP |
| `evidencias/tarefa-04/` | Redimensionamento da instância e do EBS |
| `evidencias/tarefa-05/` | Teste de proteção e encerramento |
| `evidencias/custos/` | Evidências relacionadas a custos |

Antes da publicação, as imagens serão revisadas para evitar exposição de:

- IDs de conta AWS;
- credenciais;
- tokens;
- informações pessoais;
- outros dados sensíveis.

---

## 7. Controle de custos

Mesmo sendo executado em um ambiente educacional temporário, o laboratório também documenta os principais recursos que poderiam gerar cobrança em uma conta AWS real.

A análise está disponível em:

[Controle de custos do laboratório](./docs/controle-de-custos.md)

---

## 8. Documentação durante a execução

Este documento será atualizado progressivamente durante o laboratório.

A documentação final incluirá:

- configurações utilizadas;
- evidências;
- resultados;
- problemas encontrados;
- soluções aplicadas;
- aprendizados;
- conclusão técnica.

---

## 9. Status

**Em andamento.**

---

## 10. Conclusão

Esta seção será preenchida após a conclusão integral do laboratório.


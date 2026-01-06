# AWS Automation Scripts ☁️

Este repositório contém scripts de automação para infraestrutura em nuvem (AWS), demonstrando habilidades em desenvolvimento de ferramentas para otimização de processos e gestão de dados.

## 🚀 O que este repositório contém?
- **Bash Script (`backup_s3.sh`)**: Automação voltada para ambientes Linux e instâncias de servidores em nuvem.
- **PowerShell Script (`Backup-S3-Windows.ps1`)**: Script focado em automação para sistemas Windows e integração corporativa.

## 🛠️ Tecnologias e Ferramentas
- **Linguagens:** Bash, PowerShell.
- **Cloud:** Amazon Web Services (AWS CLI).
- **Finalidade:** Backup automatizado, integridade de dados e infraestrutura como código.

---
*Desenvolvido por João Paulo Lomba | Cloud & Back-end Developer*
---

## 🧠 Decisões de Engenharia (Technical Decisions)

Neste projeto, priorizei a **eficiência operacional** e a **segurança**. Abaixo, explico o porquê das tecnologias escolhidas:

### 1. Por que PowerShell para Ambientes Windows?
Optei pelo **PowerShell (`.ps1`)** em vez de arquivos `.bat` comuns devido à sua integração profunda com o ecossistema .NET. Isso permite uma manipulação de objetos mais precisa e um gerenciamento de erros (Try/Catch) muito mais robusto, o que é crítico ao lidar com backups em nuvem para evitar corrupção de dados.

### 2. Por que Bash para Automação Cloud?
O **Bash** é a linguagem nativa de quase todos os ambientes de servidor Linux e containers Docker que processam IA. Utilizá-lo garante que o script seja leve, não dependa de instalações externas e tenha uma execução de baixíssima latência ao interagir com a AWS CLI.

### 3. Foco em Trust & Safety
A implementação do comando `aws sts get-caller-identity` não é apenas para teste; é uma camada de **segurança (Governance)**. Ela garante que o script só execute se houver uma identidade válida, prevenindo vazamentos de dados por execuções anônimas ou mal configuradas.

---
# 🚀 Otimizador Básico para Windows

Este projeto é um script em Batch (.bat) desenvolvido para realizar tarefas simples de limpeza e otimização do sistema Windows, ajudando a melhorar o desempenho geral do computador.
<br>
<br>

![Batch](https://img.shields.io/badge/Batch-Script-blue)
[![made-with-powershell](https://img.shields.io/badge/PowerShell-1f425f?logo=Powershell)](https://microsoft.com/PowerShell)

## ⚙️ Funcionalidades

### 1. Limpeza de arquivos temporários
- Remove arquivos da pasta temporária do usuário (%temp%)
- Limpa a pasta `C:\Windows\Temp`
- Limpa o cache do Windows Update

### 2. Otimizações do sistema
- Ativa o plano de energia **Alto Desempenho**
- Ajusta efeitos visuais para melhor performance

### 3. Modo completo
Executa:
- Limpeza de arquivos temporários
- Limpeza de cache do Windows Update
- Otimizações de desempenho

### 4. Sair
- Encerra o script

## 🚀 Como usar

1. Crie um arquivo com extensão `.bat`
2. Renomeie (ex: `otimizador.bat`)
3. Cole o código dentro do arquivo
4. Execute como **administrador**

## 📋 Requisitos

- Windows 10 ou superior
- Permissões de administrador

## ⚠️ Avisos

- Remove apenas arquivos temporários (não apaga arquivos pessoais)
- Pode reiniciar serviços do sistema temporariamente
- Use com cautela em ambientes corporativos

## 🛠️ Tecnologias utilizadas

- Batch Script (CMD)
- Comandos nativos do Windows:
  - `del`
  - `net stop/start`
  - `powercfg`
  - `reg add`

## 👨‍💻 Autora

**Dania Sadallah Kader**

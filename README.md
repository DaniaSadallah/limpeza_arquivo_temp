##🧹 Otimizador Básico para Windows

Este projeto é um script em Batch (.bat) desenvolvido para realizar tarefas simples de limpeza e otimização do sistema Windows, ajudando a melhorar o desempenho geral do computador.

⚙️ Funcionalidades

O script possui um menu interativo com as seguintes opções:

1. Limpeza de arquivos temporários
  - Remove arquivos da pasta temporária do usuário (%temp%);
  - Limpa a pasta temporária do sistema (C:\Windows\Temp);
  - Limpa o cache do Windows Update;
    
2. Otimizações do sistema
  - Ativa o plano de energia Alto Desempenho;
  - Ajusta efeitos visuais para melhor performance;

3. Modo completo, que vai realizar otimização do sistema e limpeza
  Executa:
   - Limpeza de arquivos temporários;
   - Limpeza de cache do Windows Update;
   - Otimizações de desempenho;
     
4. Sair
  - Encerra o script;
    
🚀 Como usar

1º passo: Crie um arquivo com extensão .bat, pode ser um arquivo do bloco de notas
2º passo: Renomeie esse arquivo.
    Exemplo: otimizador.bat
3º passo: Cole o código do script dentro do arquivo
4º passo: Clique com o botão direito no arquivo e selecione: Executar como administrador

⚠️ Importante: Algumas funções (como limpar pastas do sistema) exigem permissões de administrador.

📋 Requisitos

- Sistema operacional: Windows 10 ou superior
- Permissões de administrador
  
⚠️ Avisos

* O script remove arquivos temporários — não apaga arquivos pessoais
* Pode fechar ou reiniciar serviços do sistema temporariamente
* Use com cautela em ambientes corporativos

🛠️ Tecnologias utilizadas

- Batch Script (CMD);
- Comandos nativos do Windows:
  *del
  *net stop/start
  *powercfg
  *reg add

👨‍💻 Autor

Desenvolvido por Dania Sadallah Kader

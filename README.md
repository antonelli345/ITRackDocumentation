# Inspeção de Equipamentos de TI (Racks) - Automação de Estrutura de Pastas

## Introdução

Este repositório foi criado para automatizar o processo de inspeção de racks de TI na empresa onde trabalho. O objetivo é acelerar a criação de pastas e arquivos padronizados, que serão usados para armazenar fotos dos equipamentos e suas respectivas observações. As observações podem incluir melhorias, manutenções corretivas, preventivas, entre outros.

## Contexto de Uso

A rotina consiste em:

1. Criar uma pasta com o nome referente à data do dia da inspeção (formato `dd-MM-yy`).
2. Dentro dessa pasta, criar subpastas com o nome das localidades onde os racks estão localizados (as localidades são definidas no código).
3. Em cada subpasta de localidade, será criado um arquivo de texto chamado `Observacoes.txt` contendo uma mensagem padrão. Esse arquivo pode ser editado para adicionar informações específicas sobre o rack, como melhorias ou manutenções realizadas.

## Desenvolvimento

Os scripts foram desenvolvidos nas seguintes linguagens de programação:

- **Batch (.bat)**: O script original que já atende à rotina de criação de pastas e arquivos.
- **PowerShell (.ps1)**: Desenvolvido como uma alternativa e para praticar a linguagem PowerShell.
- **Python (.py)**: Também uma alternativa, visando praticar a linguagem Python e suas bibliotecas para manipulação de arquivos e diretórios.

Os códigos em Python e PowerShell são sugestões de estudos e servem para a prática de novas linguagens de script.

## Estrutura de Pastas

A estrutura criada pelos scripts é a seguinte:

```
dd-MM-yy/
├── Local_do_Rack_1/
│   ├── fotos.jpeg
│   └── Observacoes.txt
├── Local_do_Rack_2/
│   ├── fotos.jpeg
│   └── Observacoes.txt
└── ...
```

- `dd-MM-yy`: Nome da pasta com a data da inspeção.
- `Local_do_Rack`: Subpastas com o nome da localidade onde o rack está instalado.
- `fotos.jpeg`: Fotos do rack, colocadas manualmente após a execução do script.
- `Observacoes.txt`: Arquivo de texto com uma mensagem padrão que pode ser editada conforme necessário.

## Como Usar

### Executando os Scripts

- **Batch (.bat)**: Para rodar o script em `.bat`, basta clicar no arquivo `script.bat` ou executá-lo diretamente no prompt de comando.
- **PowerShell (.ps1)**: Execute o script com o PowerShell. Caso seja a primeira vez que você esteja executando scripts no PowerShell, você pode precisar alterar a política de execução. Execute o seguinte comando no PowerShell para permitir scripts locais:
  
  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

Após isso, execute o script com o comando:
```
.\script.ps1
```

Python (.py): Execute o script em Python com o seguinte comando:
```
python script.py
```

### Dependências
Para rodar os scripts Python, você precisará ter o Python instalado na sua máquina. Não há dependências externas além da biblioteca padrão.
Exemplo de Execução
Após rodar o script, você verá a criação de pastas com o nome da data e subpastas com os locais de racks. O arquivo Observacoes.txt será criado dentro de cada subpasta. Insira as fotos manualmente nas pastas correspondentes.

### Como Contribuir
Se você tiver sugestões de melhorias ou correções, sinta-se à vontade para abrir uma Issue ou enviar um Pull Request.

1. Faça um fork deste repositório.
2. Crie uma branch para a sua melhoria (git checkout -b minha-melhoria).
3. Faça suas alterações e envie um commit (git commit -am 'Adiciona melhoria X').
4. Envie a branch para o seu fork (git push origin minha-melhoria).
5. Abra um Pull Request para este repositório.


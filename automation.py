import os
from datetime import date
### Define a data de hoje no formato desejado e cria o caminho da pasta
dateToday = date.strftime(date.today(), '%d-%m-%y')
__path__ = f'./{dateToday}'
### Cria a pasta da data atual se ela ainda não existir
os.makedirs(__path__, exist_ok=True)
### Altera o diretório para a pasta da data atual
os.chdir(__path__)
### Lista com os nomes das subpastas a serem criadas
listLocale = ['Local_do_Rack_1', 'Local_do_Rack_2']
### Mensagem predefinida para o arquivo de texto
mensagem = '1. Situação geral do rack, funcionando corretamente;'
#### Cria cada subpasta e o arquivo "observacoes.txt" dentro dela
for locale in listLocale:
    ### Define o caminho da subpasta e a cria se ela ainda não existir
    subfolder_path = f'./{locale}'
    os.makedirs(subfolder_path, exist_ok=True)
    ### Define o caminho completo do arquivo de texto e grava a mensagem
    file_path = f'{subfolder_path}/observacoes.txt'
    with open(file_path, 'w') as file:
        file.write(mensagem)

    
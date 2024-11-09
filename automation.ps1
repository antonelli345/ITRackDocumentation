#Armazena em uma variável a data atual no formato dd-mm-yy
$dataAtual = Get-Date -Format "dd-MM-yy"
#Cria um diretório com o nome da data atual
if(!(Test-Path .\$dataAtual)) {
    mkdir .\$dataAtual
}

#Armazena em uma variável os locais que serão criados
$localRack  = "Local_do_Rack_1, Local_do_Rack_2"

#Separa os locais em um array
$localidade = $localRack.Split(",")

#Percorre o array de locais e cria um diretório para cada local com um arquivo de texto
foreach ($local in $localidade) {
    $local
    # Verifica se o diretório já existe, caso não exista, cria um diretório
    if(!(Test-Path .\$dataAtual\$local)) {
        mkdir .\$dataAtual\$local
    }
    # Verifica se o arquivo de texto já existe, caso não exista, cria um arquivo de texto com um conteúdo padrão
    if(!(Test-Path .\$dataAtual\$local/Observacoes.txt)) {
        $conteudo = "1. Situação geral do rack, funcionando corretamente;"
        [System.IO.File]::WriteAllText(".\$dataAtual\$local/Observacoes.txt", $conteudo,[System.Text.Encoding]::GetEncoding("iso-8859-1"))
    }
}
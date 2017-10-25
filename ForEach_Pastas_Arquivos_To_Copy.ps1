# For Each na Pasta 2016 na Rede, lendo as Sub Pastas e Copiando os arquivos para outra pasta

# Comentado:

# Declarando os Diretórios Envolvidos

$root = "\\dbl017aw.intelig23\Data\CSO\Diretoria de Contact Center e Vendas\Gestão de Back-office\22. STO Intelig\Relatórios Operacionais\Clarify\2017"

$folderToPaste = "C:\Users\F8060216\Documents\03_Projetos\Operação BOC\RELATÓRIO_PRODUTIVIDADE_CONSOLIDADO\ARQUIVOS_FECHAMENTO\2017"

# Percorrer as Sub Pastas Dentro de Clarify\2016
foreach ($folder in get-ChildItem $root)
{
    # Se o Item é uma pasta então percorrer seus itens para pegar os arquivos
    if( (Get-Item $folder).Attributes -match 'Directory' ) {
        # Percorrer os itens dentro da pasta e copiar para o destino
        foreach ($file in get-ChildItem $folder.fullname) {
            copy-Item $file.fullname -destination $folderToPaste
        }
    }
}

# Sem Espaços para Execução:

$root = "\\dbl017aw.intelig23\Data\CSO\Diretoria de Contact Center e Vendas\Gestão de Back-office\22. STO Intelig\Relatórios Operacionais\Clarify\2017"

$folderToPaste = "C:\Users\F8060216\Documents\03_Projetos\Operação BOC\RELATÓRIO_PRODUTIVIDADE_CONSOLIDADO\ARQUIVOS_FECHAMENTO\TESTE"

foreach ($folder in get-ChildItem $root) {
     if( (Get-Item $folder.fullname).Attributes -match 'Directory' ) {
        foreach ($file in get-ChildItem $folder.fullname) {
            copy-Item $file.fullname -destination $folderToPaste
        }
    }
}

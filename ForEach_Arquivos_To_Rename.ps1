
# Trocando todos os arquivos com o nome começando por "LOG*" para "TB*"

$root = "T:\Bases_Scripts\Maio"
foreach ( $files in get-ChildItem $root) {
    if( (get-item $files.fullname).attributes -match "Archive" -Or (get-item $files.fullname).attributes -match "Normal") {
        if( $files.name -like "LOG*") {
            rename-item -path $files.fullname -newname ($files.name -replace "LOG", "TB")
        }
    }
}

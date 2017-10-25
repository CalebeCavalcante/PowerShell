# Variáveis
$localizacao_e_nome_da_pasta_metodo_1 = "$Env:USERPROFILE\desktop\Método_1"
$localizacao_e_nome_da_pasta_metodo_2 = "$Env:USERPROFILE\desktop\Método_2"
$localizacao_e_nome_da_pasta_metodo_3 = "$Env:USERPROFILE\desktop\Método_3"
$localizacao_e_nome_da_pasta_metodo_4 = "$Env:USERPROFILE\desktop\Método_4"

# Método 1 - Usando método New-Item do PowerShell
New-Item -ItemType directory -Path $localizacao_e_nome_da_pasta_metodo_1

# Método 2 - Usando .NET Framework
[system.io.directory]::CreateDirectory("$localizacao_e_nome_da_pasta_metodo_2")

# Método 3 - Usando método Scripting.FileSystemObject
$a = New-Object -ComObject scripting.filesystemobject
$a.CreateFolder("$localizacao_e_nome_da_pasta_metodo_3")

# Método 4 - Usando método Linha de Comandos
md $localizacao_e_nome_da_pasta_metodo_4

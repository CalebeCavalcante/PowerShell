$root = "\\rede\Listas_Externas_Ind\RETORNOS_CAMPANHAS"

$zip="& 'C:\Program Files\7-Zip\7z.exe' "

$folderToPaste = "C:\Users\matricula\Documents\Retornos_SMS"

foreach ($folder in get-ChildItem $root) {
     # Somente pastas de outubro/19 - Padrao das pastas é yyyymmdd (20191001)
     if( (Get-Item $folder.fullname).Attributes -match 'Directory' -and $folder.fullname -match '201910' ) {
        foreach ($file in get-ChildItem $folder.fullname) {
            $cmd = $zip + " e " + $file.fullname + " -o" + $folderToPaste
	        iex $cmd
        }
    }
}

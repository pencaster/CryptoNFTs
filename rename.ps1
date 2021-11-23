$files = Get-ChildItem -Path C:\GitHub\CryptoNFTs.APP\assets11_20 
ForEach ($file in $files)
{
$idxFile = $file.Basename-11
$newFileName = $idxFile.ToString()+$file.Extension
Rename-Item -Path $file.FullName -NewName $newFileName
}
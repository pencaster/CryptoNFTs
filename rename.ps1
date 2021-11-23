$files = Get-ChildItem -Path C:\GitHub\CryptoNFTs.APP\assets_0_10 
ForEach ($file in $files)
{
$idxFile = [int]$file.Basename +1
$newFileName = $idxFile.ToString()+$file.Extension
Rename-Item -Path $file.FullName -NewName $newFileName
}
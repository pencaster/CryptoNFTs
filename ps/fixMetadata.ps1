$i = 0
$numberIterations=100
$assetOffset=78
$path="C:\GitHub\CryptoNFTs.APP\78_178\"
$fpath="C:\GitHub\CryptoNFTs.APP\78_178f\"
 do{
    $fname=$path+$i+".json"
    $ffname=$fpath+$i+".json"
    $a = Get-Content $fname -raw | ConvertFrom-Json
    $assetNo = $i+$assetOffset
    $name="DotVar1-V1 #"+$assetNo
    $a.name=$name
    $a.update 
    $a | ConvertTo-Json -depth 32| set-content $ffname
    $i=$i+1
 }
    while ($i -le $numberIterations)
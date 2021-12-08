$i = 12
$numberIterations=77
$assetOffset=9
$path="C:\GitHub\CryptoNFTs.APP\10_77\"
$fpath="C:\GitHub\CryptoNFTs.APP\10_77f\"
 do{
    $fname=$path+$i+".json"
    $ffname=$fpath+$i+".json"
    $a = Get-Content $fname -raw | ConvertFrom-Json
    $assetNo = $i+$assetOffset
    $name="DotVar1-V1 #"+$assetNo
    $description = "Algorithm Generated Unique Variations Graphics where dots and circles constructed fluid structures connect and meet one another. #" + $assetNo +  " of 1965"
    $a.name=$name
    $a.description = $description 
    $a.update 
    $a | ConvertTo-Json -depth 32| set-content $ffname
    $i=$i+1
 }
    while ($i -le $numberIterations)
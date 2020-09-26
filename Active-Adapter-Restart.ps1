$t = Get-NetAdapter | Out-String
$p = $t.Split("`r`n")
$len = $p.Count
For ($i=0; $i-le $len; $i++) {
    if ($p[$i] -Match "Up") {
        $q = $p[$i].Split(" ")
    }
}
Restart-NetAdapter -Name $q[0]

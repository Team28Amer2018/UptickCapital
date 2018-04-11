node {
    def msg = powershell(returnStdout: true, script: '$a = Get-ChildItem;$a = $a | Out-String;Write-Output "$a"')
    println msg
}

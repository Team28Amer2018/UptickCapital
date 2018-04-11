node {
    def stdout = powershell(returnStdout: true, script: '''
      $a = Get-ChildItem; $a | Out-String
    ''')
    println stdout
}

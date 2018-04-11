node {
    def msg = powershell(returnStdout: true, script:'''
      $a = Get-Date -Uformat %H%M%S
      $null > "c:/jenkins_test_files/$a.txt"
    ''')
    println msg
}

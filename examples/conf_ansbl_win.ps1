 $Servers = Get-Content "C:\temp\hosts.txt"
foreach($Server in $Servers){
    Invoke-Command -ComputerName $Server -ScriptBlock { 
    
    Invoke-WebRequest -Uri https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1 -OutFile ConfigureRemotingForAnsible.ps1
    powershell -ExecutionPolicy RemoteSigned .\ConfigureRemotingForAnsible.ps1 -Verbose -EnableCredSSP
    
    }
} 

$password = ConvertTo-SecureString 'view' -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ('viewer', $password)
Invoke-WebRequest "http://192.168.1.66/axis-cgi/param.cgi?action=list&group=Brand" -Credential $credential
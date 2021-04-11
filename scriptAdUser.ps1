for ($i;$i -le 30; $i++){
    $name=("it_" + "$i");
    $pass=($i + "_ti");
    New-ADUser -Name $name -Path "OU=it,DC=Kazan,DC=wsr" -AccountPassword (ConvertTo-SecureString($pass) -AsPlainText -Force) -Enabled $true -CannotChangePassword $true
    Add-ADGroupMember -Identity "it" -Members $name
}

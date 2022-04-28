$server = "mpo-atu-support.database.windows.net"
$database = "mpo_leads"
$user = 'ddesonier@desonier.onmicrosoft.com'
$pass = 'password'


$csvPath = "C:\Users\ddesonier\OneDrive - Microsoft\Documents\Projects\ATU Support\Lead Traige\Leads.csv"
$csvDelimiter = ","
$serverName = "mpo-atu-support.database.windows.net"
$databaseName = "mpo_leads"
$tableSchema = "dbo"
$tableName = "leads"

$conn = New-Object System.Data.SqlClient.SqlConnection("Server=tcp:$server,1433;Initial Catalog=$database;`
Persist Security Info=False;Authentication='Active Directory Password';User ID=$user;Password=$cred.Password;MultipleActiveResultSets=False;`
Encrypt=False;TrustServerCertificate=True;Connection Timeout=10;")

$conn = New-Object System.Data.SqlClient.SqlConnection("Server=tcp:$server,1433;Initial Catalog=$database;`
Persist Security Info=False;Authentication='Active Directory Password';User ID=$user;Password=$cred.Password;MultipleActiveResultSets=False;`
Encrypt=False;TrustServerCertificate=True;Connection Timeout=10;")

$conn.Open()

$cmd = New-Object System.Data.SqlClient.SqlCommand("SELECT * FROM sys.databases", $conn)

$dataset = New-Object System.Data.DataSet
$dataadapter = New-Object System.Data.SqlClient.SqlDataAdapter($cmd)

[void]$dataadapter.fill($dataset)

Write-Output $dataset.Tables | Format-Table

$conn.Close()
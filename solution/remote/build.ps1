# Change the working directory to your project folder
Set-Location -Path "C:\Users\Administrator\eShopOnWeb\src\Web"

dotnet dev-certs https
dotnet build
$env:UseOnlyInMemoryDatabase = "true"
Start-Process -FilePath "dotnet" -WorkingDirectory "C:\Users\Administrator\eShopOnWeb\src\Web" -ArgumentList "run --launch-profile Web" 
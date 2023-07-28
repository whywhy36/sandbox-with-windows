# Change the working directory to your project folder
Set-Location -Path "C:\Users\Administrator\eShopOnWeb\src\Web"

dotnet dev-certs https
dotnet dev-certs https --trust
dotnet build

Start-Process -FilePath "dotnet" -ArgumentList "run --launch-profile Web"
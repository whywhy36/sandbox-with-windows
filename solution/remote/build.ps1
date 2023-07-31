# Change the working directory to your project folder
Set-Location -Path "C:\Users\Administrator\eShopOnWeb\src\Web"
dotnet build

dotnet dev-certs https -v --ep "C:\Users\Administrator\dev-certs.pfx" --no-password
dotnet dev-certs https -v --import "C:\Users\Administrator\dev-certs.pfx"
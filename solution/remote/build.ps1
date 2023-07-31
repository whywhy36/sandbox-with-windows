# Change the working directory to your project folder
Set-Location -Path "C:\Users\Administrator\eShopOnWeb\src\Web"
dotnet build

dotnet dev-certs https -ep "C:\Users\Administrator\dev-certs.pfx" -p 1234qwer
dotnet dev-certs https --clean --import "C:\Users\Administrator\dev-certs.pfx" -p 1234qwer
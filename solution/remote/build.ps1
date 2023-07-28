# Change the working directory to your project folder
Set-Location -Path "C:\Users\Administrator\eShopOnWeb\src\Web"

dotnet dev-certs https
dotnet dev-certs https --trust
dotnet build

Start-Job -ScriptBlock{dotnet run --launch-profile Web --urls "http://0.0.0.0:5000;https://0.0.0.0:5001"}
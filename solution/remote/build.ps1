# Change the working directory to your project folder
Set-Location -Path "C:\Users\Administrator\eShopOnWeb\src\Web"

# Run the 'dotnet build' command
dotnet build

Start-Job -ScriptBlock{dotnet run}
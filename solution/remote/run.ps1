$env:UseOnlyInMemoryDatabase = "true"
dotnet dev-certs https
Start-Process -FilePath "dotnet" -WorkingDirectory "C:\Users\Administrator\eShopOnWeb\src\Web" -ArgumentList "run --launch-profile Web" 
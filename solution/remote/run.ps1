$env:UseOnlyInMemoryDatabase = "true"
Start-Process -FilePath "dotnet" -WorkingDirectory "C:\Users\Administrator\eShopOnWeb\src\Web" -ArgumentList "run --launch-profile Web" 
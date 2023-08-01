# Extract the published app to the webroot
Expand-Archive -Path .\publishedapp.zip -Destination .
Copy-Item -Path ".\publishedapp\**" -Destination "C:\inetpub\wwwroot" -Recurse -Force
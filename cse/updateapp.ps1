# Stop website so health probe stops sending traffic here
iisreset /stop

# Extract the published app to the webroot
Expand-Archive -Path .\publishedapp.zip -Destination .
Copy-Item -Path ".\publishedapp\**" -Destination "C:\inetpub\wwwroot" -Recurse -Force

# Enable website again
iisreset /start

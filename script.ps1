# Replace all Artifact Registry image paths with GCR
Get-ChildItem -Recurse -Include *.yml,*.yaml | ForEach-Object {
  (Get-Content $_.FullName) `
    -replace 'gcr.io/google-samples/microservices-demo',
             'docker.io/GoogleCloudPlatform/microservices-demo' |
    Set-Content $_.FullName
}
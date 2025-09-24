Get-ChildItem -Recurse -Include *.yml,*.yaml | ForEach-Object {
  (Get-Content $_.FullName) `
    -replace 'us-central1-docker\.pkg\.dev/google-samples/microservices-demo','gcr.io/google-samples/microservices-demo' |
    Set-Content $_.FullName
}

# ftp-action

Automate copying your files via FTP using this GitHub action.

## Example usage

```
name: Upload via FTP
on: push
jobs:
  FTP-Action:
    name: FTP-Action
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Deploy FTP
      uses: sebastianpopp/ftp-action@master
      with:
        host: "ftp.example.com"
        user: ${{ secrets.FTP_USERNAME }}
        password: ${{ secrets.FTP_PASSWORD }}
        localDir: "dist"
        remoteDir: "www"
```

## Input parameters

Input parameter | Description | Required | Default
--- | --- | --- | ---
host | FTP server name | Yes | N/A
user | FTP username | Yes | N/A
password | FTP password | Yes | N/A
localDir | The local directory to copy | No | .
remoteDir | The remote directory to copy to | No | .

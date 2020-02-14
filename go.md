Install GO

- First remove apt installed go : `$ sudo apt-get remove go`
- Download the tar file for linux from the site https://golang.org/dl/
- Execute the command `$ sudo tar -C /usr/local -xzf filename`
- In the file ~/.zshrc add the following lines:
```shell
export GOROOT="/usr/local/go"
export GOBIN="$HOME/go/bin"
mkdir -p $GOBIN
export PATH=$PATH:$GOROOT/bin:$GOBIN
```

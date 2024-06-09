# golang

init

```bash
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct

go mod init zhaopan/x/golang
go mod tidy
go build .
go run .
```

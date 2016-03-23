
#!/bin/bash
#mkdir go
#export GOPATH="/go"
#export PATH=$PATH:$GOPATH/bin

cd x86_64Linux2
./autogrid4

cd ..

#go get -u github.com/ddollar/forego
foreman check
foreman start

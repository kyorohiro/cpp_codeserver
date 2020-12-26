# code-server for cpp



# Memo
you must to use 0.29.0 at ms-vscode   
or install from a visx file ( https://github.com/microsoft/vscode-cpptools/releases/tag/1.1.0 )

because current code-server has bug(?). https://github.com/cdr/code-server/issues/2305



# Start code-server

```
docker-compose build
docker-compose up -d
```

and open http://127.0.0.1:8443/ at your browser
* 127.0.0.1 is your docker ip


# BUILD SIMPLE CLIENT

```
g++ main.cpp 
./a.out
```

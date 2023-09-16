# Mojo🔥 Docker

## Requirements

* [Docker](https://www.docker.com/products/docker-desktop/) (Recommend to set the memory to above 8GB)
* x86_64 CPU machine（Not impossible on ARM CPU with emulation, but it takes quite a long long time to build）


## Build a docker image

1. Visit https://www.modular.com/mojo and sign up
2. Visit https://developer.modular.com/download and check `MODULAR_AUTH`
3. `cp default.env .env`
4. Write `MODULAR_AUTH` into `.env`
5. `make build` (Expected to take more than 5 minutes...)


## Run a container

```sh
make run
```

Then, you can run `mojo` 🔥  
https://docs.modular.com/mojo/manual/get-started/hello-world.html#run-code-in-the-repl

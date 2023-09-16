# Mojo🔥 Docker

## Requirements

* [Docker](https://www.docker.com/products/docker-desktop/) (Recommend to set the memory to above 8GB)
* x86_64 CPU machine (Not ARM CPU)


## Build a docker image

1. Visit https://www.modular.com/mojo and sign up
2. Visit https://developer.modular.com/download and check `MODULAR_AUTH`
3. `cp default.env .env`
4. Write `MODULAR_AUTH` into `.env`
5. `make build`


## Run a container

```sh
make run
```

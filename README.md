# julia-ml-demo

 Simple julia ml project hostet on JuliaHub

## JuliaHub

 Setup for windows:
 ```powershell
 pyenv install 3.10.8
 pyenv local 3.10.8
 python_path = pyenv which python
 python_path -m venv .venv
.venv/Scripts/activate

poetry add julia

```

## Docker

```shell
docker build -t my-julia-app .
docker run -it --rm my-julia-app
```

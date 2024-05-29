FROM julia:1.11.0-beta1-bookworm

# Set the working directory
WORKDIR /app

COPY . /app

# Install any Julia packages specified in Project.toml
RUN julia -e 'using Pkg; Pkg.instantiate(); Pkg.precompile()'

CMD ["julia", "bin/main.jl"]
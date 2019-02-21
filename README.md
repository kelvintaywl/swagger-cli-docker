# Swagger-Cli Docker Image

This is just a simple setup to containerize the [Swagger cli tool](https://github.com/APIDevTools/swagger-cli).

See Dockerfile for more details.

This uses Yarn for dependency managment.

## Usage

```sh
docker pull kelvintaywl/swagger-cli
```

```sh
docker run -v /local/path/to/folderWhereMyYamlFileExists:/spec kelvintaywl/swagger-cli validate /spec/myOpenAPI.yaml
```

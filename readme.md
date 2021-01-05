# go-dev-env

Sets up VSCode-based Go Development Environment inside an Ubuntu Container.

## Setup

- Clone this project, build docker image and spawn a new container.

    ```sh
    git clone https://github.com/ashutshkumr/go-dev-env.git && cd go-dev-env
    docker build -t go-dev-env . && docker run -td go-dev-env
    ```

- Attach to newly spawned container from VSCode and change current directory to `/home/app`.

- Install recommended extensions (when prompted).


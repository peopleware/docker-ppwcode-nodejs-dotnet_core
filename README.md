# Docker Image with Nodejs and Microsoft dotnet Core

## Build

Combine Node and dotnet version number in tag, separated by `-`.

    > docker build -t nodejs-dotnet_core:8.11.3-2.1.301 .
    Sending build context to Docker daemon  153.6kB
    Step 1/11 : FROM buildpack-deps:stretch
    […] 
    Successfully built effb42b31392
    Successfully tagged nodejs-dotnet_core:8.11.3-2.1.301
    
## Run
    
    > docker run nodejs-dotnet_core:8.11.3-2.1.301
    git: git version 2.11.0
    node: v8.11.3
    npm: 5.6.0
    npx: 9.7.1
    dotnet: 2.1.301

## Publish

    > docker login
    Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
    Username (jandockx): jandppw
    Password: 
    Login Succeeded

    > docker image ls 
    REPOSITORY                   TAG                   IMAGE ID            CREATED             SIZE
    […]
    nodejs-dotnet_core           8.11.3-2.1.301        effb42b31392        24 minutes ago      2.31GB
    […]

    > docker tag nodejs-dotnet_core:8.11.3-2.1.301 ppwcode/nodejs-dotnet_core:8.11.3-2.1.301

    > docker image ls 
    REPOSITORY                   TAG                   IMAGE ID            CREATED             SIZE
    […]
    nodejs-dotnet_core           8.11.3-2.1.301        effb42b31392        24 minutes ago      2.31GB
    […]
    ppwcode/nodejs-dotnet_core   8.11.3-2.1.301        effb42b31392        24 minutes ago      2.31GB
    […]

    > docker push ppwcode/nodejs-dotnet_core:8.11.3-2.1.301
    The push refers to repository [docker.io/ppwcode/nodejs-dotnet_core]
    448fdd6e87fc: Pushed 
    ba61c2e949bd: Pushed 
    1b2dbe678688: Pushed 
    213f7c73cb19: Pushed 
    6d1ca4f7f1e3: Pushed 
    7ec3f0d42235: Pushed 
    9df2ff4714f2: Mounted from library/buildpack-deps 
    c30dae2762bd: Mounted from library/buildpack-deps 
    43701cc70351: Mounted from library/buildpack-deps 
    e14378b596fb: Mounted from library/buildpack-deps 
    a2e66f6c6f5f: Mounted from library/buildpack-deps 
    8.11.3-2.1.301: digest: sha256:1978d5042212aae1b8f577e73e8a8868999df1daf3250e1dfb29824166f2b7d8 size: 2643

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

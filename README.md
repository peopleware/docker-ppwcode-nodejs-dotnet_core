# Docker Image with Nodejs and Microsoft dotnet Core

## Build

    > docker build -t nodejs-dotnet_core:dev .
    Sending build context to Docker daemon  77.31kB
    Step 1/2 : FROM node:8.11.3
     ---> ba6ed54a3479
    Step 2/2 : CMD echo git: `git --version`; echo node: `node --version`; echo npm `npm --version`; echo npx `npx --version`
     ---> Running in ac71d9701049
    Removing intermediate container ac71d9701049
     ---> eba0db5234db
    Successfully built eba0db5234db
    Successfully tagged nodejs-dotnet_core:dev
    
## Run
    
    > docker run nodejs-dotnet_core:dev
    git: git version 2.1.4
    node: v8.11.3
    npm 5.6.0
    npx 9.7.1


FROM microsoft/dotnet:2.1.301-sdk-stretch

CMD echo git: `git --version`; echo node: `node --version`; echo npm `npm --version`; echo npx `npx --version`; echo dotnet: `dotnet --version`

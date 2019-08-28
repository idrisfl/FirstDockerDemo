FROM microsoft/dotnet:2.1-aspnetcore-runtime

ENTRYPOINT [ "dotnet","dockerProj.dll" ]
ARG source=.
WORKDIR /app
COPY $source .

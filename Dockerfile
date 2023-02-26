FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /App
COPY publish .
ENTRYPOINT ["dotnet", "HelloWorld.dll"]
ENV ASPNETCORE_ENVIRONMENT=Development
ENV ASPNETCORE_URLS=http://0.0.0.0:5000
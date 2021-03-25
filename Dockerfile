#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat 

FROM mcr.microsoft.com/dotnet/framework/aspnet:4.7.2
WORKDIR /inetpub/wwwroot
COPY . .
ENTRYPOINT ["dotnet" ,"eShopLegacyMVC.dll"]


# FROM microsoft/dotnet-framework:4.7.2-sdk AS build
# WORKDIR /app

# # copy csproj and restore as distinct layers
# COPY *.sln .
# COPY aspnetapp/*.csproj ./aspnetapp/
# COPY aspnetapp/*.config ./aspnetapp/
# RUN nuget restore

# # copy everything else and build app
# COPY aspnetapp/. ./aspnetapp/
# WORKDIR /app/aspnetapp
# RUN msbuild /p:Configuration=Release


# # copy build artifacts into runtime image
# FROM microsoft/aspnet:4.7.2 AS runtime
# WORKDIR /inetpub/wwwroot
# COPY --from=build /app/aspnetapp/. ./
#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM golang:1.15 as builder
ARG CGO_ENABLED=0
WORKDIR /app

# ENV ASPNETCORE_ENVIRONMENT=Development

# FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
# ARG BUILD_CONFIGURATION=Release
# WORKDIR /src
# COPY ["Restaurant.RestApi.csproj", "."]
# RUN dotnet restore "./Restaurant.RestApi.csproj"
# COPY . .
# WORKDIR "/src/."
# RUN dotnet build "Restaurant.RestApi.csproj" -c $BUILD_CONFIGURATION -o /app/build

# FROM build AS publish
# RUN dotnet publish "Restaurant.RestApi.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

# FROM base AS final
# WORKDIR /app
# COPY --from=publish /app/publish .
# ENTRYPOINT ["dotnet", "Restaurant.RestApi.dll"]
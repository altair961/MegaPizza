FROM golang:alpine AS builder

# Set destination in the image for COPY
WORKDIR /build

# Copying from current folder to destination in image
COPY go.mod main.go ./

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
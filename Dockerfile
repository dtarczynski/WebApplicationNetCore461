FROM microsoft/dotnet-framework:4.7.2-runtime AS runtime
WORKDIR /app

EXPOSE 80
EXPOSE 5000

COPY publish .
ENTRYPOINT ["WebApplicationNetCore461.exe"]

# To publish and run published binaries from docker do as folow:
# dotnet publish -c Release -o publish
# docker build -t webapplication2 .
# docker run -it --rm -p 8080:80 webapplication2
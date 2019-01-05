# WebApplicationNetCore461
.NET Core Web Application targeted .NET Framework 4.6.1 that runs on Docker

- Runs as executable (not dll).

This is .NET Core appliation that is intended to run on Docker.
To do so:

1. Publish application binaries manualy:
`dotnet publish -c Release -o publish`

2. `docker build -t webapplicationnetcore461 .`

3. `docker run -it --rm -p 5000:5000 webapplicationnetcore461`

Open http://localhost:5000

Note: 
I added:
`.UseUrls("http://+:5000/");`

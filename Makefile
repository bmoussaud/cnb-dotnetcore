build:
	pack build dotnet-aspnet-sample --buildpack gcr.io/paketo-buildpacks/dotnet-core

run:
	docker run --interactive --tty --env PORT=8080 --publish 9999:8080 dotnet-aspnet-sample

access:
	curl http://localhost:9999/index.html

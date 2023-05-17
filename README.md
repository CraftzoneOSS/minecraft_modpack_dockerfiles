# minecraft_modpack_dockerfiles
Ready-to-go Dockerfiles for each Minecraft modpack

## Usage
docker build -f Dockerfile.<modpack>
docker run -p 25565:25565 -e EULA=TRUE -e CF_API_KEY='<your Curseforge API key>' <id from build cmd>
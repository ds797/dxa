# Minecraft: Legendary Edition Server [1.20.1]

The Dockerfile in this repository can be used to set up and run a Minecraft 1.20.1 server with the Legendary Edition modpack.

## Building
The image can be built via:  
`docker build -t my-image /path/to/dockerfile/directory`

## Running
The image can be instantiated using:  
`docker run -d --name container-name -p 25565:25565 my-image`

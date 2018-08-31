Alpine Net Tools Docker Container
--

I needed a container with good networking toolsets and bash set to vi mode. (raesene/alpine-nettools)[https://github.com/raesene/alpine-nettools] was a great starting point for me.

Based on alpine to keep the image nice and small.


Tools installed
--
nmap
nmap-scripts
curl
tcpdump
bind-tools
jq
nmap-ncat
bash


Running Instructions
--
`docker run -d -p 2200:22 oliverisaac/alpine-nettools`

`docker ps` - Get the container name


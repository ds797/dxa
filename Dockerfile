FROM archlinux:latest

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm wget unzip jre21-openjdk-headless

RUN wget "https://mediafilez.forgecdn.net/files/6129/85/Minecraft_Legendary_Edition_1.20.1_2.7_server_pack.zip" -O server.zip
RUN unzip server.zip

# Ignore Java version check, ours is good enough
RUN chmod +w variables.txt
RUN sed -i '/SKIP_JAVA_CHECK/d' variables.txt
RUN echo -e "\nSKIP_JAVA_CHECK=true" >> variables.txt

# Accept EULA
RUN echo "eula=true" >> eula.txt

RUN chmod +x start.sh

# Runs on port 25565
CMD ["./start.sh"]

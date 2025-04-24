FROM lscr.io/linuxserver/webtop:debian-xfce
WORKDIR /app
COPY ./install-node.sh /app/install-node.sh
COPY ./start-server.sh /app/start-server.sh
RUN apt-get update && apt-get install -y wget
RUN chmod +x install-node.sh && ./install-node.sh
RUN chmod +x start-server.sh
RUN npm install @playwright/test
RUN npx --verbose --yes playwright install-deps
RUN npx --verbose --yes playwright install firefox
CMD ["sleep", "infinity"]
#CMD ["npx", "--yes", "@playwright/mcp@latest", "--browser", "firefox", "--port", "8931"]
EXPOSE 3000 8931 6274
FROM lscr.io/linuxserver/webtop:debian-xfce
WORKDIR /app
COPY ./install-node.sh /app/install-node.sh
RUN apt-get update && apt-get install -y wget
RUN chmod +x install-node.sh && ./install-node.sh
RUN npm install @playwright/test
RUN npx --yes playwright install-deps
RUN npx --yes playwright install
RUN npx --yes playwright install chromium 
RUN npx --yes playwright install firefox
CMD ["npx", "@playwright/mcp@latest", "--browser", "firefox", "--port", "8931"]
EXPOSE 3000 8931 6274
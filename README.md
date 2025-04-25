To build
```bash
docker build -t docker-playwright-mcp .
```

To inspect mcp
```bash
sudo npx @modelcontextprotocol/inspector node build/index.js
```

Run the container
```bash
docker run -i --name playwright-mcp -p 8931:8931 -p 3000:3000 -p 6274:6274 --rm docker-playwright-mcp:latest
```

Start the server as the VNC enabled user:
```bash
docker exec -u abc -w /app playwright-mcp './start-server.sh'
```

Known Issues:
1. Firefox is not installed during docker build. This means that the tool browser_install will run when you use the MCP with an LLM agent. This runs the browser in headless mode.

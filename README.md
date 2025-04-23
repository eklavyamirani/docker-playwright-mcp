To build
```bash
docker build -t docker-playwright-mcp .
```

To inspect mcp
```bash
sudo npx @modelcontextprotocol/inspector node build/index.js
```

To Run
```bash
docker run -i --name playwright-mcp -p 8931:8931 -p 3000:3000 -p 6274:6274 --rm docker-playwright-mcp:latest
```

Known Issues:
1. Firefox is not installed during docker build. This means that the tool browser_install will run when you use the MCP with an LLM. This runs the browser in headless mode.
To resolve, run the firefox install command manually and restart the server. 

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

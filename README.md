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

Example output:
```md
*User*: can you nvaigate to goodreads.com and then give me the trending books in historical fiction?

*Copilot*: I'll help you navigate to Goodreads.com and find the trending books in historical fiction. Let me set up and use a browser session for this.

First, I need to install the browser:I'll navigate to Goodreads.com and search for trending historical fiction books. Let me open the browser and go to Goodreads:I can see that we're now on the Goodreads homepage. I notice there's a link specifically for Historical Fiction in the genres section. Let me navigate to the Historical Fiction section to find the trending books in this genre.I've navigated to the Historical Fiction section on Goodreads.com, and now I can see the trending historical fiction books. Based on the page information, I can provide you with the most popular historical fiction books right now.

Here are the trending historical fiction books according to the "Most Read This Week" section on Goodreads:

1. The Frozen River
2. The Invisible Life of Addie LaRue
3. Malibu Rising
4. The Briar Club
5. The Berry Pickers
6. The Lion Women of Tehran
7. The Griffin Sisters' Greatest Hits
8. The Life Impossible
9. The Lost Apothecary
10. The Rose Code
11. The Heaven & Earth Grocery Store
12. The Book of Lost Names
13. Kingdom of the Wicked
14. Deep Cuts

Additionally, there are some notable new releases in historical fiction:

1. The Buffalo Hunter Hunter
2. Blood on Her Tongue
3. The Antidote
4. One Good Thing
5. The Story She Left Behind
6. The Girl from Greenwich Street
7. The Jackal's Mistress
8. The Paris Express
9. A Map to Paradise
10. The Hymn to Dionysus

Overall, books like "The Book Thief," "All the Light We Cannot See," "The Nightingale," and "Outlander" continue to be among the most popular historical fiction books of all time according to the site's listings.

Would you like more specific information about any of these books, such as plot summaries or reviews?
```
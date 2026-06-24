# YouTube Jeopardy! Board

A single-page Jeopardy board styled to look like the real TV set. Every cell is a
famous YouTube video instead of a clue, with the more iconic / most-viewed videos
placed on the higher dollar amounts. The six categories are themed around YouTube
history (most-viewed of all time, viral dance, early YouTube legends, meme hall of
fame, kids' megahits, chart-topping anthems).

Click a dollar amount to open the video in a popup player. Click again to track
which cells have been played, and use "Reset Board" to start over.

## Running it

YouTube's embedded player refuses to run on a plain `localhost` page (it throws
"Error 153"), so the board is served over a small local web server reached through
`lvh.me`, a real domain name that points back to your own computer.

**Windows:** double-click `start.bat`. It launches a local Python web server and
opens the board at `http://lvh.me:8731/index.html`. Keep the minimized server
window open while you play, and close it when you are done.

**Any OS (manual):** from this folder run a static server, for example:

```
python -m http.server 8731
```

then open `http://lvh.me:8731/index.html` in your browser.

Requires Python and an internet connection (for the videos and for `lvh.me` DNS).
Each player also has a "Watch on YouTube" link as a fallback for the rare clip
whose uploader has disabled embedding.

## Files

- `index.html` - the entire board (HTML, CSS, and JavaScript in one file)
- `start.bat` - Windows launcher that starts the server and opens the board

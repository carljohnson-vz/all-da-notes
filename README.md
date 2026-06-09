# All Da Notes

A single-file, offline note-taking app that runs in your browser and saves notes to a
folder on your own drive. No install, no build step, no server required, no account.

> Chromium browsers only (Google Chrome or Microsoft Edge) — it uses the File System
> Access API to read and write your notes folder.

## Features

- **Notebooks → Sections → Pages** with a navigation sidebar.
- **Free-form page canvas** — text and image blocks you can drag around and resize.
  Blocks move freely while dragging and snap to the nearest free spot if you drop them
  overlapping another block.
- **Rich text** inside text blocks (bold, italic, underline, headings, lists, colour,
  highlight).
- **Images** — paste an image to drop it on the page as a movable block. Each image can
  have an editable **caption** and freehand **drawing/markup** (pen colours, undo, clear).
- **Full-text search** across every notebook and page (titles *and* content). Press Enter
  to jump to the first match; the box shows `1/3`; press Enter again to cycle matches.
  Matches are highlighted and the highlight clears when you click away.
- **Auto-save** to your chosen folder (one `.html` file per page + an `index.json`), and
  **auto-restore** of the last folder when you reopen the app.

## Running it

**Option A — double-click**
Open `all-da-notes.html` in Chrome or Edge. Click **Open notes folder** and pick a folder.
Note: opened directly as a `file://` page, the browser may ask you to re-pick the folder
after a reload (a security restriction).

**Option B — local server (recommended for reliable "reopen where you left off")**
Double-click **`start.cmd`** (Windows, requires Python). It serves the app at
`http://localhost:8765/all-da-notes.html` and opens your browser. On `localhost` the app
reliably restores your last folder with no clicks.

## Where your notes live

Inside the folder you pick:

```
<your folder>/
  index.json                 # the notebook/section/page tree
  <notebook>/<section>/<page>.html   # one file per page (openable on its own)
```

Your notes never leave your machine — there is no server or account.

## Updates

The app shows its version under the title and can check a configured URL for a newer
release (set `UPDATE_CHECK_URL` near the top of the `<script>` in `all-da-notes.html`).

# BBSW Website

Source files for [bbsw.org](https://www.bbsw.org).

## Organizing Committee

Member data lives in [`committee/committee.json`](committee/committee.json).  
Photos go in [`committee/photos/`](committee/photos/) — filename must match the `photo` field in the JSON.

### Updating a member
1. Edit `committee/committee.json` — update name, role, affiliation, or profileUrl
2. Replace the photo file in `committee/photos/` if needed
3. Commit and push — the Squarespace page will reflect changes automatically

### Adding a member
1. Add a new entry to `committee.json`
2. Add their photo to `committee/photos/`
3. Commit and push

### Removing a member
1. Delete their entry from `committee.json`
2. Optionally delete their photo file
3. Commit and push

## BBSW 2026 Conference Page

The [BBSW 2026 page](https://www.bbsw.org/bbsw-2026) is one Code Block, [`bbsw-2026/squarespace-code-block.html`](bbsw-2026/squarespace-code-block.html), placed under a short native Squarespace text block (title + one-line intro, kept as real page text for search engines).

Content comes from data files, so edits never require re-pasting the block (changes appear within ~5 minutes of pushing to `main`):

| What | Where to edit |
|---|---|
| Registration buttons, app card, Day 0 details, flyer list, sponsors link | [`bbsw-2026/page.json`](bbsw-2026/page.json) |
| Flyer images | [`bbsw-2026/flyers/`](bbsw-2026/flyers/) (then list them in `page.json`) |
| Keynote speakers and the agenda | `bbsw-app`: `src/data/sessions.json` and `speakers.json`, the same data as [app.bbsw.org](https://app.bbsw.org) |
| App icon | `bbsw-app`: `public/app-icon-rounded.png` (built by `scripts/generate-icons.mjs`) |

Re-paste the Code Block only when `squarespace-code-block.html` itself changes (layout or styling).

### Previewing changes
From the repo root run `python3 -m http.server 8026` and open <http://localhost:8026/bbsw-2026/preview.html>. The preview reads `page.json`, flyers and the QR code from your local checkout, so unpushed edits show up.

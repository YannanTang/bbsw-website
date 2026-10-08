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

## Sponsors

The Sponsor page is a Squarespace Code Block: [`sponsors/squarespace-code-block.html`](sponsors/squarespace-code-block.html).  
It shows sponsors as logo tiles grouped by tier (Diamond, Platinum, Gold, Silver); clicking a logo opens its details below that row.

Sponsor data and logos are **not** stored in this repo. The block loads them from the [bbsw-app](https://github.com/YannanTang/bbsw-app) repo, the same files the conference app uses:
- Data: `https://raw.githubusercontent.com/YannanTang/bbsw-app/main/src/data/sponsors.json`
- Logos: `https://app.bbsw.org/sponsors/<id>.png` (from `bbsw-app/public/sponsors/`)

### Adding or updating a sponsor
1. In bbsw-app, add the logo to `public/sponsors/` and the record to `src/data/sponsors.json`
2. Merge to bbsw-app `main` — the app deploys, and the Squarespace page shows the change within ~10 minutes

No change to this repo or to Squarespace is needed.

### Changing the page's code
1. Edit `sponsors/squarespace-code-block.html` and preview it (below)
2. Paste the whole file into the Sponsor page's Code Block in Squarespace
3. Commit and push

Only production URLs belong in the code block. Test data sources are set outside it, as below.

### Previewing locally
Serve the parent folder that contains both `bbsw-website/` and `bbsw-app/`, then open the preview page:
```sh
cd BBSW && python3 -m http.server 8080
# http://localhost:8080/bbsw-website/sponsors/preview.html
```
Choose the data source at the top of the page: local bbsw-app files, the bbsw-app feature branch on GitHub (test), or production.

### Testing on the hidden Squarespace page with test data
The published block always uses production data. To view it with other data **in your own browser only**, run this in the browser console on the Sponsor page, then reload:
```js
localStorage.setItem('bbsw-sponsors-test-source', JSON.stringify({
  label: 'bbsw-app feature branch',
  dataUrl: 'https://raw.githubusercontent.com/YannanTang/bbsw-app/feature/2026-sponsor-pages/src/data/sponsors.json',
  logoBase: 'https://raw.githubusercontent.com/YannanTang/bbsw-app/feature/2026-sponsor-pages/public'
}));
```
A yellow "TEST DATA SOURCE" banner shows while this is set. Remove it with `localStorage.removeItem('bbsw-sponsors-test-source')`.

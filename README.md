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

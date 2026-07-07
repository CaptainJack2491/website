# jayrup.me

Minimal personal website — a terminal.css landing page, CV, projects, and dissertation. Built with Quarto, served via nginx.

## Repo is self-contained

All source files live in the repo. No symlinks or external paths. `assets/` holds static files that were originally pulled from elsewhere (dissertation PDF, public SSH key).

## Requirements

- **quarto** v1.6+ — renders `.qmd` to HTML + plain text
- **rsync** — deploys `public/` to the VPS

Optional (local preview via Docker):

- **docker** + **compose** — spins up nginx:alpine to serve `public/` on port 8080
  - Requires an external compose network `nginx_default` (`docker network create nginx_default`)
  - Otherwise edit `compose.yml` to remove the network dependency

## Quick start

```sh
# Build the site
./deploy.sh

# Or step by step:
quarto render --to html
find . -name '*.qmd' -not -path './.*' -not -path './public/*' | while read f; do
    d=$(dirname "${f#./}")
    b=$(basename "$f" .qmd)
    quarto render "$f" --to plain --output "${b}.txt" --output-dir "public/$d"
done

# Local preview (Docker)
docker compose up -d
# → http://localhost:8080
```

## Deploy

```sh
./deploy.sh
```

This builds `public/` and rsyncs it to the VPS. Only needs SSH access to `jayrup.me`.

## Git remotes

| Remote | URL | Purpose |
|---|---|---|
| `origin` | `git@github.com:CaptainJack2491/website.git` | GitHub upstream |
| `meru` | `jayrup@100.68.59.43:~/projects/homepage.git` | Agent sync hub |

Push to `meru` to share changes between agents; push to `origin` before or after deploying.

```sh
git push meru main    # sync to bare repo
git push origin main  # deploy and publish
```

## Adding content

- **New page** — create a `.qmd` file anywhere. It auto-renders.
- **CV** — update `cv/index.typ` and rebuild the PDF. The rendered PDF + txt go in `cv/`.
- **Assets** — put files in `assets/` and update `deploy.sh` to copy them.

## Project structure

```
.
├── assets/                  # Static files (dissertation.pdf, public_key)
├── cv/                      # CV source (.typ) + output (PDF, txt)
├── projects/                # Project pages (.qmd)
├── index.qmd                # Homepage
├── _quarto.yml              # Quarto config (theme, format, output dir)
├── terminal.css             # Stylesheet
├── nginx.conf               # VPS nginx config
├── compose.yml              # Local preview via Docker
├── deploy.sh                # Build + rsync to VPS
└── README.md
```

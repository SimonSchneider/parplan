# parplan

Swedish **Föräldrapenning** (parental leave) planner for two parents: day pools, **ledighetsregler**, **årskalender** (justeringar + semester), income/tax estimates, and a yearly overview combining configured leave with suggested use of remaining days.

The app is a **single static page**: open [`index.html`](index.html) in a browser (or serve the repo root). State can be shared via the URL hash.

### Docker

```bash
docker build -t parplan .
docker run --rm -p 8080:80 parplan
```

Then open <http://localhost:8080> (nginx Alpine serves `index.html`).

Publish to **GHCR** (`ghcr.io/simonschneider/parplan:main`) — log in once with a GitHub PAT (`read:packages`, `write:packages`):

```bash
docker login ghcr.io -u USERNAME
make push
```

**For architecture, data flow, and product decisions** (especially the yearly-plan logic), see **[AGENTS.md](AGENTS.md)** — intended for contributors and coding agents.

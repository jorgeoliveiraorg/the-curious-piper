# The Curious Piper – Blog Runbook

## Daily workflow

- Write/edit posts in `posts/[slug]/index.qmd` (keep images in the same folder).
- Use meaningful headings (H2/H3…) and descriptive link text.
- Add alt text for any images.

## Preview locally

Run:
quarto preview

## Publish (Netlify)

- Commit and push to `main`.
- Netlify builds automatically and publishes from `_site/`.

## Drafts

- Use `draft: true` in a post’s YAML while it’s unfinished.
- Drafts show in local preview (localhost), but are excluded from the rendered site.

## Common fixes

- YAML error: check indentation and the `---` front matter markers.
- Image not found: verify file path and that it’s committed.
- Post not in listing: confirm it’s under `posts/` and not a draft (or you are viewing localhost).

## Key settings

- Primary domain: https://www.thecuriouspiper.com
- Netlify site: https://the-curious-piper.netlify.app
- GA4 Measurement ID: G-MLL9M280YV

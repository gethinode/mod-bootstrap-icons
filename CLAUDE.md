# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Hugo module that adds [Bootstrap Icons](https://icons.getbootstrap.com/) support to [Hinode](https://gethinode.com) sites. It extends the mod-fontawesome module and reuses its icon rendering infrastructure while adding Bootstrap Icons as an additional icon set.

## Development Commands

### Server and Build
```bash
npm start              # Start Hugo dev server (includes clean + vendor)
npm run build          # Production build (includes clean + vendor)
npm test               # Run tests (alias for build)
```

### Hugo Module Management
```bash
npm run mod:update     # Update all Hugo modules
npm run mod:vendor     # Vendor Hugo modules to _vendor/
npm run mod:tidy       # Clean up unused module dependencies
npm run mod:clean      # Remove Hugo module cache
```

### Maintenance
```bash
npm run clean          # Remove public/ and resources/ directories
npm run upgrade        # Update all dependencies (npm + Hugo modules)
./meta.sh              # Regenerate data/bi-icons.yml from Bootstrap Icons
```

### Commits
```bash
npx git-cz             # Interactive commit with Conventional Commits format
```

## Architecture

### Module Structure
- **config.toml**: Defines Hugo module mounts
  - Mounts Bootstrap Icons fonts to `static/webfonts`
  - Mounts Bootstrap Icons SCSS to `assets/scss/modules/bootstrap-icons`
  - Mounts Bootstrap Icons SVGs to `assets/svgs/bi`
- **data/bi-icons.yml**: Generated list of all available Bootstrap Icons (use `./meta.sh` to regenerate)
- **exampleSite/**: Test site demonstrating module usage with Hugo workspaces

### How It Works
1. This module extends mod-fontawesome - both modules MUST be imported together
2. Bootstrap Icons are integrated using the same infrastructure as FontAwesome
3. Icons can be used via Hinode's icon shortcode system (e.g., `{{< icon bi bootstrap >}}`)
4. The module supports three rendering modes via the FontAwesome infrastructure: symbols (static SVG sprites with `<use>` references), svg (build-time inline SVG), and webfonts (CSS-based)
5. Hugo workspaces (`exampleSite/mod-bootstrap-icons.work`) allow local development without publishing

### Key Files
- `config.toml`: Module configuration and Hugo module mounts
- `data/bi-icons.yml`: List of available icons (auto-generated)
- `meta.sh`: Script to regenerate icon list from node_modules
- `exampleSite/hugo.toml`: Example configuration showing workspace usage
- `package.json`: npm scripts, dependencies, and semantic-release configuration

## Release Process

This project uses semantic-release for automated versioning and releases:

1. All commits MUST follow [Conventional Commits](https://www.conventionalcommits.org) format
2. Husky enforces commit message format via commitlint
3. On push to `main` branch, semantic-release:
   - Analyzes commits to determine version bump
   - Generates release notes
   - Creates GitHub release
   - Publishes to npm registry

Commit types:
- `feat:` - New feature (minor version bump)
- `fix:` - Bug fix (patch version bump)
- `feat!:` or `fix!:` - Breaking change (major version bump)
- `chore:`, `docs:`, `style:`, `refactor:`, `test:` - No version bump

## Module Configuration

When used in a Hinode site, both modules must be imported:

```toml
[module]
  [[module.imports]]
    path = "github.com/gethinode/mod-bootstrap-icons"
  [[module.imports]]
    path = "github.com/gethinode/mod-fontawesome/v5"
```

The module inherits FontAwesome configuration parameters:
- `params.modules.fontawesome.mode`: Icon rendering mode - "symbols" (static SVG sprites), "svg" (build-time inline SVG), or "webfonts" (CSS-based fonts)
- `params.modules.fontawesome.debug`: Enable debug logging
- `params.modules.fontawesome.skipMissing`: Skip missing icons without errors

Note: The legacy `inline` and `embed` parameters are deprecated as of mod-fontawesome v4.2.0 in favor of the unified `mode` parameter.

## Testing

CI runs on macOS, Windows, and Ubuntu with Node.js 22.x and 24.x. Tests validate that the Hugo build completes successfully.

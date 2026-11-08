# Silo Prerolls

A Silo plugin that plays pre-roll videos before movies and TV episodes, inspired by Jellyfin's Cinema Mode and Projectionist plugins.

## Features

- **Folder-based discovery** — no library required, just point at a folder
- **5 selection strategies** — Random, Sequential, Weighted, Equal Rotation, Recency Boost
- **Smart selection** — cooldown, maturity gating, per-user rules, session modes
- **Seasonal scheduling** — drop `halloween.mp4` and `xmas.mp4` for auto-trigger
- **Skippable prerolls** — skip button with configurable delay
- **Post-rolls** — outros after the feature ends
- **Series-specific prerolls** — `theme-preroll.mp4` in show's extras folder
- **Stats tracking** — per-file and per-user playback counts, skip rates
- **NeXroll integration** — pull from NeXroll's library and schedules
- **Multiple sources** — local folders, NeXroll API, Prerolls.me, custom URLs

## Build

```bash
go build -o silo-prerolls .
```

## Install

1. Build the binary
2. Upload to Silo via the plugin management UI
3. Configure preroll folders in the admin UI

## License

MIT
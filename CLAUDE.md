# homebrew-tap

A Homebrew tap of version-pinned casks for apps whose licence covers updates only
up to one release. Consumed by `~/dotfiles/macos/machines/personal/Brewfile`.

## Commands

- Local audit: `brew tap camilopiedra92/tap ~/Development/homebrew-tap`, then
  `brew audit --cask --online camilopiedra92/tap/<token>` and
  `brew style camilopiedra92/tap/<token>`.
- CI runs `brew test-bot --only-tap-syntax` (`.github/workflows/tests.yml`).

## Conventions

- One cask per pinned version, token `name@version`. `url` interpolates `version`,
  `sha256` is of the vendor's own file, and `livecheck` is `skip` with the reason:
  a pin that bumps itself is not a pin.
- `conflicts_with cask:` the unpinned cask, so the two cannot both be installed.
- Cask-only tap: no `Formula/`, so the bottle and autobump workflows
  `brew tap-new` generates were removed.
- A pin ends when the licence is renewed: delete the cask here and switch the
  Brewfile entry back to the main tap's.

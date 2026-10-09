# homebrew-tap

Casks that Homebrew's own tap does not carry: an app held at one version because
a licence covers updates only up to it.

```ruby
tap "camilopiedra92/tap"
cask "camilopiedra92/tap/cleanshot@4.8.11"
```

| Cask | Why it is pinned |
| --- | --- |
| `cleanshot@4.8.11` | The CleanShot X licence covers updates up to 4.8.11; the current release (5.x) asks to renew. |

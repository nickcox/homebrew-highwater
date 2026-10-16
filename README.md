# homebrew-highwater

The Homebrew tap for [Highwater](https://github.com/nickcox/highwater), a local viewer for how coding-agent sessions use their context window.

```bash
brew install nickcox/highwater/highwater
```

The formula installs the prebuilt binary from Highwater's GitHub release for macOS (Apple silicon or Intel) or Linux (x86_64 or arm64).

## Updating the formula for a new release

1. Change `version` and the four `url`s in `Formula/highwater.rb` to the new version.
2. Replace each `sha256` with the matching line of the release's `SHA256SUMS` file.
3. Check it with `brew style Formula/highwater.rb`, then `brew reinstall highwater` and `brew test highwater`.

# homebrew-highwater

The Homebrew tap for [Highwater](https://github.com/nickcox/highwater), a local viewer for how coding-agent sessions use their context window.

```bash
brew install nickcox/highwater/highwater
```

The formula installs the prebuilt binary from Highwater's GitHub release for macOS (Apple silicon or Intel) or Linux (x86_64 or arm64).

## Updating the formula for a new release

Publishing a Highwater release sends a `highwater-release-published` event to this repository, and `.github/workflows/update-formula.yml` opens a pull request that points the formula at the new release's archives and their SHA-256 digests. Review and merge it. To update from the latest release by hand, run the workflow from the Actions tab.

Highwater's release workflow needs a `HOMEBREW_TAP_DISPATCH_TOKEN` secret: a fine-grained personal access token with read and write access to this repository's contents. This repository needs "Allow GitHub Actions to create and approve pull requests" turned on under Settings → Actions → General.

# Kinoko

Your Claude Code and Codex sessions, side by side, on your Mac.

This repository holds Kinoko's releases and its Homebrew cask. The app's source isn't public.

## Install

**Download:** [Kinoko.dmg](https://github.com/alextacho/kinoko/releases/latest/download/Kinoko.dmg), then drag Kinoko to Applications.

**Homebrew:**

```bash
brew tap alextacho/kinoko https://github.com/alextacho/kinoko
brew install --cask kinoko
```

Update with `brew upgrade --cask kinoko`.

Requires macOS 14 (Sonoma) or later on Apple silicon.

## First launch

Early builds aren't notarized by Apple yet, so macOS blocks the first launch of a downloaded copy with "Apple could not verify Kinoko is free of malware". To open it:

1. Open Kinoko once and dismiss the warning.
2. Go to **System Settings → Privacy & Security**, scroll down, and click **Open Anyway**.

The Homebrew install doesn't show this warning.

## Feedback

Found a bug or have an idea? [Open an issue](https://github.com/alextacho/kinoko/issues), or email alex@alextacho.com.

## Releases

Each version is listed under [Releases](https://github.com/alextacho/kinoko/releases) with its notes.

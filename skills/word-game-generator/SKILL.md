---
name: word-game-generator
description: Generate or update this project's iPad-friendly GitHub Pages vocabulary game from a user-provided word list. Use when the user provides English vocabulary with Chinese meanings and wants a new game range, updated word bank, overwritten existing words, or a refreshed Scratch-like word game.
---

# Word Game Generator

Use this skill to update the vocabulary range for the project game at the repository root. The expected output is a static GitHub Pages compatible game, usually by editing `index.html`.

## Core Rule

When the user provides a new word list, **replace the existing game word bank**. Do not append to the old list unless the user explicitly asks to keep old words.

The current game stores its word bank in `index.html`:

```js
const words = [
  ["playground", "操場", "🛝"],
  ...
].map(([word, zh, icon]) => ({ word, zh, icon }));
```

Overwrite only this array unless the user asks for gameplay or UI changes.

## Input Format

Accept flexible user input such as:

```text
apple 蘋果
book 書
long jump 跳遠
```

Parse each item as:

- English word or phrase
- Chinese meaning
- Optional icon or emoji

If the user does not provide icons, choose simple child-friendly emoji. Reuse general icons when exact icons are unavailable.

## Workflow

1. Read `index.html`.
2. Parse the user's new vocabulary list.
3. Build a replacement `const words = [...]` array.
4. Preserve existing game mechanics:
   - 圖字配對 and 聽音選字 cannot skip questions.
   - 聽音選字 uses the speaker button for pronunciation.
   - 拼字吊死人 uses the same word bank.
   - 限時挑戰 is 60 seconds and stops when time is up.
   - Recent 10 target words should not repeat.
   - 100 points shows Great Job outside timed mode.
5. Update `README.md` only when the word theme, rules, or usage instructions changed.
6. Verify by searching for the new words and checking the old words are gone from the word bank unless intentionally kept.

## Replacement Requirements

- Keep English capitalization as supplied when it matters, such as `Frisbee`.
- Preserve multi-word phrases, such as `merry-go-round`, `track and field`, and `long jump`.
- Escape quotation marks if they appear in words or meanings.
- Remove exact duplicate English entries unless the user explicitly wants duplicates.
- Keep the generated JavaScript as a valid array of arrays:

```js
["word or phrase", "中文意思", "emoji"]
```

## Validation

After editing, run lightweight checks when available:

```powershell
rg -n "const words|new-word|old-word" index.html
```

If Node.js is available, check script syntax:

```powershell
node -e "const fs=require('fs'); const html=fs.readFileSync('index.html','utf8'); const m=html.match(/<script>([\s\S]*)<\/script>/); new Function(m[1]); console.log('index script OK');"
```

If Node is blocked, still verify the replacement region manually with `Get-Content -Encoding utf8`.

## Delivery

Tell the user:

- The game word bank was overwritten with the new range.
- Which files changed.
- They should refresh the browser or redeploy GitHub Pages.

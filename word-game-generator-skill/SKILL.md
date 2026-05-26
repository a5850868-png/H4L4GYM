# word-game-generator

Use this skill when the user asks to create or update a simple vocabulary game, word matching game, or single-file word practice page from a supplied word list.

## Output

Create or update a static `index.html` vocabulary game that:

- Runs without a build step.
- Works from GitHub Pages.
- Lets users paste or edit word pairs in the browser.
- Supports English-to-Chinese and Chinese-to-English quiz modes.
- Uses multiple-choice questions with at least 4 word pairs.
- Keeps score and allows restarting, shuffling, and switching mode.

Also include:

- `README.md` with local usage, GitHub Pages steps, and word-list format.
- `start-game.bat` for Windows local testing.
- `server.js` for local HTTP testing from another device on the same network.

## Word List Format

Accept one word pair per line. Prefer comma-separated input:

```text
apple,蘋果
banana,香蕉
school,學校
```

Also tolerate Tab, colon, full-width colon, hyphen, or whitespace as separators when parsing pasted input.

## Update Rules

When the user gives a new word list:

1. Preserve the existing UI and behavior unless the user asks for design changes.
2. Replace the default word list in `index.html`.
3. Keep the page self-contained.
4. Verify that the game still renders and that the parser accepts the supplied format.

## Design

Use a clear classroom-friendly layout with large prompt text, large answer buttons, and responsive mobile behavior. Avoid build tools unless the user explicitly requests a framework.

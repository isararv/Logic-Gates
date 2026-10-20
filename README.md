# Logic Gates classroom game

A 60-puzzle digital electronics game with teacher-created challenges, student access codes, scoreboards, tokens, gate diagrams, signal animations, and selectable original synthesized soundtracks.

## Run locally

Requires Node.js 22 or later; no npm dependencies.

In PowerShell:

```powershell
$env:LOGIC_TEACHER_PASSWORD = 'your-private-password'
npm start
```

Open http://localhost:8765. The teacher password is required and is never stored in the repository. `.env.example` documents the settings; this app does not automatically load `.env` files.

## Deploy the full application

Use a Node.js web service or the included Dockerfile. GitHub Pages alone cannot run classroom challenges or scoreboards.

- Connect this repository to your Node.js host.
- Start command: `npm start`.
- Set `LOGIC_TEACHER_PASSWORD` privately in the host's environment settings.
- Set `PUBLIC_URL` to the deployed HTTPS address, eventually `https://logic-one.us`.
- The server listens on the host-provided `PORT` and all network interfaces.
- Test the host's temporary URL before changing the existing domain.
- Add `logic-one.us` as a custom domain at the host, then apply its exact DNS instructions in GoDaddy. Preserve existing email records.

No DNS changes or public hosting resources are created by these files.

## Current prototype limitations

Challenges, login sessions, and progress are in memory. A server restart or deployment clears them. Run a single server instance; persistent storage is needed before relying on this for ongoing classroom records. Student refresh starts a new attempt. Scores, tokens, and misses are browser-reported rather than tamper-resistant assessment records. The public deployment should be treated as a classroom prototype until these limitations are addressed.

## Curriculum

1–8: AND, OR, NOT, NAND, NOR, XOR, NXOR and review.
9–16: Three-input combinations.
17–20: NAND-only equivalents.
21–28: Four input bits and number-conversion displays.
29–36: Decimal entry; followed by an interactive hexadecimal lesson.
37–42: Hexadecimal entry.
43–60: Eight-bit decimal/hexadecimal challenges.

## Rewards and sound

Unassisted scoring is 5 points, 2 after one miss, and 0 after two or more. A first-try solve earns one token. Five tokens unlock the puzzle's gate hints; two tokens undo the latest point-reducing penalty without erasing recorded misses or restoring first-try eligibility. The general reference remains free.

Soundtrack choices: Korobeiniki, Electronic, Arcade, Chill, Off. Korobeiniki uses a newly synthesized arrangement of the traditional melody and accelerates from 132 to 160 BPM. No commercial game recordings or external MP3 files are required. Browsers may require a first interaction before music plays.

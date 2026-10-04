# Adaptive Survival — Windows desktop app

A standalone Windows desktop version of the Adaptive Survival game. It includes manual play, a tabular Q-learning agent, batch training, adaptive difficulty, and learning metrics. The agent's learned Q-values are saved on that computer.

## Build the Windows `.exe`

1. Install **Node.js 20.19 or newer**.
2. Unzip this folder on a Windows computer.
3. Double-click `build-windows-exe.bat`.
4. When it finishes, find `Adaptive-Survival-1.0.0-x64-portable.exe` in the `release` folder. Copy that `.exe` wherever you want and double-click it to play.

The first build downloads the project packages and may take a few minutes. Internet access is needed for that first build. If Windows displays a security warning, it is because the app is an unsigned personal build.

## Build or edit in VS Code

Open the extracted folder in VS Code, then run these commands in **Terminal → New Terminal**:

```bash
npm install
npm run dev
```

Open the local address Vite prints, usually `http://localhost:5173`. To create the Windows executable from the terminal instead, run:

```bash
npm run desktop:pack:win
```

The app can also be checked and built for the browser with `npm run build`.

## Controls

- **WASD** or **arrow keys**: move
- **Space**: attack
- **E**: collect nearby supplies
- Use the on-screen controls to start a run, train the agent, adjust its speed, or reset its learned Q-values.

The game runs locally and does not need an API server or environment variables. Learned Q-values are stored in the app's local storage.
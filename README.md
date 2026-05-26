# word-game-generator

一個可放上 GitHub Pages 的單字選擇題遊戲。直接修改 `index.html` 裡的單字庫，或在網頁右側貼上新的單字清單，就能產生新的練習題。

## 檔案內容

- `index.html` - 單字遊戲
- `README.md` - GitHub Pages 與使用說明
- `start-game.bat` - 本機/iPad 測試啟動器
- `server.js` - 本機測試用 HTTP server
- `word-game-generator-skill/SKILL.md` - 讓 Codex 之後依同樣格式重製遊戲的技能說明

## 本機使用

最快方式是直接用瀏覽器開啟 `index.html`。

若要讓 iPad 或同網路裝置測試：

1. 在 Windows 上雙擊 `start-game.bat`
2. 依畫面顯示的網址開啟，例如 `http://192.168.x.x:3000`
3. iPad 必須與電腦連在同一個 Wi-Fi

## GitHub Pages

1. 建立 GitHub repository
2. 上傳本資料夾內的檔案
3. 到 repository 的 `Settings > Pages`
4. Source 選 `Deploy from a branch`
5. Branch 選 `main`，資料夾選 `/root`
6. 儲存後等待 GitHub 顯示 Pages 網址

## 更換單字

在網頁右側的單字庫貼上資料，每行一組：

```text
baseball,棒球
basketball,籃球
ping-pong,桌球
soccer,足球
```

支援逗號、Tab、冒號或破折號分隔。至少需要 4 組單字，選擇題才能產生干擾選項。

## 之後請 Codex 重製

可以在這個專案中說：

```text
用 word-game-generator 把單字換成：
baseball,棒球
basketball,籃球
...
```

Codex 會依 `word-game-generator-skill/SKILL.md` 的規格更新遊戲。

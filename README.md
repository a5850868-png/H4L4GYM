# Word Game Project

可重複產生新單字範圍的 iPad 英文單字遊戲專案。目前單字範圍是運動主題；提供新的英文單字和中文意思後，可以覆寫目前遊戲的單字庫，並保留原本遊戲模式和規則。

## 遊戲模式

- 圖字配對
- 聽音選字
- 拼字吊死人
- 限時挑戰：60 秒內看能完成幾題，時間到後不能再作答

## 遊戲規則

- 答對加 10 分
- 答錯扣 1 顆愛心
- 滿 100 分過關
- 過關出現 Great Job! 和 Word Master 徽章
- 圖字配對和聽音選字不能跳題，答對後才會進下一題
- 同一輪遊戲最近 10 題不會重複出現同一個目標單字

## 放到 GitHub Pages

1. 在 GitHub 建立一個新的 repository。
2. 上傳這個資料夾內的檔案，至少需要 `index.html`。
3. 到 repository 的 Settings。
4. 打開 Pages。
5. Source 選 Deploy from a branch。
6. Branch 選 `main`，資料夾選 `/root`。
7. 儲存後等待 GitHub 產生網址。

完成後網址通常會像這樣：

```text
https://你的帳號.github.io/你的repo名稱/
```

## 本機測試

可以直接雙擊 `index.html` 開啟。

如果要讓同一個 Wi-Fi 的 iPad 連進電腦玩，可以雙擊 `start-game.bat`，再用 iPad 開：

```text
http://你的電腦IP:8000
```

## 更新單字範圍

專案內有一個 Skill：

```text
skills/word-game-generator
```

未來只要提供新的英文單字和中文意思，就可以用這個 Skill 覆寫目前遊戲的單字範圍，保留原本的遊戲模式和規則。

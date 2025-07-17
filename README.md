# Monster Hunter Frontier Server Emulator (Happy Hunter Life Edition)

本版基於 [Mezeporta/Erupe](https://github.com/Mezeporta/Erupe) 修改  

加入一些輕鬆享受狩獵魔物的方便功能
- 創立角色時即滿等(HR7 & GR999)
- 預先建立好近百組禮物，能直接領取多種裝備素材(生產券、GX珠、擊玉、鎧玉、倉庫等等)
- 貓馬遜道具裝備配送服務，聊天框指令輸入 `!amazon` 直接取得道具裝備

## 安裝方式
[安裝步驟](https://github.com/Misora000/Erupe-HHL/blob/main/setup.md)

## 輕鬆狩獵指南
關於遊戲中各種難搞的東西的取得方式
|||
| --- | --- |
| HR / GR | 創立角色時即滿等999, 創完角色後要立刻結束遊戲**重新登入**一次才能生效 |
| 貨幣、素材、裝備 | 找櫃台領取 or 透過聊天框指令 `!amazon` 取得  |
| 課金方案 | 透過聊天室窗指令 `!course` 修改 |
| 等級例如GSR | `config.json` 中已經任務倍率設為100, 再配合方案效果升級很快 |

各種大禮包直接領取，內容物速查表：[GX珠禮包](https://github.com/Misora000/Erupe-HHL/blob/main/csv/GX.csv)、[生產券禮包](https://github.com/Misora000/Erupe-HHL/blob/main/csv/voucher.csv)  
![Snipaste_2025-07-17_17-35-23-tile](https://github.com/user-attachments/assets/12b9624a-facd-4c3d-b51d-dda4e4881574)

直接向貓馬遜取得道具裝備
![Snipaste_2025-07-17_17-38-42](https://github.com/user-attachments/assets/9aed8669-bc01-49ea-803b-ddcbf39c971f)
![Snipaste_2025-07-17_17-38-56-side](https://github.com/user-attachments/assets/49c673f6-ed1c-4165-8d36-5ddf2b6b05f9)

創角立即GR999，透過指令課金方案全開
![Snipaste_2025-07-17_17-32-58-side](https://github.com/user-attachments/assets/47e4fb54-d03f-4920-91a2-d63e6144097f)


## 聊天室窗指令

遊戲中打開聊天室窗, 輸入以 `!` 開頭的指令, 完整指令表可在 `config.json` 內找到  
這裡舉例開關克金方案, 聊天框中輸入可以開關
```
!course <方案字串>
```
方案字串定義在 `commono\mfcourse.go` 中
```go
var aliases = map[uint16][]string{
	1:  {"Trial", "TL"},
	2:  {"HunterLife", "HL"},
	3:  {"Extra", "ExtraA", "EX"},
	4:  {"ExtraB"},
	5:  {"Mobile"},
	6:  {"Premium"},
	7:  {"Pallone", "ExtraC"},
	8:  {"Assist", "***ist", "Legend", "Rasta"},
	9:  {"N"},
	10: {"Hiden", "Secret"},
	11: {"HunterSupport", "HunterAid", "Support", "Aid", "Royal"},
	12: {"NBoost", "NetCafeBoost", "Boost"},
	...
}
```

## 貓馬遜道具裝備配送服務

聊天框指令的一種，直接輸入想要的道具裝備與數量，輸入完後向櫃台領取  
```
!amazon <type> <id> <amount>
```
例如取得3把 `極大蛇ノ太刀【燦然】`
```
!amazon 5 8D40 3
```
道具的id為 `little-endian` 的16進位表示法，建議從 [存檔修改器的列表](https://github.com/Chakratos/mhf-save-manager/blob/master/app/I18N/ja_JP/Items.php) 中搜尋  
請勿輸入 [ＭＨＦ猟団FreeDomの小部屋](https://mhwiki.axibug.com/MHF_XiaoWu9.0CN/) 的道具id，小部屋的id是big-endian，輸入下去高機率讓玩家存檔壞掉  

道具的type (只列出最常用的8種，實際遊戲中有31種type)
| type | EN | 中文 |
| --- | --- | --- |
| 0 | leg | 腿防具 |
| 1 | head | 頭防具 |
| 2 | chest | 身防具 |
| 3 | arms | 手防具 |
| 4 | waist | 腰防具 |
| 5 | melee | 近戰武器 |
| 6 | ranged | 遠戰武器　|
| 7 | item | 道具素材 |


## Resource
- [All-In-One](https://drive.google.com/drive/folders/1wnB8ohEHFQ-TM_Cgtkzmv_wsa66Q32tJ?usp=sharing)
- [Server-Side Only](https://github.com/Misora000/Erupe-HHL/releases/download/v0.1.0/Erupe-HHL_v0.1.0-win-amd64.7z)
- [Client-Side Only](https://drive.google.com/file/d/148wXH_j84afJVGWnIPuQHiSceqlJgCXP/view)
- [Quests & Scenarios](https://files.catbox.moe/xf0l7w.7z)

## Reference
- [Erupe Community Edition](https://github.com/Mezeporta/Erupe)
- [MHF Save Manager](https://github.com/Chakratos/mhf-save-manager)
- [Locale Emulator](https://github.com/xupefei/Locale-Emulator)


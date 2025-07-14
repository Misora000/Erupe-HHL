# Monster Hunter Frontier Server Emulator (Happy Hunter Life Edition)

本版基於 [Mezeporta/Erupe](https://github.com/Mezeporta/Erupe) 修改  

加入一些輕鬆享受狩獵魔物的方便功能
- 創立角色時即滿等(HR7 & GR999)
- `config.json` 中各種方便功能預設開啟
  


## 輕鬆狩獵指南
關於遊戲中各種難搞的東西的取得方式
|||
| --- | --- |
| HR / GR | 創立角色時即滿等999, 創完角色後要立刻結束遊戲**重新登入**一次才能生效 |
| 貨幣與素材 | 透過 [存檔修改器](https://github.com/Chakratos/mhf-save-manager) 修改 |
| 課金方案 | 透過聊天室窗指令修改 |
| 等級例如GSR | `config.json` 中已經任務倍率設為100, 再配合方案效果升級很快 |


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
	// 13-19 show up as (unknown)
	20: {"DEBUG"},
	21: {"COG_LINK_EXPIRED"},
	22: {"360_GOLD"},
	23: {"PS3_TROP"},
	24: {"COG"},
	25: {"CAFE_SP"},
	26: {"NetCafe", "Cafe", "OfficialCafe", "Official"},
	27: {"HLRenewing", "HLR", "HLRenewal", "HLRenew", "CardHL"},
	28: {"EXRenewing", "EXR", "EXRenewal", "EXRenew", "CardEX"},
	29: {"Free"},
	// 30 = Real NetCafe course
}
```

## Resource
- [All-In-One](https://drive.google.com/file/d/1M6B23mxVlvpc47_cSEsRTRNJW39GNK0i/view)
- [Server-Side Only](https://github.com/Misora000/Erupe-HHL/releases/download/v0.0.1/Erupe-HHL-win-amd64.7z)
- [Client-Side Only](https://drive.google.com/file/d/148wXH_j84afJVGWnIPuQHiSceqlJgCXP/view)
- [Quests & Scenarios](https://files.catbox.moe/xf0l7w.7z)

## Reference
- [Erupe Community Edition](https://github.com/Mezeporta/Erupe)
- [MHF Save Manager](https://github.com/Chakratos/mhf-save-manager)
- [Locale Emulator](https://github.com/xupefei/Locale-Emulator)


# 猴子也懂得MHF-Z私服架設方式 (Windows版)

## Server Side

Server端要裝的東西
|||
| ---- | ---- |
| Postgres | 私服用的資料庫 |
| PgAdmin | 資料庫的GUI管理工具, 方便用來初始遊戲資料庫 |
| Erupe | 私服主程式, 本文選用 `Mezeporta` 版 |
| MHFSaveManager | (非必要) 玩家資料存檔修改器 |


### Postgres & PgAdmin

安裝檔都放在 `server\database` 內  
(Postgres也可以直接用docker裝, pull image `postgres:17`)  

配合Erupe私服的設定, Postgres安裝過程中, Port設 `5431`, 密碼設 `1234`  
有需要可以自行修改  

透過PgAdmin初始化資料庫  
1. 點選 `Add New Server`, 在connection tab輸入 Address: `localhost`, Port: `5431`, Password: `1234`
2. 在下方出現的server上 `右鍵>Create>Databae`, 輸入名稱(Database) `erupe`
3. 點開下方Databases內的erupe上 `右鍵>Restore`, Filename選擇 `server\database\db_init.sql`


### Erupe

無須安裝, 解開 `server\Mezeporta-Erupe-win-amd64.zip` 後執行 `erupe-ce.exe` 即可  
(如果上面步驟有修改Postgres的port或密碼, 這邊也要同步修改 `config.json`)
```json
  "Database": {
    "Host": "localhost",
    "Port": 5431,
    "User": "postgres",
    "Password": "1234",
    "Database": "erupe"
  }
```

`config.json` 內來有一些關於活動, 歌姬, 方案的設定, 有興趣可以自行修改
```json
    "DivaOverride": 0,

    "EnableKaijiEvent": true,
    "EnableHiganjimaEvent": true,
    "EnableNierEvent": true,
    "DisableRoad": false,
    "SeasonOverride": true

  "Courses": [
    {"Name": "HunterLife", "Enabled": true},
    {"Name": "Extra", "Enabled": true},
    {"Name": "Premium", "Enabled": true},
    {"Name": "Assist", "Enabled": true},
    {"Name": "N", "Enabled": true},
    {"Name": "Hiden", "Enabled": true},
    {"Name": "HunterSupport", "Enabled": true},
    {"Name": "NBoost", "Enabled": true},
    {"Name": "NetCafe", "Enabled": true},
    {"Name": "HLRenewing", "Enabled": true},
    {"Name": "EXRenewing", "Enabled": true}
  ]    
```

任務資料已經放在 `bin` 裡了


### MHFSaveManager (存檔修改器)

無須安裝, 只須確保 `www\config.php` 內的資料庫連線資訊一致即可
```php
const DBNAME = 'erupe';
const DBUSER = 'postgres';
const DBPASS = '1234';
const DBHOST = '127.0.0.1';
const DBDRIVER = 'pdo_pgsql';
const DBPORT = 5431;
```


## Client Side

無須安裝, 解開 `client\Monster Hunter Frontier Online.zip` 後點選 `mhf.exe` 即可  
若有需要在遊戲內輸入中日文, 需要用 `Locale Emulator` 執行 `mhf.exe`   

將 `client\host` 複製到 `C:\Windows\System32\drivers` 內  
如果已存在原本檔案, 需要將 `drivers` 內原本的 `host` 複製出來修改內容加上以下幾條, 再將改過的 `host` 放回 `drivers` 內  
```
127.0.0.1 mhfg.capcom.com.tw
127.0.0.1 mhf-n.capcom.com.tw
127.0.0.1 cog-members.mhf-z.jp
127.0.0.1 www.capcom-onlinegames.jp
127.0.0.1 srv-mhf.capcom-networks.jp
```
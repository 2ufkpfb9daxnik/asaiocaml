# 浅井健一「プログラミングの基礎」サイエンス社(2007)

- [サイエンス社ページ](https://www.saiensu.co.jp/search/?isbn=978-4-7819-1160-1&y=2007)
- [サポートページ](http://pllab.is.ocha.ac.jp/~asai/book/Top.html)

2023年に第10版が出ていてすごい

## 使い方

`ocaml`で対話環境を起動

対話環境の指示の区切りは`;;`

対話環境でファイルを読むには`#use "FILENAME.ml"`

対話環境起動時にファイルを読むには`ocml -init FILENAME.ml`

バイトコードコンパイルは`ocamlc INPUTNAME -o OUTPUTNAME`

ネイティブコードコンパイルは`ocamlopt INPUTNAME -o OUTPUTNAME`

## 環境構築

PowerShell 7をインストールしそれをVSCodeのデフォルトターミナルに設定した後にopam2.3とocaml5.3.0を使えるようにする

VSCode拡張のocaml platformにパッケージマネージャーもビルドシステムもlanguage serverも付いてくる

以下の順に実行

### PowerShell 7のインストール

```PowerShell
winget install --id Microsoft.PowerShell
```

### VSCodeでPowerShell 7をデフォルタトーミナルに設定する

VSCodeを起動し、`Ctrl + Shift + P`を押してコマンドパレットを開き、「Preferences: Open Setting (JSON)」と入力して以下を入力

```json
{
  "terminal.integrated.profiles.windows": {
    "PowerShell 7": {
      "path": "C:\\Program Files\\PowerShell\\7\\pwsh.exe"
    }
  },
  "terminal.integrated.defaultProfile.windows": "PowerShell 7"
}
```

設定を保存し、**VSCodeを再起動**

```PowerShell
$PSVersionTable.PSVersion
```

でバージョンが7.x.xであればよい

### opam2.3のインストール

```PowerShell
Invoke-Expression "& { $(Invoke-RestMethod https://opam.ocaml.org/install.ps1) }"
```

### opamの初期化

```PowerShell
opam init --disable-sandboxing --reinit -ni
```

### ocamlスイッチの作成

```PowerShell
opam switch create 5.3.0
```

### インストール確認

```PowerShell
ocaml -version
opam --version
```

### opamの環境変数の自動設定

```PowerShell
notepad $PROFILE
```

で設定ファイルを開き、

```PowerShell
(& opam env) -split "`r`n" | ForEach-Object { Invoke-Expression $_ }
```

を記述する。その後**PowerShellを再起動する**

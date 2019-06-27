# grep-test
## What is this?
- このリポジトリはgrepの使い方を検証するために個人的に使用しているものです。
## What is in this repository?
### scrpit directory
- このディレクトリには検証対象にするデータを生成するプログラムがあります
### searcher directory
####  search.rb
- grepコマンドを実行するスクリプト
#### search-eg.rb
- コマンドに依存しないファイル内検索スクリプト
##### 使用方法
- 第一引数に探索するフォルダ名をつける
- 第二引数に検索する文字列をつける
- ファイル単位での検索結果が確認可能
```
poolbooyer$ ruby ./searcher/search-eg.rb data/ inde
data/sample4.txt
L1: index
L2: /index.htm
L3: index
L7: index
L8: /assets/js/index.js
L9: index
L10: /index.html

data/sample5.txt
L1: inde
L2: index
...

poolbooyer$ ruby ./searcher/search-eg.rb data/ fuga
data/sample4.txt
Not found

data/sample5.txt
Not found
...
```
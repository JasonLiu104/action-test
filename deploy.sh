#!/usr/bin/env sh
# 當發生錯誤時終止腳本運行
set -e
# 打包
npm run build
# 移動至到打包後的dist目錄 
cd dist
git init 

git config --local user.email jason.liu@104.com.tw 
git config --local user.name JasonLiu104
git remote add origin  https://JasonLiu104:@github.com/JasonLiu104/action-test.git
git checkout -b gh-pages
git add --all
git commit -m "deploy to Github pages"
git push origin gh-pages -f
echo 🤘 deploy gh-pages complete.

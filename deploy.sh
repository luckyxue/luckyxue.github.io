#!/bin/zsh

cd /Users/xuehaoyun/Documents/luckyxue.gitee.io

sed -i '' "s|url:\ https://hancaihaoyun.gitee.io/blog/|url:\ https://hancaihaoyun.github.io/|" /Users/xuehaoyun/Documents/luckyxue.gitee.io/_config.yml
sed -i '' "s|root:\ /blog|root:\ /|" /Users/xuehaoyun/Documents/luckyxue.gitee.io/_config.yml

hexo clean
hexo generate

cp -R /Users/xuehaoyun/Documents/luckyxue.gitee.io/public/ /Users/xuehaoyun/Documents/luckyxue.github.io/

sed -i '' "s|url:\ https://hancaihaoyun.github.io/|url:\ https://hancaihaoyun.gitee.io/blog/|" /Users/xuehaoyun/Documents/luckyxue.gitee.io/_config.yml
sed -i '' "s|root:\ /|root:\ /blog|" /Users/xuehaoyun/Documents/luckyxue.gitee.io/_config.yml

hexo clean
hexo generate

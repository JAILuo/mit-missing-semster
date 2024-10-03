#!/bin/bash

#find . -type f -print0 | xargs -0 ls -lht | less

# answer
# 当文件数量较多时，上面的解答会得出错误结果.
# 解决办法是增加 -mmin 条件，先将最近修改的文件进行初步筛选再交给ls进行排序显示
find . -type f -mmin -60 -print0 | xargs -0 ls -lt | less

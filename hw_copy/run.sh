#!/bin/bash
docker build -t hw_copy_image ./hw_copy

echo -e "\n请选择要运行的程序："
echo "1. 运行 add 程序"
echo "2. 运行 mul 程序"
read -p "你的选择（1或2）：" choice

case $choice in
    1)
        docker run --rm hw_copy_image ./add 10 20
        ;;
    2)
        docker run --rm hw_copy_image ./mul 3 4
        ;;
    *)
        echo "输入错误，请输入 1 或 2！"
        ;;
esac

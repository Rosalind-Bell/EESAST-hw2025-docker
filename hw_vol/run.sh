#!/bin/bash
PATH="/mnt/e/projects/docker/EESAST-hw2025-docker/src"
NAME="hw_vol_image"

docker build -t "$NAME" ./hw_vol

docker run --rm -v "$PATH:/workspace" "$NAME" sh -c "g++ -o add add.cpp && g++ -o mul mul.cpp && chmod +x add mul"

echo -e "\n请选择要运行的程序："
echo "1. 运行 add 程序"
echo "2. 运行 mul 程序"
read -p "你的选择（1或2）：" choice

read -p "请输入第一个数：" num1
read -p "请输入第二个数：" num2

case $choice in
    1)
        docker run --rm -v "$PATH:/workspace" "$NAME" ./add "$num1" "$num2"
        ;;
    2)
        docker run --rm -v "$PATH:/workspace" "$NAME" ./mul "$num1" "$num2"
        ;;
    *)
        echo "输入错误，请输入 1 或 2！"
        ;;
esac

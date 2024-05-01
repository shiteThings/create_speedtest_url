#!/bin/bash

# ANSI颜色转义码
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # 恢复默认颜色

echo -e "欢迎使用 Caddy 管理脚本"
echo -e "${YELLOW}1. 查看 Caddy 状态${NC}"
echo -e "${GREEN}2. 启动 Caddy${NC}"
echo -e "${BLUE}3. 重启 Caddy${NC}"
echo -e "${YELLOW}4. 重新加载 Caddy 配置文件${NC}"
echo -e "${RED}5. 停止 Caddy${NC}"

read -p "请输入对应数字进行操作：" choice

case "$choice" in
    1)
        systemctl status caddy
        ;;
    2)
        systemctl start caddy
        ;;
    3)
        systemctl restart caddy
        ;;
    4)
        systemctl reload caddy
        ;;
    5)
        systemctl stop caddy
        ;;
    *)
        echo "输入无效，请输入数字 1 到 5 进行操作。"
        exit 1
        ;;
esac

exit 0

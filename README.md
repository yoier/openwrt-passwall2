同步编译passwall2的.apk包，适用于使用apk包管理器的openwrt；<br>
源码均来自[xiaorouji/openwrt-passwall2](https://github.com/xiaorouji/openwrt-passwall2)；<br>
比较更改[workflows/Auto compile with openwrt sdk.yml](https://github.com/xiaorouji/openwrt-passwall2/compare/main...yoier:openwrt-passwall2:main?diff=split&w=#diff-2f9f24d66bc665142e414c96f7dd53791b18945862668bfbb225ab89f80b38bc)。

## 脚本更新
### openwrt终端运行
```
bash <(curl -Ls https://raw.githubusercontent.com/yoier/openwrt-passwall2/refs/heads/main/upgrade_passwall2_apk.sh)
```

## 手动更新
### 下载文件
下载release中.apk文件，并保存到openwrt中.<br>
### apk安装
```
apk add <.apk you saved> --allow-untrusted
```
--allow-untrusted: 安装带有不受信任签名或无签名的软件包,绕过默认的安全检查.
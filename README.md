# config-backup
Backup of device configs and scripts

## 目录结构

```
dotfiles/        # $HOME 下的点文件备份（vimrc、bash_aliases）
android/         # Android 工程相关配置（gradle.properties 等）
scripts/         # 辅助脚本（restore.sh：把 dotfiles 恢复回 $HOME）
```

恢复方式：

```
./scripts/restore.sh
```

备份频率：手动，改动重要配置后 `git add -A && git commit`。

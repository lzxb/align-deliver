# align-deliver

对齐交付技能的独立公开分发。固定版本：`b5622bd257facc8250cb817c766571373324335c`。

先对齐目标和原则，再研发、专家验收与提交 MR；有工作先做，远程失败按检查点恢复，持续维护全部 MR。旧 MR 已终态后的新工作转入新分支与新 MR。

## 下载

- [完整安装包](https://github.com/lzxb/align-deliver/releases/download/v2026.10.24-b5622bd/align-deliver-b5622bd.zip)：仅包含 `align-deliver/` 下已验收的 10 个文件。
- [SHA256SUMS](https://github.com/lzxb/align-deliver/releases/download/v2026.10.24-b5622bd/SHA256SUMS)
- [版本发布页](https://github.com/lzxb/align-deliver/releases/tag/v2026.10.24-b5622bd)

## macOS / Linux 安装

需要 `curl`、`unzip`，以及 `sha256sum` 或 `shasum`。

```sh
curl -fL 'https://github.com/lzxb/align-deliver/releases/download/v2026.10.24-b5622bd/install.sh' -o /tmp/install-align-deliver.sh
sh /tmp/install-align-deliver.sh
```

安装程序校验固定版本 ZIP 的 SHA-256，安装到 `~/.agents/skills/align-deliver`。已有目标目录时停止，不覆盖；可先自行备份，或传入另一个技能父目录：

```sh
sh /tmp/install-align-deliver.sh /path/to/skills
```

也可下载 ZIP，完整解压其 `align-deliver` 文件夹到技能目录。所有资源都要保留，不能只复制 `SKILL.md`。

在 Codex 中使用 `$align-deliver`；若技能未出现，重启 Codex。目录与发现规则见 [OpenAI 官方说明](https://learn.chatgpt.com/docs/build-skills#where-codex-loads-local-skills)。

## 版本校验

```text
9ab83fc43084d10e7f1528fcb47397b389b018271dad278a6d8b46c0422bb4c1  align-deliver-b5622bd.zip
```

本仓库分发固定快照；更新不会自动覆盖已安装版本。

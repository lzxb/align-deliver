# align-deliver

对齐交付技能的独立公开分发。固定版本：`f0e056862ac0b41d6feb20ef6dff8fefc523ed7e`。

通用的对齐交付流程，不只研发：先对齐目标和原则，再按批次执行、专家团验收到 0 修改；git 内容提交 MR 并持续维护到合并、关闭或取消，其他交付物在全部工作做完后一次交给用户，用户验收通过才结束。流程按对齐、执行与验收、交付、盘点与维护四个阶段拆分阅读。

## 下载

- [完整安装包](https://github.com/lzxb/align-deliver/releases/download/v2026.10.26-f0e0568/align-deliver-f0e0568.zip)：仅包含 `align-deliver/` 下已验收的 21 个文件。
- [SHA256SUMS](https://github.com/lzxb/align-deliver/releases/download/v2026.10.26-f0e0568/SHA256SUMS)
- [版本发布页](https://github.com/lzxb/align-deliver/releases/tag/v2026.10.26-f0e0568)

## macOS / Linux 安装

需要 `curl`、`unzip`，以及 `sha256sum` 或 `shasum`。

```sh
curl -fL 'https://github.com/lzxb/align-deliver/releases/download/v2026.10.26-f0e0568/install.sh' -o /tmp/install-align-deliver.sh
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
fd52d7b1e2aff24df9e49c74d84497c81e3d4c5856c0a2f2f7bb68e147965bf4  align-deliver-f0e0568.zip
```

本仓库分发固定快照；更新不会自动覆盖已安装版本。

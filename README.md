
## 前言
> Forked from [KyleBing/rime-wubi86-jidian](https://github.com/KyleBing/rime-wubi86-jidan)

在Rime输入法算法框架中集成[极点五笔字](http://www.freewb.org/)86版词库并加入文字简繁转换功能。

## 安装

- Windows - [小狼毫(Weasel)](https://github.com/rime/weasel)
- macOS - [鼠须管(Squirrel)](https://github.com/rime/squirrel)
- Linux - [ibus-rime](https://github.com/rime/ibus-rime)

## 可以选择安装依赖
```sh
  bash rime-install pinyin-simp # linux/unix
  rime-install.bat pinyin-simp # windiws
```

## 配置文件(default.custom.yaml)

```yaml

patch:
  schema_list:
    - {schema: luna_pinyin_simp}
    - {schema: wubi86_jidian}
  ascii_composer:
    switch_key:
      Shift_R: commit_code
  switcher:
    hotkeys:
      - "Control+Alt+p"
    abbreviate_options: true
    caption: "【 输入法设置 】"
```

## 功能

### 输出系统时间和日期用：
- date 输出日期，格式 `2019-06-19`
- time 输出时间，格式 `10:00:00`
- datetime 输出日期，格式 `2019-06-19 10:00:00`

### 输出系统变量

库librime >= 1.5.0支持lua脚本，位于`用户文件夹/rime.lua`，具体操作查看[Wiki](https://github.com/hchunhui/librime-lua/wiki)。

## 相关链接

相关资源链接

- RIME 地址：   https://github.com/rime
- RIME 输入方案集合：  https://github.com/rime/plum
- RIME 官方五笔码表：  https://github.com/rime/rime-wubi
- RIME 简拼输入方案：  https://github.com/rime/rime-pinyin-simp

相关配置教程链接

- RIME 官网：   https://rime.im/
- RIME 输入方案参数详解：  https://github.com/LEOYoon-Tsaw/Rime_collections/blob/master/Rime_description.md
- 中英切换自定义：https://gist.github.com/lotem/2981316
# 
[![LICENSE](https://img.shields.io/badge/license-Anti%20996-blue.svg)](https://github.com/996icu/996.ICU/blob/master/LICENSE) [![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)


## 前言
> Forked from [KyleBing/rime-wubi86-jidian](https://github.com/KyleBing/rime-wubi86-jidan)

在Rime输入法算法框架中集成[极点五笔字](http://www.freewb.org/)86版词库并加入文字简繁转换功能

## 安装

- Windows - [小狼毫(Weasel)](https://bintray.com/rime/weasel)
- macOS - [鼠须管(Squirrel)](https://bintray.com/rime/squirrel)
- Linux - [ibus-rime](https://github.com/rime/home/wiki/RimeWithIBus)

## 可以选择安装依赖
```sh
  bash rime-install pinyin-simp # linux/unix
  rime-install.bat pinyin-simp # windiws
```

## 配置文件(default.custom.yaml)

```yaml
patch:
  schema_list:
    - {schema: luna_pinyin}
    - {schema: wubi86_jidian}
  style:
    font_face: "明兰"
    font_point: 14
  ascii_composer:
    switch_key:
      Shift_R: commit_code #回车止屏
  switcher:
    hotkeys:
      - "Control+Alt+p"
    abbreviate_options: true
    caption: "【 输入法设置 】"
```

## 功能

### 输出系统时间和日期用：
- date 输出日期，格式 `2019年06月19日`
- time 输出时间，格式 `10:00`
- datetime 输出日期，格式 `2019-06-19 10:00`

### 输出系统变量

自 v0.13之后可自定义输出系统变量，如日期等

文件 `rime.lua` 盛放的是调用的方法，你需要在相应的 `XXXX.schema.yaml` 文件的 `engine` 字段添加一些东西。
具体参阅这里： https://github.com/hchunhui/librime-lua/blob/master/sample/lua/date.lua

## 相关链接

相关资源链接

- 极点五笔方案： https://github.com/KyleBing/rime-wubi86-jidan
- RIME 地址：   https://github.com/rime
- RIME 输入方案集合：  https://github.com/rime/plum
- RIME 官方五笔码表：  https://github.com/rime/rime-wubi
- RIME 简拼输入方案：  https://github.com/rime/rime-pinyin-simp

相关配置教程链接

- RIME 官网：   https://rime.im/
- RIME 输入方案参数详解：  https://github.com/LEOYoon-Tsaw/Rime_collections/blob/master/Rime_description.md
- 中英切换自定义：https://gist.github.com/lotem/2981316
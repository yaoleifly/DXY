# 丁香园首页设计 · Axure 原型

一份用 **Axure RP** 制作的「丁香园（DXY）首页改版」交互原型，导出为静态 HTML，可直接在浏览器中查看。

- 在线预览：<https://yaoleifly.github.io/DXY/>（由 GitHub Pages 发布）
- 本地预览：`./serve.sh`，然后打开 <http://localhost:8000/>

## 页面结构

| 页面 | 文件 | 说明 |
| --- | --- | --- |
| 设计总览 | [`丁香园首页设计.html`](丁香园首页设计.html) | 整站设计说明与信息架构，原型的入口页 |
| 新版首页 | [`首页_new.html`](首页_new.html) | 改版核心高保真稿，含图片悬停态、单行文本框、下拉列表框等交互元件 |
| 旧版首页 | [`首页_old.html`](首页_old.html) | 改版前的线上首页截图，作为对照基线 |

根目录的 [`index.html`](index.html) 是预览入口页，[`start.html`](start.html) 是 Axure 自带的原型播放器（含站点地图 / 页面备注等视图）。`start_c_1.html`、`start_g_0.html` 是播放器的锚点跳转页。

## 目录说明

```
.
├── index.html              # 预览入口页（手写，非 Axure 导出）
├── start.html              # Axure 原型播放器外壳
├── 丁香园首页设计.html       # 页面 1
├── 首页_new.html            # 页面 2（新版首页）
├── 首页_old.html            # 页面 3（旧版首页）
├── data/                   # 全局配置：document.js（站点地图、全局样式）+ styles.css
├── files/<页面名>/          # 各页的 data.js（布局数据）与 styles.css
├── images/<页面名>/         # 各页的切图与素材
├── resources/              # Axure 运行库：jQuery 1.7.1、axure 脚本、样式、chrome 外壳
├── plugins/                # Axure 插件：sitemap / page_notes / debug / recordplay
├── .nojekyll               # 关闭 GitHub Pages 的 Jekyll 处理
└── serve.sh                # 本地预览脚本
```

## 本地预览

原型依赖相对路径加载脚本与切图，**不建议用 `file://` 直接双击打开**（部分浏览器会拦截脚本）。请起一个本地静态服务器：

```bash
./serve.sh          # 默认 8000 端口
./serve.sh 9000     # 自定义端口
```

## 部署

仓库使用 **GitHub Pages** 发布，来源为 `master` 分支根目录。

- 根目录的 `.nojekyll` 会跳过 Jekyll 构建。这一点对 Axure 导出物是必需的：项目含有中文文件名以及 `data/`、`files/`、`resources/` 等目录，交给 Jekyll 处理容易导致资源缺失或页面 404。
- 由于已关闭 Jekyll，`_config.yml`（`jekyll-theme-cayman`）不再生效，可以安全删除。

> 备注：如果线上地址返回 404，请在仓库 **Settings → Pages** 中确认发布来源为 `master` 分支 `/` 目录，保存后重新构建。

## 说明

原型内的文字内容与视觉稿主要以图片切图形式呈现，页面文本未以可编辑的 HTML/CSS 实现，因此不便于直接改动设计细节。如需将其转为真正的前端实现，需要按 `images/<页面名>/` 中的切图重新搭建页面结构。

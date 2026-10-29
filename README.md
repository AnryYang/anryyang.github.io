A Github Pages template for academic websites. This was forked (then detached) by [Stuart Geiger](https://github.com/staeiou) from the [Minimal Mistakes Jekyll Theme](https://mmistakes.github.io/minimal-mistakes/), which is © 2016 Michael Rose and released under the MIT License. See LICENSE.md.

I think I've got things running smoothly and fixed some major bugs, but feel free to file issues or make pull requests if you want to improve the generic template / theme.

依赖版本记录在 `Gemfile.lock`；调整依赖后请使用 Bundler 更新并重新验证构建。

# Instructions

1. Register a GitHub account if you don't have one and confirm your e-mail (required!)
1. Fork [this repository](https://github.com/academicpages/academicpages.github.io) by clicking the "fork" button in the top right. 
1. Go to the repository's settings (rightmost item in the tabs that start with "Code", should be below "Unwatch"). Rename the repository "[your GitHub username].github.io", which will also be your website's URL.
1. Set site-wide configuration and create content & metadata (see below -- also see [this set of diffs](http://archive.is/3TPas) showing what files were changed to set up [an example site](https://getorg-testacct.github.io) for a user with the username "getorg-testacct")
1. Upload any files (like PDFs, .zip files, etc.) to the files/ directory. They will appear at https://[your GitHub username].github.io/files/example.pdf.  
1. Check status by going to the repository settings, in the "GitHub pages" section
1. (Optional) Use the Jupyter notebooks or python scripts in the `markdown_generator` folder to generate markdown files for publications and talks from a TSV file.

See more info at https://academicpages.github.io/

## To run locally (not on GitHub Pages, to serve on your own computer)

### Windows 本地预览

在项目目录的 PowerShell 中运行，或双击 `serve.cmd`：

```powershell
cd 'D:\Codex Projects\MyPage'
.\serve.cmd
```

打开 <http://127.0.0.1:4000/>。保持终端运行，按 `Ctrl+C` 停止。
修改 Markdown、HTML 或 SCSS 后会自动重新生成并刷新浏览器；修改 `_config.yml` 或 `_config.dev.yml` 后需要重启。

当前电脑的 Ruby+Devkit 3.3 安装在 `%LOCALAPPDATA%\Programs\Ruby33-x64`，启动脚本会自动使用它。
首次运行或修改 Gemfile 后，脚本会检查并安装缺少的依赖。
如需在另一台 Windows 电脑配置相同环境，可安装：

```powershell
winget install --id RubyInstallerTeam.RubyWithDevKit.3.3 --exact --scope user --location "$env:LOCALAPPDATA\Programs\Ruby33-x64"
```

### 修改位置

| 内容 | 文件或目录 |
| --- | --- |
| 首页正文 | `_pages/about.md` |
| 其他页面 | `_pages/` |
| 团队成员资料 | `_data/team.yml`（现任及离组成员；页面模板为 `_pages/team.md`） |
| 论文资料与资源链接 | `_publications/`（页面为 `_pages/publications.md`，条目模板为 `_includes/archive-single.html`） |
| 数据集表格与下载链接 | `_pages/datasets.md` |
| 大学、学会标识 | `images/logos/`；原图来源记录在 `_data/branding.yml` |
| 顶部导航 | `_data/navigation.yml` |
| 个人信息及网站设置 | `_config.yml` |
| 自定义样式 | `_sass/_custom.scss` |
| 颜色、字体、尺寸变量 | `_sass/_variables.scss` |
| 页面布局和组件 | `_layouts/`、`_includes/` |
| 图片、PDF 等资源 | `images/`、`files/` |

团队页使用响应式双栏成员简介，手机上自动变为单栏。修改成员资料后，可在构建完成时运行
`bundle exec ruby _tests/team_test.rb`，检查成员信息、个人链接和选中导航是否完整显示。

论文页按年份展示条目，资源链接显示为文字按钮，空链接和 `#` 占位链接不显示。
修改论文模板或元数据后，构建完成时运行 `bundle exec ruby _tests/publications_test.rb`，
检查论文信息与原始资源链接是否完整保留。

数据集表格支持表内滚动、固定表头和名称列，并提供分类跳转；获得键盘焦点后可用方向键滚动。
引用说明可展开查看。3 个没有原始 URL 的预处理占位显示为不可用标签，所有已有下载地址保持原样。
构建后运行 `bundle exec ruby _tests/datasets_test.rb`，核对表格内容、链接及引用/代码示例。

图标沿用项目自带的 Font Awesome。HKBU、SIGMOD、SIGKDD 和 VLDB 标识以原图存放于本地，
不依赖外部图片服务器；对应官网及原图 URL 见 `_data/branding.yml`。

本地启动同时加载 `_config.yml` 和 `_config.dev.yml`，使用本地网址并关闭访问统计。
GitHub Pages 继续使用 `_config.yml`；本地预览无需提交或推送，线上网站不会因本地修改而自动更新。
不要直接修改生成的 `_site/`，它会在下次构建时被覆盖。

网站图标使用本地 `images/favicon.svg`，移动端主屏图标使用现有头像，避免旧模板的缺失图片请求。
`rf.revolvermaps.com` 域名无法解析，其访客统计脚本已注释保留；恢复服务后可重新启用。

上线前可用生产配置构建，并让现有检查读取该构建目录：

```powershell
$env:JEKYLL_ENV = 'production'
bundle exec jekyll build --safe --destination log/production-check
$env:JEKYLL_DESTINATION = "$PWD/log/production-check"
Get-ChildItem _tests/*_test.rb | ForEach-Object {
  bundle exec ruby $_.FullName
  if ($LASTEXITCODE -ne 0) { throw "Check failed: $($_.Name)" }
}
Remove-Item Env:JEKYLL_DESTINATION
Remove-Item Env:JEKYLL_ENV
```

### 其他平台

安装 Ruby 和 Bundler 后，在项目目录运行：

```sh
bundle install
bundle exec jekyll serve --config _config.yml,_config.dev.yml --livereload --host 127.0.0.1
```

参考：[GitHub Pages 官方本地预览说明](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll)。

# Changelog -- bugfixes and enhancements

There is one logistical issue with a ready-to-fork template theme like academic pages that makes it a little tricky to get bug fixes and updates to the core theme. If you fork this repository, customize it, then pull again, you'll probably get merge conflicts. If you want to save your various .yml configuration files and markdown files, you can delete the repository and fork it again. Or you can manually patch. 

To support this, all changes to the underlying code appear as a closed issue with the tag 'code change' -- get the list [here](https://github.com/academicpages/academicpages.github.io/issues?q=is%3Aclosed%20is%3Aissue%20label%3A%22code%20change%22%20). Each issue thread includes a comment linking to the single commit or a diff across multiple commits, so those with forked repositories can easily identify what they need to patch.

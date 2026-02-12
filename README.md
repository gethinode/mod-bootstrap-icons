# Hinode Module - Bootstrap Icons

<!-- Tagline -->
<p align="center">
    <b>A Hugo module to add Bootstrap Icons to your Hinode site</b>
    <br />
</p>

<!-- Badges -->
<p align="center">
    <a href="https://gohugo.io" alt="Hugo website">
        <img src="https://img.shields.io/badge/generator-hugo-brightgreen">
    </a>
    <a href="https://gethinode.com" alt="Hinode theme">
        <img src="https://img.shields.io/badge/theme-hinode-blue">
    </a>
    <a href="https://github.com/gethinode/mod-bootstrap-icons/commits/main" alt="Last commit">
        <img src="https://img.shields.io/github/last-commit/gethinode/mod-bootstrap-icons.svg">
    </a>
    <a href="https://github.com/gethinode/mod-bootstrap-icons/issues" alt="Issues">
        <img src="https://img.shields.io/github/issues/gethinode/mod-bootstrap-icons.svg">
    </a>
    <a href="https://github.com/gethinode/mod-bootstrap-icons/pulls" alt="Pulls">
        <img src="https://img.shields.io/github/issues-pr-raw/gethinode/mod-bootstrap-icons.svg">
    </a>
    <a href="https://github.com/gethinode/mod-bootstrap-icons/blob/main/LICENSE" alt="License">
        <img src="https://img.shields.io/github/license/gethinode/mod-bootstrap-icons">
    </a>
</p>

## About

![Logo](https://raw.githubusercontent.com/gethinode/hinode/main/static/img/logo.png)

Hinode is a clean blog theme for [Hugo][hugo], an open-source static site generator. Hinode is available as a [template][repository_template], and a [main theme][repository]. This repository maintains a Hugo module to add [Bootstrap Icons](https://icons.getbootstrap.com/) to a Hinode site.  Visit the Hinode documentation site for [installation instructions][hinode_docs].

## Configuration

This module is an extension to the [FontAwesome](https://fontawesome.com/) module. It adapts the same parameters as documented in the module's [README](https://github.com/gethinode/mod-fontawesome). Make sure both module are imported in your Hugo configuration (Hinode imports FontAwesome by default).

```toml
[module]
  [[module.imports]]
    path = "github.com/gethinode/mod-bootstrap-icons"
  [[module.imports]]
    path = "github.com/gethinode/mod-fontawesome/v4"
```

## Contributing

This module uses [semantic-release][semantic-release] to automate the release of new versions. The package uses `husky` and `commitlint` to ensure commit messages adhere to the [Conventional Commits][conventionalcommits] specification. You can run `npx git-cz` from the terminal to help prepare the commit message.

<!-- MARKDOWN LINKS -->
[hugo]: https://gohugo.io
[hinode_docs]: https://gethinode.com
[repository]: https://github.com/gethinode/hinode.git
[repository_template]: https://github.com/gethinode/template.git
[conventionalcommits]: https://www.conventionalcommits.org
[husky]: https://typicode.github.io/husky/
[semantic-release]: https://semantic-release.gitbook.io/

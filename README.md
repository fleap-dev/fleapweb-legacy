# FleapWEB

Lightweight (blog-style) [website](https://fleap.dev) for posting random stuff.

## Build dependencies

- [GNU Make](https://www.gnu.org/software/make/)
- [lowdown](https://github.com/kristapsdz/lowdown)

## Building

It uses a custom version of the [SSG](https://rgz.ee/bin/ssg5) script (by Roman Zolotarev) to convert, using [lowdown](https://github.com/kristapsdz/lowdown), the articles from Markdown format to HTML.

Build instructions:

```sh
git clone https://github.com/hfleap/fleapweb.git
cd fleapweb
make
```

Build files will generate to the `build/` folder by default.

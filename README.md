# Atom Bubblegum Syntax (WIP)

An Atom syntax theme with delicious bubblegum colors.

It __tones down__ less important parts (like punctuation and brackets) and highlights only the __important__ ones. This leads to a more calm color scheme, but still lets you find the stuff you're looking for.

Inspired by the syntax theme [in this blog post](http://blog.atom.io/2017/09/12/announcing-atom-ide.html). (See also: https://twitter.com/simurai/status/911060062910636033)

![Bubblegum syntax](https://raw.githubusercontent.com/scotttesler/atom-bubblegum-syntax/master/Screen%20Shot%202017-09-28%20at%2011.34.47%20AM.png)

## Language support

Why is the language support somewhat sparse? In order to decide how a language should be highlighted, it's helpful to understand the language. Only then you can get the nuances right. Therefore this theme only supports a language if somebody actively maintains it.

### Actively supported languages

Language | Extension | Maintainer
--- | --- | ---
CSS | `.css` | [@simurai](https://github.com/simurai)
GF Markdown | `.md` | [@simurai](https://github.com/simurai)
Git Commit Message | `.COMMIT_EDITMSG` | [@simurai](https://github.com/simurai)
HTML | `.html` | [@simurai](https://github.com/simurai)
JSON | `.json` | [@simurai](https://github.com/simurai)
Less | `.less` | [@simurai](https://github.com/simurai)
Sass | `.scss` | [@simurai](https://github.com/simurai)
Text | `.txt` | [@simurai](https://github.com/simurai)
Todo | `.txt` | [@simurai](https://github.com/simurai)

### Un-maintained languages

Language | Extension | Maintainer
--- | --- | ---
CoffeeScript | `.coffee` | :wave: Maintainer wanted
JavaScript | `.js` | :wave: Maintainer wanted
??? | ??? | :wave: Maintainer wanted


## Contribute

Want to contribute? Awesome! Here the steps to add syntax highlighting for a specific language:

1. Add an example file to `spec/`. Doesn't have to be complete, just something to test the highlighting.
2. Add a Less file with the styling to `styles/languages/`.
3. Add an import to that Less file in `styles/languages/_index.less`.
4. Add yourself as the maintainer to this `README.md`.
5. Make a PR. :tada:

> Note: Since there are hundreds (thousands?) of languages out there, less commonly used languages might not get accepted. :bow:

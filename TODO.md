## GUI X11-ness

- macOS GUI started linking with frameworks and OpenGL, not X11
- Seems like a `qmake` thing
- See `src/gui-qt/highlight.pro` -- how can we just use `unix` here?


## Gherkin syntax highlighting

- What's important to be highlighted?
- Start from <https://github.com/andre-simon/highlight/blob/master/langDefs/make.lang>
- Submit a patch (via GitLab?)
- Add it to `textproc/libhighlight` in the meanwhile
- Use it on `schmonz.com`

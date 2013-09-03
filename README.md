# AASTeX-Boilerplate

This is a simple project to help you start writing your paper.

## Bootstrap your paper

1. [Download a zip](https://github.com/jonathansick/aastex_boilerplate/archive/master.zip) of this repository to start your paper from. Name and place the directory as you please.
2. Customize the name of the root paper file from `article.tex`. Change the file name, then the `ROOT` variable in the `Makefile`.
3. Make your paper a git repository! `git init .` and so on.
4. I've stuffed the preamble into `preamble.tex`, and macro definitions into `defs.tex`. Add your macros to `defs.tex`.
5. Change `\bibliography{...}` at the bottom of `article.tex` to point to your BibTeX repository. *You use BibTeX, don't you?*. If you link your bibliography into
your tex installation directory (`~/Library/texmf/bibtex/bib/` on a Mac with [MacTeX](http://tug.org/mactex/)) you don't need to specify the full path.
6. (optional) Register yourself as an author for the annotation system. See the *Collaborative Annotations* section below.
7. Run `make` to ensure everything is hooked up.

*As a fun bonus*, you can install my [`watcher.py` script](https://gist.github.com/jonathansick/3594679) to call the `Makefile` whenever you edit the source.

    watcher.py article.tex

When the article is being prepared for submission, inputs need to be flattened. The [Astropysics](http://pythonhosted.org/Astropysics/) package can help with this.

## Features

### Word Counts

You can quickly get a tex-savvy word count from `make`, powered by [texcount](http://app.uio.no/ifi/texcount/).
Just run:

    make wc

### Version Control Tagging in PDFs

I'm using the [vc](http://www.ctan.org/tex-archive/support/vc) version control bundle to print `git` SHA1s, authors and emails into the `slugcommit` in early drafts. *This means I'm expecting you to use git to track your paper.*

To disable this: edit the make file to not depend on `vc.tex`. Also modify the line with `\slugcomment` in `article.tex` to be more useful for you.

Once the article is submitted, replace the line starting with `\InputIfFileExists...` in `article.tex` with a direct `\slugcomment{...}` statement.

### Collaborative Annotations

We're using the [FixMe](http://www.ctan.org/pkg/fixme) package to handing TODOs, comments, and other annotations.
By default the comments are added as PDF comment objects, but can also be written as inline text.
See `preamble.tex` for details.

A note can be added as:

- `\fxnote{text}` to add a text note,
- `\fxnote[note text}{targeted text}` to have the comment also highlight the `targeted text` in your manuscript,
- `\anfxnote{text}` creates an annotation environment, meant for longer comments/diatribes,
- `\anfxnote{note text}{targeted text}` creates an annotation environment that also highlights the targeted text in your manuscript.

In multi-author manuscripts, you can register authors whose signature can be prepended to their comments.
This can be done in `preamble.tex`. For example,

    \FXRegisterAuthor{js}{ajs}{JS}

(also change `singleuser` to `multiuser` in the `fixme` `\usepackage` statement.)

By registering 'JS', that author can now write `\jsnote` and `\ajsnote` statements.

To hide annotations in the document you release, simply change the `\documentclass` status from `draft` to `final` at the top of `article.tex`.

***

Put together by Jonathan Sick, [@jonathansick](http://www.github.com/jonathansick).
AASTeX-Boilerplate is licensed [CC-BY](http://creativecommons.org/licenses/by/3.0/deed.en_US).

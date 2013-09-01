# AASTeX-Boilerplate

This is a simple project to help you start writing your paper.

## Notes

1. Feel free to customize the name of the paper from `article.tex`. Just change the `ROOT` variable in the `Makefile`.
2. I've stuffed the preamble into `preamble.tex`, and macro definitions into `defs.tex`. Add your macros to `defs.tex`.
3. I'm using the [vc](http://www.ctan.org/tex-archive/support/vc) version control bundle to print `git` SHA1s, authors and emails into the `slugcommit` in early drafts.

   To disable this: edit the make file to not depend on `vc.tex`. Also modify the line with `\slugcomment` in `article.tex` to be more useful for you.

   Once the article is submitted, replace the line starting with `\InputIfFileExists...` in `article.tex` with a direct `\slugcomment{...}` statement.

4. When the article is being prepared for submission, inputs need to be flattened. The [Astropysics](http://pythonhosted.org/Astropysics/) package can help with this.

## Collaborative Annotations

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

****

Put together by Jonathan Sick, @jonathansick

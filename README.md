# AASTeX-Boilerplate

This is a simple project to help you start writing your paper.

## Notes

1. Feel free to customize the name of the paper from `article.tex`. Just change the `ROOT` variable in the `Makefile`.
2. I've stuffed the preamble into `preamble.tex`, and macro definitions into `defs.tex`. Add your macros to `defs.tex`.
3. I'm using the [vc](http://www.ctan.org/tex-archive/support/vc) version control bundle to print `git` SHA1s, authors and emails into the `slugcommit` in early drafts.

   To disable this: edit the make file to not depend on `vc.tex`. Also modify the line with `\slugcomment` in `article.tex` to be more useful for you.

   Once the article is submitted, replace the line starting with `\InputIfFileExists...` in `article.tex` with a direct `\slugcomment{...}` statement.

4. When the article is being prepared for submission, inputs need to be flattened. The [Astropysics](http://pythonhosted.org/Astropysics/) package can help with this.

****

Put together by Jonathan Sick, @jonathansick

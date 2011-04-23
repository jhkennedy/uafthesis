# uafthesis

## What is this?

*uafthesis* is a LaTeX document class meant for using with a University of Alaska Fairbanks-style thesis. It would be used like so:

    \documentclass{uafthesis}

Or something like that.

*ppl.sty* is a style file which gives you a nice font. As the original documentation says, "Hil's Font." Who's Hil? I don't know.

The *.bst* files are bibtex bibliography styles. *unsrtabbrv3.bst* is a style cobbled together by one of the previous authors, which features non-automatic alpha-sorting and maximal abbreviations. *agu04.bst* is a style used by the American Geophysical Union, and is known for being relatively verbose. It's also really popular.

Whether these should actually be bundled with *uafthesis* or not is a matter of debate, in my opinion. Ymmv.

## The tutorial

*tutorial/* includes the original "tutorial". If you already know LaTeX and bibtex, it shouldn't be too complicated, though I would use *pdflatex* over *latex* proper. In addition, I would like to cover graphics techniques. Anyways: It is my goal to rewrite parts of the tutorial (and perhaps the class if necessary) as I write my own thesis.

## Call to Arms

If you're a UAF student writing a thesis in LaTeX and have some improvements to make, you should do so and share! Here's the process:

1. Get a github account. It's easy and awesome.
2. Fork this project. There's a button on the upper-right corner of the main page.
3. *git clone* your new repository.
4. Make changes.
5. *git commit -m"Some changes I made for great justice."*
6. *git push origin master*
7. Hit me up with a pull request. This is also on the upper-right corner of the main page.

Alternately, if git scares you, you can always email me or something, and we can figure something out.

## Contributors

* **Curt A. L. Szuberla**   13 November 1996
* **Matt Heavner**           5 February 1999
* **Dana Moudry**           18 December 2002
* **Ryan Woodard**           2 December 2004
* **Joshua Holbrook**              (present)

## Licensing

Nothing is included with the original bundle, but based on the sources of the original latex materials, it's safe to say (imo) that the project is covered by the [**LaTeX Project Public License**](http://www.latex-project.org/lppl.txt).

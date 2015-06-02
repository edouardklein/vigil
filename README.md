vigil(1) -- turn URLs into BibTeX records
=========================================

## SYNOPSIS
`vigil` [-c] [`input-file`]

## DESCRIPTION
`vigil` will parse the URLs (on per line) in `input-file` (or if missing on `stdin`) and output the corresponding bibtex(1) records on stdout.

If the URL points to a known forum (Hacker News, Reddit), the BibTeX record will be the record for the article the discussion on the forum is about, with a link to the discussion in the `Annote` field of the record.

If the URL (or the Reddit or HN link) points to a .pdf file, we try to extract its title (thanks to docear : https://www.docear.org/software/add-ons/docears-pdf-inspector/) and get a citation using Google Scholar via scholar.py (https://github.com/ckreibich/scholar.py).

## OPTIONS

* `-c` :
Copy the records to the clipboard. This feature is useful when used in coordination whith programs like BibDesk on MacOSX, which allow import from the clipboard with a keystroke.

## SYNTAX
## ENVIRONMENT
## RETURN VALUES
## STANDARDS
## SECURITY CONSIDERATIONS
## BUGS
## HISTORY
## AUTHOR
## COPYRIGHT
## SEE ALSO
## TODO


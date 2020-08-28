# My Emacs configuration

Do some special configurations for Emacs. Changes to the standard config:

## Global settings

- Enable line numbering by default
- Set default theme to tango dark
- Set mode line to show the column

## Settings for programming and markup languages

### Python

- Disable guessing and prefer spaces
- Set indent width to four

### Javascript

- Set indentation to spaces
- Set default indent width to two

### SGML/HTML

- Set indentation to spaces
- Set default indent width to two

### Octave

- Make Octave mode the default for .m-files
- Disable tabs
- Set default indent width to two

### Markdown

- Change default Markdown command to pandoc
- Set fill-column as a function of display width
  to accomodate working on small displays
  (i.e. Termux on a Smartphone)
- Fold headlines below top-level

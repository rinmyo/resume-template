#import "typst-tablex/tablex.typ": tablex, colspanx, rowspanx

#let project(lang: "ja", title: (ja: [], en: []), author: (name: "", grade: "M1"), affiliation: [], lab: "", date: (), body) = {
  /// parameters
  let leading = 1em
  let heading_size_1 = 10.5pt
  let heading_size_2 = 10.5pt
  let text_size = 10.5pt

  /// Set the document's basic properties.
  set document(author: author.name)
  set page(numbering: "1", number-align: center)
  set text(text_size, font: ("Linux Libertine", "Yu Mincho", "YuMincho", "細明朝体"), lang: lang)

  /// Transvert yyyy/mm/dd to english text of a date
  /// should be replace with use the official implementation after the v0.5 release
  let date_to_text(y,m,d) = {
    let month(n) = if n > 12 or n < 1 {
      panic("month cannot be greater than 12 or less that 1, check if you are living on earth")
    } else {
      ("January", "Fabuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December").at(n - 1)
    }
  
    let day(n) = str(n) + super(if n == 1 or n == 21 or n == 31 [st]
            else if n == 2 or n == 22 [nd]
            else if n == 3 or n == 23 [rd]
            else if n > 31 or n < 1 {
              panic("day cannot be greater than 31 or less that 1, check if you are living on earth")
            } else [th])
    [#month(m) #day(d),\ #y]
  }

  /// Print the title table fitting the given format
  {
    set text(9pt)
    tablex(
      columns: (auto, 1fr, auto),
      align: center + horizon,
      rowspanx(2, affiliation), title.ja, rowspanx(2, [#date_to_text(..date)\ #lab\ #author.name (#author.grade)]),
      (), title.en, ()
    )
  }

  set par(justify: true, first-line-indent: 1em, leading: leading)
  show par: set block(spacing: leading)
  set heading(numbering: "1.1. ")
  show heading: set block(spacing: leading)

  show heading.where(level: 1) : set text(heading_size_1)
  show heading.where(level: 2) : set text(weight: "regular", heading_size_1)

  show heading: it =>[#v((1/it.level)* 1em) #it]

  /// Main body.
  body
}

#let Abstract = heading(numbering: none, "Abstract")

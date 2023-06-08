#import "typst-tablex/tablex.typ": tablex, colspanx, rowspanx

#let date_to_text(y,m,d) = {
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

#let project(title: (ja: [], en: []), author: (name: "", grade: "M1"), affiliation: [], lab: "", date: (), body) = {
  // Set the document's basic properties.
  set document(author: author.name)
  set page(numbering: "1", number-align: center)
  set text(9pt, font: "Linux Libertine", lang: "ja")

  tablex(
    columns: (auto, 1fr, auto),
    align: center + horizon,
    rowspanx(2, affiliation), title.ja, rowspanx(2, [#date_to_text(..date)\ #lab\ #author.name (#author.grade)]),
    (), title.en, ()
  )

  // Main body.
  let leading = 1em
  set par(justify: true, first-line-indent: 1em, leading: leading)
  show par: set block(spacing: leading)
  set text(10.5pt)

  show heading.where(level: 1) : it => block[
    #set text(10.5pt)
    #let cc = counter(heading)
    #if cc.display() != [0] [#cc.display()]
    #it.body 
    #cc.step()
  ]

  body
}
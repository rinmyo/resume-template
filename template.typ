#import "typst-tablex/tablex.typ": tablex, colspanx, rowspanx

#let project(lang: "ja", title: (ja: [], en: []), author: (name: "", grade: "M1"), affiliation: [], lab: "", date: datetime.today(), body) = {
  /// parameters
  let leading = 1em
  let heading_size_1 = 10.5pt
  let heading_size_2 = 10.5pt
  let text_size = 10.5pt

  /// Set the document's basic properties.
  set document(author: author.name)
  set page(numbering: "1", number-align: center)
  set text(text_size, font: ("Linux Libertine", "Yu Mincho", "YuMincho", "細明朝体", "Noto Serif CJK JP"), lang: lang)

  /// formatted data
  let date = {
    let day = date.day()
    let suffix = super(
      if day == 1 or day == 21 or day == 31 {"st"}
      else if day == 2 or day == 22 {"nd"} 
      else if day == 3 or day == 23 {"rd"}
      else {"th"}
    )
    
    [#date.display("[month repr:long] [day]")#suffix,\ #date.year()]
  }

  /// Print the title table fitting the given format
  {
    set text(9pt)
    tablex(
      columns: (auto, 1fr, auto),
      stroke: .5pt,
      align: center + horizon,
      rowspanx(2, affiliation), title.ja, rowspanx(2, [#date \ #lab\ #author.name (#author.grade)]),
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

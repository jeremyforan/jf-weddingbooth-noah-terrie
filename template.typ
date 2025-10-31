#import "inputs.typ": *
// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!

#let bleedBox = if bleed {
  box(stroke: (paint: blue, thickness: .5pt, dash: "dashed"), width: 1.8in, height: 5.8in)
} else {}

#let bleed = if bleedInput == "true" { true } else { false }

#let project(title: "", authors: (), background: image("assets/props/6x2.png"), body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(
    fill: tiling(size: (2in, 6in))[#background],
    height: 6in,
    width: pageWidth,
    margin: 0in,
    foreground: bleedBox,
  )

  if pageWidth == 4in [
    #columns(2, gutter: 0pt)[
      #set par(spacing: 0pt, leading: 0pt)
      #body
      #colbreak()
      #body
    ]
  ]

  if pageWidth == 2in [
    #columns(1, gutter: 0pt)[
      #set par(spacing: 0pt, leading: 0pt)
      #body
    ]
  ]
}

#let photo(img, corner: .5mm, imgWidth: 100%) = {
  box(
    image(img, width: imgWidth, fit: "contain", scaling: "smooth"),
    clip: true,
    radius: corner,
  )
}

#let imageBlock(
  alignment: center,
  rad: 3mm,
  padding: 2mm,
  images: (
    rotate(0deg)[#photo(img1)],
    rotate(0deg)[#photo(img2)],
    rotate(0deg)[#photo(img3)],
    rotate(0deg)[#photo(img4)],
  ),
) = {
  grid(
    align: alignment,
    columns: 1,
    rows: images.len(),
    gutter: padding,
    ..images,
  )
}

#let textBox(body, x: 0pt, y: 0pt, font: "Roboto", size: 10pt) = {
  place(dx: x, dy: y, scope: "parent", float: true, top)[
    #text(font: font, size: size)[#body]
  ]
}

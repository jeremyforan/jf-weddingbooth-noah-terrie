#import "template.typ": *


#show: project.with(
  title: "jf-photobooth-template",
  authors: (
    "Jeremy Foran",
  ),
  background: image("background.png", scaling: "smooth", height: 100%),
)

#set text(
  top-edge: "ascender",
)

#v(10pt)

#box(inset: 4mm)[#imageBlock(padding: 2mm, rad: 1mm)]

#v(15pt)

#align(center)[
  #text(rgb("#58565A"), size: 12pt, font: "Ibarra Real Nova")[
    Noah & Terrie

    2025.11.08
  ]
]

#v(10pt)


#place(dy: -1.05in, dx: -.275in)[
  #rotate(-.85rad)[
    #image("leaf.png")
  ]
]

// Font - Ibarra Real Nova
// Font colour - #58565A
// Green - #305652

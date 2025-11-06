#import "template.typ": *

#show: project.with(
  title: "jf-photobooth-template",
  authors: (
    "Jeremy Foran",
  ),
  // fill: gradient.linear(white, rgb("#9CCC65")),
  background: image("bluer.png", scaling: "smooth", height: 100%),
)

#set text(
  top-edge: "ascender",
)

#v(6pt)

#box(inset: 4mm)[#imageBlock(padding: 2mm, rad: 1mm)]

#v(15pt)

#align(center)[
  #text(rgb("#58565A"), size: 12pt, weight: "light", font: "Ibarra Real Nova")[
    Terrie & Noah

    08.11.25
  ]
]

#v(10pt)

#place(dy: -.65in, dx: .06in)[
  #rotate(-.85rad)[
    #image("leaf.png", width: 38%)
  ]
]



// Font - Ibarra Real Nova
// Font colour - #58565A
// Green - #305652


// 9CCC65

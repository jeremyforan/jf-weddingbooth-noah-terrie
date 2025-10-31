#import "template.typ": *


#show: project.with(
  title: "jf-photobooth-template",
  authors: (
    "Jeremy Foran",
  ),
  background: image("assets/props/6x2.png", scaling: "smooth", height: 100%),
)

#v(10pt)

#box(inset: 4mm)[#imageBlock(padding: 4mm)]

#v(10pt)

#align(center)[
  #text(white, weight: "extrabold", size: 14pt)[Example of Text]  
]

#v(10pt)

#align(center)[
  #text(white, weight: "semibold", size: 8pt)[Example of Sub-Text]  
]
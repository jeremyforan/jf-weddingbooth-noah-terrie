#let img1 = sys.inputs.at("image1", default: "assets/props/1.png")
#let img2 = sys.inputs.at("image2", default: "assets/props/2.png")
#let img3 = sys.inputs.at("image3", default: "assets/props/3.png")
#let img4 = sys.inputs.at("image4", default: "assets/props/4.png")
#let img5 = sys.inputs.at("image5", default: "assets/props/5.png")
#let img6 = sys.inputs.at("image6", default: "assets/props/6.png")
#let img7 = sys.inputs.at("image7", default: "assets/props/7.png")
#let img8 = sys.inputs.at("image8", default: "assets/props/8.png")
#let img9 = sys.inputs.at("image9", default: "assets/props/9.png")

#let strips = sys.inputs.at("strip", default: "single")

#let bleedInput = sys.inputs.at("bleed", default: "true")

#let bleed = if bleedInput == "true" { true } else { false } 

#let pageWidth = if strips == "double" { 4in } else { 2in } 


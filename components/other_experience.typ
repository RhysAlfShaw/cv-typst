#let meta = toml("../metadata.toml")
#import "../src/lib.typ": experience-entry
#let data = json("../cv.json")

= Other Experience

#v(5pt)

#for item in data.experience [
  #experience-entry(
    title: item.title
  )
  #set par(justify: true)
  #item.description

]



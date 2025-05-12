#let meta = toml("../metadata.toml")
#let data = json("../cv.json")
#import "../src/lib.typ": award-entry

= Awards
#v(5pt)

#for item in data.awards [
  #award-entry(
    degree: item.name,
    date: item.year,
    institution: item.institution,
    description: item.description,
  )
]
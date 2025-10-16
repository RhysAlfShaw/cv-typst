#let meta = toml("../metadata.toml")
#import "../src/lib.typ": experience-entry
#let data = json("../cv.json")

= Other Experience

#v(2pt)

#for item in data.experience [
  #experience-entry(
    title: item.title,
    company: item.company,
    location: item.location,
    date: item.date
  )
  #set par(justify: true)
  #item.description
]



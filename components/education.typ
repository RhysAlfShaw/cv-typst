#let meta = toml("../metadata.toml")
#let data = json("../cv.json")
#import "../src/lib.typ": education-entry

= Education
#v(2pt)

#for item in data.education [
  #education-entry(
    degree: item.degree,
    date: item.graduation_year,
    institution: item.institution,
    location: item.location,
    description: item.thesis,
    thesis: item.thesis
  )
]
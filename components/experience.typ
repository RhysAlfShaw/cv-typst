#let meta = toml("../metadata.toml")
#import "../src/lib.typ": experience-entry
#let data = json("../cv.json")

= Experience

#v(5pt)

#for item in data.work_experience [
  #experience-entry(
    title: item.job_title,
    date: item.end_date,
    company: item.company,
    location: item.location,
  )
  - #item.description

  #v(5pt)
]


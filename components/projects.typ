#let meta = toml("../metadata.toml")
#let data = json("../cv.json")

#import "../src/lib.typ": degree-style
#import "../src/lib.typ": institution-style
#import "../src/lib.typ": location-style


#let projects-entry(
  title: "Title",
  description: "Description",
  url: "",
) = {
  table(
    columns: (1fr, 1fr),
    inset: 0pt,
    stroke: none,
    row-gutter: 3mm,
    [#degree-style(title)],
    [#emph(link(url, "View Project"))],
  )

  v(5pt)
  description
  
}

= Projects
#v(5pt)
#for item in data.projects [
  #projects-entry(
    title: item.name,
    description: item.description,
    url: item.url,
  )
]
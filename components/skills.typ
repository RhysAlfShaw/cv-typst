#let meta = toml("../metadata.toml")
#import "../src/lib.typ": skill-entry
#let data = json("../cv.json")
#let accent-color = meta.color.accent
#let multicol = true
#let alignment = center


= Technical Skills

#v(0pt)


=== Programming languages

#skill-entry(
  accent-color,
  (1fr,1fr,1fr),
  alignment,
  skills: (data.skills.Programming),
)

=== ML/AI

#skill-entry(
  accent-color,
  (1fr,1fr),
  alignment,
  skills: (data.skills.AI),
)

=== Tools

#skill-entry(
  accent-color,
  (1fr,1fr,1fr),
  alignment,
  skills: (data.skills.Tools),
)
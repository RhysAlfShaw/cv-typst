// Imports

#let metadata = toml("../metadata.toml")

#let cvPublication(bib: "", keyList: list(), refStyle: "apa", refFull: true) = {
  let publicationStyle(str) = {
    text(str)
  }
  show bibliography: it => publicationStyle(it)
  set bibliography(title: none, style: refStyle, full: refFull)
  bib
}

= Publications

#cvPublication(
  bib: bibliography("../mypublications.bib"),
  keyList: (
    "shaw_druid_2025",
    "collaboration_euclid_2025",
  ),
  refStyle: "apa",
)
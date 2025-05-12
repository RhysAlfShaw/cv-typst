#let meta = toml("../metadata.toml")
#let data = json("../cv.json")
// = Summary
= Summary

#v(5pt)
#set par(justify: true)
#data.summary
#v(5pt)

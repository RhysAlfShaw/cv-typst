#let meta = toml("../metadata.toml")
#let data = json("../cv.json")
// = Summary
= Summary

#v(2pt)
#set par(justify: true)
#data.summary
#v(2pt)

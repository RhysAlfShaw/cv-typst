#let meta = toml("metadata.toml")

#import "src/lib.typ": cv
#let photo = image("data/ProfilePicturePhoto.jpg")

#let import-sections(
  sections,
) = {
  for section in sections {
    include {
      "components/" + section + ".typ"
    }
  }
}

#let left-pane = (
  "experience",
  "other_experience",
  "publication",
)

#let right-pane = (
  "profile",
  "education",
  "skills",
)

#show: cv.with(
  meta,
  photo: photo,
  use-photo: true,
  left-pane: import-sections(left-pane),
  right-pane: import-sections(right-pane),
  left-pane-proportion: eval(meta.layout.left_pane_width),
)
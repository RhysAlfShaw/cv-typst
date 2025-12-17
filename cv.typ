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

#let right-pane = (
  "experience",
  "other_experience",
  "projects",
  "publication",
)

#let left-pane = (
  "profile",
  "education",
  "awards",
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
#import "src/lib.typ": cv

#let data = json("cv.json")
#let metadata = toml("metadata.toml")

#let importModules(modules) = {
  for module in modules {
    include {
      "components/" + module + ".typ"
    }
  }
}



#show: cv.with(
  metadata,
  profilePhoto: image("data/ProfilePicturePhoto.jpg"),
)
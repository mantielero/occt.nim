import occt

proc main =
  var aBox = box(10, 20, 30)
  for aFace in aBox.getFaces:
    echo typeof(aFace)

main()
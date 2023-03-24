import occt

proc main =
  var aBox = box(10, 20, 30)
  for anEdge in aBox.getEdges:
    echo typeof(anEdge)

main()
import occt


proc main =
  var box = box(1.0, 2.0, 3.0)
  var doc = newDocument()
  let redColor = newQuantityColor(1.0, 0.0, 0.0, Quantity_TOC_RGB)
  doc.addShape( box, redColor )
  doc.toStep("step02_redcolor.stp")

main()


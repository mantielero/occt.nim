import occt


proc main =
  var box = box(1.0, 2.0, 3.0)
  var doc = newDocument()
  let redColor = newQuantityColor(1.0, 0.0, 0.0, Quantity_TOC_RGB)
  doc.addShape( box, redColor )
  doc.toStep("step02_redcolor.stp")

main()


#[
// create material with red color
Graphic3d_MaterialAspect materialAspect;
materialAspect.SetAmbientColor(Quantity_Color(1.0, 0.0, 0.0, Quantity_TOC_RGB));
materialAspect.SetDiffuseColor(Quantity_Color(1.0, 0.0, 0.0, Quantity_TOC_RGB));
materialAspect.SetSpecularColor(Quantity_Color(1.0, 1.0, 1.0, Quantity_TOC_RGB));
materialAspect.SetShininess(50.0);
]#

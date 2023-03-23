# Not working
import occt

proc main =
  var box = box(1.0, 2.0, 3.0)
  var doc = newDocument()
  var materialAspect:Handle[Graphic3d_MaterialAspect] = newGraphic3dMaterialAspectRef()
  `*`(materialAspect).setAmbientColor(newQuantityColor(1.0, 0.0, 0.0, Quantity_TOC_RGB))
  `*`(materialAspect).setDiffuseColor(newQuantityColor(0.0, 1.0, 0.0, Quantity_TOC_RGB))
  `*`(materialAspect).setSpecularColor(newQuantityColor(1.0, 0.0, 0.0, Quantity_TOC_RGB))

  #let redColor = newQuantityColor(1.0, 0.0, 0.0, Quantity_TOC_RGB)
  doc.addShape( box, materialAspect )
  doc.toStep("step03_redmaterial.stp")


# proc newAIS_Shape*(shap: TopoDS_Shape): AIS_Shape {.cdecl, constructor,
#     importcpp: "AIS_Shape(@)", header: "AIS_Shape.hxx".}

# proc newQuantityColor*(): QuantityColor {.cdecl, constructor,
#                                        importcpp: "Quantity_Color(@)",
#                                        header: "Quantity_Color.hxx".}

proc newGraphic3dMaterialAspectRef*(): Handle[Graphic3dMaterialAspect] {.cdecl, 
    importcpp: "new Graphic3d_MaterialAspect(@)", header: "Graphic3d_MaterialAspect.hxx".}

proc main2 =
  var aBox = box(10,20,30)
  #var colorScale = newAisColorScale() # Create a property for the shape's color
  #echo typeof(colorScale)
  # set color to red
  var materialAspect:Handle[Graphic3d_MaterialAspect] = newGraphic3dMaterialAspectRef()
  `*`(materialAspect).setAmbientColor(newQuantityColor(1.0, 0.0, 0.0, Quantity_TOC_RGB))
  `*`(materialAspect).setDiffuseColor(newQuantityColor(0.0, 1.0, 0.0, Quantity_TOC_RGB))
  `*`(materialAspect).setSpecularColor(newQuantityColor(1.0, 0.0, 0.0, Quantity_TOC_RGB))

  # Create a presentation for the shape and set its color property
  var s = aBox.shape
  #s.setMaterial(materialAspect)
  var shapePresentation = newAIS_Shape( aBox.shape )

  #`*`(shapePresentation).setColorScale(colorScale)
  #`*`(shapePresentation).setColor(color)  # setcolorscale
  `*`(shapePresentation).setMaterial(`*`(materialAspect))
  # Export the shape to a STEP file
  #`*`(shapePresentation).toStep("step02.stp")
  s.toStep("step03.stp")
  # var writer = newSTEPControlWriter() 
  # discard writer.transfer(shapePresentation)  
  # discard writer.write("step02.stp") 

main()

#[

// create material with red color
Graphic3d_MaterialAspect materialAspect;
materialAspect.SetAmbientColor(Quantity_Color(1.0, 0.0, 0.0, Quantity_TOC_RGB));
materialAspect.SetDiffuseColor(Quantity_Color(1.0, 0.0, 0.0, Quantity_TOC_RGB));
materialAspect.SetSpecularColor(Quantity_Color(1.0, 1.0, 1.0, Quantity_TOC_RGB));
materialAspect.SetShininess(50.0);

]#


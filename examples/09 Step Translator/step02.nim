import occt

proc newAisColorScale*():Handle[AIS_ColorScale] {.cdecl,
        importcpp: "new AIS_ColorScale()", 
        header: "AIS_ColorScale.hxx".}


# proc newAIS_Shape*(shap: TopoDS_Shape): AIS_Shape {.cdecl, constructor,
#     importcpp: "AIS_Shape(@)", header: "AIS_Shape.hxx".}

# proc newQuantityColor*(): QuantityColor {.cdecl, constructor,
#                                        importcpp: "Quantity_Color(@)",
#                                        header: "Quantity_Color.hxx".}

proc main =
  var aBox = box(10,20,30)
  var colorScale = newAisColorScale() # Create a property for the shape's color
  echo typeof(colorScale)
  # set color to red
  var color = newQuantityColor(1.0, 0.0, 0.0, Quantity_TOC_RGB)
  echo typeof(color)
  `*`(colorScale).setColor(color)

  # Create a presentation for the shape and set its color property
  var shapePresentation = newAIS_Shape( aBox.shape )
  #`*`(shapePresentation).setColorScale(colorScale)
  `*`(shapePresentation).setColor(color)  # setcolorscale

  # Export the shape to a STEP file
  `*`(shapePresentation).toStep("step02.stp")
  # var writer = newSTEPControlWriter() 
  # discard writer.transfer(shapePresentation)  
  # discard writer.write("step02.stp") 

main()

#[

STEPControl_Writer writer;
writer.Transfer(shapePresentation);
writer.Write("output.stp");
]#

#[
// include necessary headers
#include <Graphic3d_MaterialAspect.hxx>

// create material with red color
Graphic3d_MaterialAspect materialAspect;
materialAspect.SetAmbientColor(Quantity_Color(1.0, 0.0, 0.0, Quantity_TOC_RGB));
materialAspect.SetDiffuseColor(Quantity_Color(1.0, 0.0, 0.0, Quantity_TOC_RGB));
materialAspect.SetSpecularColor(Quantity_Color(1.0, 1.0, 1.0, Quantity_TOC_RGB));
materialAspect.SetShininess(50.0);
]#
import occt

proc main =
  var mybox = box(1.0, 2.0, 3.0)
  mybox.build()
  var solid:TopoDS_Solid =  mybox.solid()
  if solid.isNull:
    raise newException(ValueError, "Can't export null shape to STEP")

  var theViewer:Handle[V3d_Viewer]
  var aContext:Handle[AIS_InteractiveContext] = newAIS_InteractiveContext(theViewer) 
  #var aWedgeMaker:
  #aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx); 
  var aShape:TopoDS_Solid = solid #aShape = aWedgeMaker.Solid();
  var aShapePrs:Handle[AIS_Shape] = newAIS_Shape(aShape)
  #Handle(AIS_Shape) aShapePrs =  # creation of the presentable object
  `*`(aContext).display(aShapePrs, AIS_Shaded.cint, 0, true) #;   // display the presentable object and redraw 3d viewer

main()
import occt

proc main =
  var box = newBRepPrimAPI_MakeBox(1.0, 2.0, 3.0)
  box.build()
  var solid:TopoDS_Solid =  box.solid()
  if solid.isNull:
    raise newException(ValueError, "Can't export null shape to STEP")

  # Writer
  var theViewer:Handle[V3dViewer]
   

main()

#[
Handle(V3d_Viewer) theViewer;
Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext (theViewer);
 
BRepPrimAPI_MakeWedge aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx);
TopoDS_Solid aShape = aWedgeMaker.Solid();
Handle(AIS_Shape) aShapePrs = new AIS_Shape (aShape); // creation of the presentable object
aContext->Display (aShapePrs, AIS_Shaded, 0, true);   // display the presentable object and redraw 3d viewer  
]#
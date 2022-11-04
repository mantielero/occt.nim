# https://unlimited3d.wordpress.com/2021/03/27/occt-minimal-viewer-setup/
# https://dev.opencascade.org/doc/overview/html/occt_user_guides__visualization.html
import occt

proc main =
  var mybox = box(1.0, 2.0, 3.0)
  mybox.build()
  var solid:TopoDS_Solid =  mybox.solid()
  if solid.isNull:
    raise newException(ValueError, "Can't export null shape to STEP")


  # Convert: TopoDS_Solid -> Handle[AIS_Shape]
  # https://dev.opencascade.org/content/understanding-basic-example
  var aShapePrs:Handle[AIS_Shape] = newHandle( cnew newAIS_Shape( solid) )  # Handle(AIS_Shape) 

  # Viewer  https://github.com/nim-lang/Nim/issues/4108  https://forum.nim-lang.org/t/8660#56349
  
  
  var theViewer:Handle[V3dViewer]
  echo "The theViewer is nil: ", theViewer.isNull
  var tmp2 = cnew newAIS_InteractiveContext(theViewer) 
  echo tmp2 == nil
  var aContext:HandleAIS_InteractiveContext = newHandle( cnew newAIS_InteractiveContext(theViewer) )   # HandleAISInteractiveContext
  echo "ok2"  
  
  #echo repr aContext
  #if aContext.isNull:
  #  echo "NULL"
  #echo "OK"
  #var aContext:AIS_InteractiveContext = cnew newAIS_InteractiveContext(theViewer)   # HandleAISInteractiveContext
  #var hObject:Handle[AIS_InteractiveObject] = constructHandle[Handle[AIS_InteractiveObject]]()
  `*`(aContext).display(aShapePrs, AIS_Shaded.cint, 0.cint, true)

main()

#[
Handle(V3d_Viewer) theViewer;
Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext (theViewer);
 
BRepPrimAPI_MakeWedge aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx);
TopoDS_Solid aShape = aWedgeMaker.Solid();

Handle(AIS_Shape) aShapePrs = new AIS_Shape (aShape); // creation of the presentable object
aContext->Display (aShapePrs, AIS_Shaded, 0, true);   // display the presentable object and redraw 3d viewer  
]#
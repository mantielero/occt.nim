# https://unlimited3d.wordpress.com/2021/03/27/occt-minimal-viewer-setup/
# https://dev.opencascade.org/doc/overview/html/occt_user_guides__visualization.html
import occt

proc main =
  # 1. Create a new shape # TopoDS_Shape myBottle = MakeBottle(70., 120., 30.); // from the official tutorial
  var mybox = box(1.0, 2.0, 3.0)
  mybox.build()
  var solid:TopoDS_Solid =  mybox.solid()
  if solid.isNull:
    raise newException(ValueError, "Can't export null shape to STEP")


  # Convert: TopoDS_Solid -> Handle[AIS_Shape]
  # https://dev.opencascade.org/content/understanding-basic-example
  var aShapePrs:Handle[AIS_Shape] = newHandle( cnew newAIS_Shape( solid) )  # Handle(AIS_Shape) 

  # Viewer  https://github.com/nim-lang/Nim/issues/4108  https://forum.nim-lang.org/t/8660#56349
  
  
  var theViewer:Handle[V3dViewer]  # Handle(V3d_Viewer) theViewer;
  #echo "The theViewer is nil: ", theViewer.isNull
  #var tmp2 = cnew newAIS_InteractiveContext(theViewer) 
  #echo tmp2 == nil


  # Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext (theViewer);
  var aContext:HandleAIS_InteractiveContext = newHandle( cnew newAIS_InteractiveContext(theViewer) )   # HandleAISInteractiveContext
  echo "ok2"  
  #echo repr aContext
  #if aContext.isNull:
  #  echo "NULL"
  #echo "OK"

  
  #Handle(Aspect_DisplayConnection) aDisplayConnection;
  #var aDisplayConnection:Handle[Aspect]

  `*`(aContext).display(aShapePrs, AIS_Shaded.cint, 0.cint, true)


main()

#[


 
BRepPrimAPI_MakeWedge aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx);
TopoDS_Solid aShape = aWedgeMaker.Solid();

Handle(AIS_Shape) aShapePrs = new AIS_Shape (aShape); // creation of the presentable object
aContext->Display (aShapePrs, AIS_Shaded, 0, true);   // display the presentable object and redraw 3d viewer  
]#

#[
    

    
    Handle(OpenGl_GraphicDriver) aGraphicDriver = new OpenGl_GraphicDriver(aDisplayConnection);

    //Handle(Xw_Window) aWindow = new Xw_Window(aDisplayConnection, (short* const)"myViewer", 0, 0, 640, 480);
    // this is commented because it returns error, It's bad implemented

    Handle(V3d_Viewer) aViewer = new V3d_Viewer(aGraphicDriver, (short* const)"Viewer");
    aViewer->SetDefaultLights();
    aViewer->SetLightOn();

    Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext(aViewer);
    Handle(AIS_Shape) anAISShape = new AIS_Shape(myBottle);
    aContext->SetDisplayMode(AIS_Shaded);
    aContext->Display(anAISShape);
]#
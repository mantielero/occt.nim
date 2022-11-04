# https://unlimited3d.wordpress.com/2021/03/27/occt-minimal-viewer-setup/
import occt

# 1. Graphic driver initialization
#[
Handle(Aspect_DisplayConnection) aDisplay =
  new Aspect_DisplayConnection();
Handle(OpenGl_GraphicDriver) aGlDriver =
  new OpenGl_GraphicDriver (aDisplay);
aGlDriver->ChangeOptions().swapInterval = 1;
Handle(Graphic3d_GraphicDriver) aDriver = aGlDriver;
]#
var aDisplay:HandleAspectDisplayConnection = newHandle( cnew newAspectDisplayConnection() )
var aGlDriver:HandleOpenGl_GraphcDriver    = newHandle( cnew newOpenGl_GraphicDriver(aDisplay) )





#[
csource "Standard_Handle.hxx":
  type
    Handle*[T] {.cgen:"(Handle::$1(@))".} = object of CClass

csource "V3D_Viewer.hxx":
  type
    V3dViewer* {.cgen:"(V3d_Viewer::$1(@))".} = object of CClass

]#
#[
Handle(V3d_Viewer) theViewer;
Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext (theViewer);
 
BRepPrimAPI_MakeWedge aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx);
TopoDS_Solid aShape = aWedgeMaker.Solid();

Handle(AIS_Shape) aShapePrs = new AIS_Shape (aShape); // creation of the presentable object
aContext->Display (aShapePrs, AIS_Shaded, 0, true);   // display the presentable object and redraw 3d viewer      
]#
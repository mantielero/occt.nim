# https://unlimited3d.wordpress.com/2021/03/27/occt-minimal-viewer-setup/
import occt

# 1. Graphic driver initialization
#[
Handle(Aspect_DisplayConnection) aDisplay = new Aspect_DisplayConnection();
Handle(OpenGl_GraphicDriver) aGlDriver =  new OpenGl_GraphicDriver (aDisplay);
aGlDriver->ChangeOptions().swapInterval = 1;
Handle(Graphic3d_GraphicDriver) aDriver = aGlDriver;
]#
var aDisplay:HandleAspectDisplayConnection = newHandle( cnew newAspectDisplayConnection() )
var aGlDriver:Handle[OpenGl_GraphicDriver] = newHandle( cnew newOpenGl_GraphicDriver(aDisplay) )
`*`(aGlDriver).changeOptions().swapInterval = 1
#var aDriver:Handle[Graphic3dGraphicDriver] = aGlDriver


#Handle(Aspect_DisplayConnection) aDisplay = new Aspect_DisplayConnection();
# :Handle[AspectWindow] 
var aWindow = newHandle( cnew newXwWindow(aDisplay, "Window Title", 0, 0, 640, 480))


# 3. Viewer and Views
var theDriver:Handle[Graphic3dGraphicDriver] # Handle(Graphic3d_GraphicDriver) theDriver;
#theDriver = newHandle( cnew OpenGl_GraphicDriver("TKOpenGl") ) 
var aViewer:Handle[V3d_Viewer] = newHandle( cnew newV3dViewer( theDriver ) ) # Handle(V3d_Viewer) aViewer =  new V3d_Viewer (theDriver);
var aView:Handle[V3d_View] = newHandle( cnew newV3dView(aViewer) )   # Handle(V3d_View) aView = new V3d_View (aViewer);
var tmp = `*`(aView).setImmediateUpdate( false )       # aView->SetImmediateUpdate (false);
`*`(aView).setShadingModel( graphic3dTOSM_FRAGMENT )  # aView->SetShadingModel (Graphic3d_TOSM_FRAGMENT);


var theWindow:Handle[Aspect_Window]  # Handle(Aspect_Window) theWindow;
`*`(aView).setWindow( theWindow )    # aView->SetWindow (theWindow);
`*`(aView).setBackgroundColor( newQuantityColor(quantityNOC_GRAY50) )    # aView->SetBackgroundColor (Quantity_NOC_GRAY50);
`*`(`*`(aView).camera()).setProjectionType(Projection_Orthographic) # aView->Camera()->SetProjectionType (Graphic3d_Camera::Projection_Orthographic);
`*`(aView).triedronDisplay()  # aView->TriedronDisplay();




# while true:
#   discard


#[
Handle(V3d_Viewer) theViewer;
Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext (theViewer);
 
BRepPrimAPI_MakeWedge aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx);
TopoDS_Solid aShape = aWedgeMaker.Solid();

Handle(AIS_Shape) aShapePrs = new AIS_Shape (aShape); // creation of the presentable object
aContext->Display (aShapePrs, AIS_Shaded, 0, true);   // display the presentable object and redraw 3d viewer      
]#
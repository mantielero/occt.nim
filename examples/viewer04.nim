import occt


#type
#  OcctAisHello* = object of AIS_ViewController  # OcctAisHello : public AIS_ViewController

#proc newOcctAisHello*():OcctAisHello =
#  discard

#proc downcast


proc main =
  # graphic driver setup
  var aDisplay:Handle[Aspect_DisplayConnection] = newHandle( cnew newAspectDisplayConnection() )
  var aDriverOpenGl:Handle[OpenGlGraphicDriver] = newHandle( cnew newOpenGlGraphicDriver(aDisplay) )
  var aDriver:Handle[Graphic3d_GraphicDriver] = newHandle( cast[ptr Graphic3d_GraphicDriver](aDriverOpenGl.get) )
  #var aDriver:Graphic3d_GraphicDriver   = aDriverOpenGl.downcast  


  # viewer setup
  var aViewer:Handle[V3d_Viewer] = newHandle( cnew newV3dViewer( aDriver ) )
  `*`(aViewer).setDefaultLights()
  `*`(aViewer).setLightOn()

  # view setup
  var myView = newHandle( cnew newV3dView(aViewer) )
  var aWindow:Handle[Xw_Window] = newHandle( cnew newXwWindow(aDisplay, "OCCT Viewer", 100, 100, 512, 512) )
  var aWinAspect:Handle[AspectWindow] = newHandle( cast[ptr AspectWindow](aWindow.get) )
  # Atom aDelWinAtom = aDisplay->GetAtom (Aspect_XA_DELETE_WINDOW);
  `*`(myView).setWindow(aWinAspect)
  `*`(myView).setBackgroundColor( newQuantityColor(quantity_NOC_GRAY50) )
  `*`(myView).triedronDisplay( aspectTOTP_LEFT_LOWER, newQuantityColor(quantity_NOC_WHITE), 0.1 )
  `*`(myView).changeRenderingParams().renderResolutionScale = 2.0

  # interactive context and demo scene
  var myContext = newHandle( cnew newAISInteractiveContext(aViewer) )

  #var aSolid:TopoDS_Solid = box(100.0,100.0,100.0).solid()
  var mybox = box(1.0, 2.0, 3.0)
  mybox.build()
  var solid:TopoDS_Solid =  mybox.solid()
  if solid.isNull:
    raise newException(ValueError, "Can't export null shape to STEP")

  var aShape:TopoDS_Shape = solid
  var aShapeAis:Handle[AIS_Shape] = newHandle( cnew newAISShape(aShape) )
  var aShapePrs:Handle[AIS_InteractiveObject] = newHandle( cast[ptr AIS_InteractiveObject](aShapeAis.get) )
  `*`(myContext).display(aShapeAis, AIS_Shaded.cint, 0, false)
  `*`(myView).fitAll(0.01, false)

  `*`(aWindow).map()
  `*`(myView).reDraw()

  # X11 event loop
  
  #var aWindow:Handle[Xw_Window] = newHandle( cast[ptr Xw_Window]( `*`(`*`(aViewer).view()).window) )
  #Handle(Xw_Window) aWindow = Handle(Xw_Window)::DownCast (aViewer.View()->Window());
  #Handle(Aspect_DisplayConnection) aDispConn = aViewer.View()->Viewer()->Driver()->GetDisplayConnection();
  #var aDispConn = 

  #var aContext:Handle[AIS_InteractiveContext] = newHandle( cnew newAIS_InteractiveContext( theViewer ) )


  #var aShapePrs:Handle[AIS_Shape] = newHandle( cnew newAIS_Shape(solid) )
  #`*`(aContext).display(aShapePrs, 0, 0, true) # AIS_Shaded


#var aDisplay = newHandle( cnew newAspectDisplayConnection() )
#var aGlDriver:Handle[OpenGl_GraphicDriver] = newHandle( cnew newOpenGl_GraphicDriver(aDisplay) )

#[

BRepPrimAPI_MakeWedge aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx);
TopoDS_Solid aShape = aWedgeMaker.Solid();
Handle(AIS_Shape) aShapePrs = new AIS_Shape (aShape); // creation of the presentable object

aContext->Display (aShapePrs, AIS_Shaded, 0, true);   // display the presentable object and redraw 3d viewer
]#

#[
// g++ ex07_viewer.cc -I/usr/include/opencascade -lTKernel -lTKMath -lTKSTEP -lTKTopAlgo -lTKG3d  -lTKPrim -lTKBO -lTKV3d -lTKService -lTKOpenGl -lX11 -o ex07_viewer

#include <Xw_Window.hxx>
#include <X11/Xlib.h>


//! Sample single-window viewer class.
class OcctAisHello : public AIS_ViewController
{
public:
  //! Main constructor.
  OcctAisHello()
  {



  }

  //! Return context.
  const Handle(AIS_InteractiveContext)& Context() const { return myContext; }

  //! Return view.
  const Handle(V3d_View)& View() const { return myView; }

//private:
  //! Handle expose event.
/*   virtual void ProcessExpose() override
  {
    if (!myView.IsNull())
    {
      FlushViewEvents (myContext, myView, true);
    }
  }

  //! Handle window resize event.
  virtual void ProcessConfigure (bool theIsResized) override
  {
    if (!myView.IsNull() && theIsResized)
    {
      myView->Window()->DoResize();
      myView->MustBeResized();
      myView->Invalidate();
      FlushViewEvents (myContext, myView, true);
    }
  }

  //! Handle input.
  virtual void ProcessInput() override
  {
    if (!myView.IsNull())
    {
      ProcessExpose();
    }
  } */


private:

  Handle(AIS_InteractiveContext) myContext;
  Handle(V3d_View) myView;
};

int main()
{
  OSD::SetSignal (false);

  OcctAisHello aViewer;

  // X11 event loop
  Handle(Xw_Window) aWindow = Handle(Xw_Window)::DownCast (aViewer.View()->Window());
  Handle(Aspect_DisplayConnection) aDispConn = aViewer.View()->Viewer()->Driver()->GetDisplayConnection();
  for (;;)
  {
    XEvent anXEvent;
  }

  return 0;
}
]#
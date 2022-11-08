import occt
import x11/xlib
#-----
# 1. Type definition
#------
type
  OcctAisHello* = object of AIS_ViewController
    myContext*:Handle[AISInteractiveContext]
    myView*:Handle[V3d_View]


# Return context.
proc context(this:OcctAisHello):Handle[AIS_InteractiveContext] =
  return this.myContext


# Return view.
proc view(this:OcctAisHello):Handle[V3d_View] =
  return this.myView


# proc processExpose(this:OcctAisHello) =
#   if !this.myView.isNull():
#     flushViewEvents (myContext, myView, true)

  # //! Handle expose event.
  # virtual void ProcessExpose() override
  # {
  #   if (!myView.IsNull())
  #   {
  #     FlushViewEvents (myContext, myView, true);
  #   }
  # }


  # //! Handle window resize event.
  # virtual void ProcessConfigure (bool theIsResized) override
  # {
  #   if (!myView.IsNull() && theIsResized)
  #   {
  #     myView->Window()->DoResize();
  #     myView->MustBeResized();
  #     myView->Invalidate();
  #     FlushViewEvents (myContext, myView, true);
  #   }
  # }

  # //! Handle input.
  # virtual void ProcessInput() override
  # {
  #   if (!myView.IsNull())
  #   {
  #     ProcessExpose();
  #   }
  # }


# --------------------------------------
# 2. This is the constructor
# --------------------------------------
proc getContextAndView*():tuple[context:Handle[AIS_InteractiveContext], view:Handle[V3dView]] =
  # graphic driver setup
  var aDisplay:Handle[Aspect_DisplayConnection] = newHandle( cnew newAspectDisplayConnection() )
  var aDriverOpenGl:Handle[OpenGlGraphicDriver] = newHandle( cnew newOpenGlGraphicDriver(aDisplay) )
  var aDriver:Handle[Graphic3d_GraphicDriver]   = newHandle( cast[ptr Graphic3d_GraphicDriver](aDriverOpenGl.get) )
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
  return (context:myContext, view:myView)


# --------------------------------------
# 3. Here it is define the main function
# --------------------------------------
proc main =
  var aViewer:OcctAisHello
  (aViewer.myContext, aViewer.myView) = getContextAndView()
  # X11 event loop
  var aWindow:Handle[Xw_Window] = newHandle( cast[ptr Xw_Window]( get(window( *aViewer.view() ))  ) )
  #echo typeof(getDisplayConnection(*driver( *viewer(*aViewer.view() ))) )
  var aDispConn:Handle[Aspect_DisplayConnection] = getDisplayConnection(*driver( *viewer(*aViewer.view() ))) 
  
  var anXDisplayPtr = getDisplay( `*`(aDispConn) ) 
  while true:
    discard

main()

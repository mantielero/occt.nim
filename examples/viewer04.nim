import occt
#import x11/xlib

#-------------------
# 1. Type definition
#-------------------
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

# Handle expose event
# https://dev.opencascade.org/doc/refman/html/class_a_i_s___view_controller.html#a4265b9ecc5d7fda71c7b883ec03fd636
method processExpose(this:var OcctAisHello) {.exportc.} = 
  if not this.myView.isNull:
    this.flushViewEvents( this.myContext, this.myView, true )

# Handle window resize event.
method processConfigure(this:var OcctAisHello; theIsResized:bool) {.exportc.} = 
  if not this.myView.isNull and theIsResized:
    discard doResize(*(window(*(this.myView))))
    mustBeResized( *(this.myView) )
    invalidate( *(this.myView) )
    this.flushViewEvents( this.myContext, this.myView, true )

# Handle input.
method processInput(this:var OcctAisHello) {.exportc.} =
  if not this.myView.isNull:
    this.processExpose()


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
proc processMessage*(this: var XwWindow; theListener: var AIS_ViewController;
                    theMsg: var XEvent): bool {.cdecl, importcpp: "ProcessMessage".}

proc main =
  var aViewer:OcctAisHello
  (aViewer.myContext, aViewer.myView) = getContextAndView()
  # X11 event loop
  var aWindow:Handle[Xw_Window] = newHandle( cast[ptr Xw_Window]( get(window( *aViewer.view() ))  ) )
  var aDispConn:Handle[Aspect_DisplayConnection] = getDisplayConnection(*driver( *viewer(*aViewer.view() ))) 
  var display = getDisplayAspect( *aDispConn )
  var event: XEvent
  #var eventPtr:ptr XEvent = event.addr
  var anDisplay = cast[ptr Display](display)
  while true:
    discard XNextEvent(anDisplay, event.addr)  # XNextEvent (anXDisplay, &anXEvent);
    #var anEvent = cast[ptr XEvent](XEvent)
    discard (*aWindow).processMessage(aViewer, event)
    #if event.type == ClientMessage && (Atom)anXEvent.xclient.data.l[0] == aDispConn->GetAtom(Aspect_XA_DELETE_WINDOW))
    #  return 0 #; // exit when window is closed

main()

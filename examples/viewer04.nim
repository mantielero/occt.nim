import occt

var mybox = box(1.0, 2.0, 3.0)
mybox.build()
var solid:TopoDS_Solid =  mybox.solid()
if solid.isNull:
  raise newException(ValueError, "Can't export null shape to STEP")

var theViewer:Handle[V3d_Viewer] #= newHandle( cnew newV3dViewer( theDriver ) )
var aContext:Handle[AIS_InteractiveContext] = newHandle( cnew newAIS_InteractiveContext( theViewer ) )


var aShapePrs:Handle[AIS_Shape] = newHandle( cnew newAIS_Shape(solid) )
`*`(aContext).display(aShapePrs, 0, 0, true) # AIS_Shaded


#var aDisplay = newHandle( cnew newAspectDisplayConnection() )
#var aGlDriver:Handle[OpenGl_GraphicDriver] = newHandle( cnew newOpenGl_GraphicDriver(aDisplay) )

#[

BRepPrimAPI_MakeWedge aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx);
TopoDS_Solid aShape = aWedgeMaker.Solid();
Handle(AIS_Shape) aShapePrs = new AIS_Shape (aShape); // creation of the presentable object

aContext->Display (aShapePrs, AIS_Shaded, 0, true);   // display the presentable object and redraw 3d viewer
]#
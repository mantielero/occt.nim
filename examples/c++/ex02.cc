#include "gp_Pnt.hxx"
#include "V3d_View.hxx"
#include "AIS_InteractiveContext.hxx"
#include "AIS_Shape.hxx"
#include "Geom_TrimmedCurve.hxx"
#include "TopoDS_Edge.hxx"
#include "GC_MakeSegment.hxx"
#include "BRepBuilderAPI_MakeEdge.hxx"
/*
Handle(AIS_InteractiveContext)  myContext;
// Handle(AIS_Shape) AISShape;
Handle(V3d_View)                myView;

gp_Pnt point1 (0 , 0 , 0);
gp_Pnt point2 (200 , 0 , 0);
Handle(Geom_TrimmedCurve) segment = GC_MakeSegment(point1 , point2);
TopoDS_Edge edge = BRepBuilderAPI_MakeEdge(segment);

Handle(AIS_Shape) aShapePrs = new AIS_Shape(edge);


Handle(V3d_Viewer) theViewer;
Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext (theViewer);
aContext->SetDisplayMode(aShapePrs,1,Standard_False);
aContext->Display(aShapePrs, Standard_False);  
// myView->Update();

aContext->Display (aShapePrs, AIS_Shaded, 0, true);
*/

BRepPrimAPI_MakeWedge aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx);
TopoDS_Solid aShape = aWedgeMaker.Solid();
Handle(AIS_Shape) aShapePrs = new AIS_Shape (aShape); // creation of the presentable object

Handle(V3d_Viewer) theViewer;
Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext (theViewer);
aContext->Display (aShapePrs, AIS_Shaded, 0, true);   // display the presentable object and redraw 3d viewer  
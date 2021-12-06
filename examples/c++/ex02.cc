
Handle(AIS_InteractiveContext)  myContext;
Handle(AIS_Shape) AISShape;
Handle(V3d_View)                myView;

gp_Pnt point1 (0 , 0 , 0);
gp_Pnt point2 (200 , 0 , 0);
Handle(Geom_TrimmedCurve) segment = GC_MakeSegment(point1 , point2);
TopoDS_Edge edge = BRepBuilderAPI_MakeEdge(segment);

AISShape = new AIS_Shape(myShape);
myContext->SetDisplayMode(AISShape,1,Standard_False);
myContext->Display(AISShape, Standard_False);  
myView->Update();
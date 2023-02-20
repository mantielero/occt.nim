# https://neweopencascade.wordpress.com/2018/10/17/lets-talk-about-fillets/
# https://neweopencascade.wordpress.com/2018/10/18/lets-keep-talking-about-fillets/
import occt

  
var
  l_cyl1 = 100f
  r_cyl1 =  20f
  l_cyl2 =  30f
  r_cyl2 =   5f

  ax2_cyl1 = ax2( pnt(0, -l_cyl1 * 0.5, 0 ), dir(0,1,0) )
  ax2_cyl2:Ax2Obj

  cyl1 = cylinder( ax2_cyl1, r_cyl1, l_cyl1).shape()
  cyl2 = cylinder( ax2_cyl2, r_cyl2, l_cyl2).shape()

  fuseOp:BRepAlgoAPI_Fuse

  toolShapes, argShapes: TopTools_ListOfShape # NCollectionList[TopoDS_Shape]

argShapes.append(cyl1)
toolShapes.append(cyl2)

fuseOp.setTools(toolShapes)
fuseOp.setArguments(argShapes)
fuseOp.build()
#fuseOp.shape.toStep("fuseOp.stp")

var 
  sectionEdges:NCollectionList[TopoDS_Shape] = fuseOp.sectionEdges()

# Constant radius fillet
var #<-----
  rFillet:cdouble  = 1.0



var filletOpPtr = cnew newFillet(fuseOp.shape() ) #fuseOp.shape() ) 

# Por qué falla: var tmp = filletOpPtr[] 
#echo typeof(filletOpPtr[])


for edShape in sectionEdges.items:
  var ed:TopoDS_Edge = TopoDS_Edge(edShape) 
  #echo typeof(ed)
  (filletOpPtr[]).add(rFillet, ed)

(filletOpPtr[]).build()

(filletOpPtr[]).shape.toStep("fillet.stp")
# #proc `[]`*[T](it: NCollectionTListIterator[T]): T {.importcpp: "*#".}
# Value



#[ 

filletOp.Add(rFillet,ed);
}
filletOp.Build();
]#

#[ Variable radius fillet

BRepFilletAPI_MakeFillet filletOp(fuseOp.Shape());
 
double rFillet[3] = {1. , 2. ,3.};
 
int iEd=0;
 
for(auto edShape : sectionEdges){
 
TopoDS_Edge ed = TopoDS::Edge(edShape);//sectionEdges is la list of shapes,
 
//so a cast is required
 
filletOp.Add(rFillet[iEd % 3],rFillet[(iEd+1) % 3],ed);
 
iEd++;
 
}
 
filletOp.Build();
]#
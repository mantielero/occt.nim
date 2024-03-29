import ../../wrapper/occt_wrapper

type
  ThickSolid* = BRepOffsetAPI_MakeThickSolid


proc makeThickSolidByJoin*(
        S: TopoDS_Shape;
        ClosingFaces: TopTools_ListOfShape;
        Offset: float; 
        Tol: float;
        Mode: BRepOffset_Mode = BRepOffset_Skin;
        Intersection: bool = false;
        SelfInter: bool = false;
        Join: GeomAbsJoinType = GeomAbs_Arc;
        RemoveIntEdges: bool = false;
        theRange: Message_ProgressRange = Message_ProgressRange()): TopoDS_Shape =
  var aSolidMaker:ThickSolid
  aSolidMaker.makeThickSolidByJoin(S, ClosingFaces, Offset, Tol, Mode, 
      Intersection, SelfInter, Join, RemoveIntEdges, theRange)
  return aSolidMaker.shape()


# proc makeThickSolidByJoin*(this: var BRepOffsetAPI_MakeThickSolid; 
#                           S: TopoDS_Shape;
#                           ClosingFaces: TopTools_ListOfShape; 
#                           Offset: cfloat;
#                           Tol: cfloat; 
#                           Mode: BRepOffset_Mode = BRepOffset_Skin;
#                           Intersection: bool = false; SelfInter: bool = false;
#                           Join: GeomAbs_JoinType = GeomAbs_Arc;
#                           RemoveIntEdges: bool = false; 
#                           theRange: Message_ProgressRange = Message_ProgressRange()) 


#[ type
  ThickSolid*  {.importcpp: "BRepOffsetAPI_MakeThickSolid", 
                 header: "BRepOffsetAPI_MakeThickSolid.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 
 ]#
#[   BRepOffset_Mode* = enum
    BRepOffset_Skin
    BRepOffset_Pipe
    BRepOffset_RectoVerso

type
  BRepOffsetAPI_ThruSections* {.importcpp: "BRepOffsetAPI_ThruSections",
                               header: "BRepOffsetAPI_ThruSections.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape
 ]#
#[
enum BRepOffset_Mode
{
BRepOffset_Skin,
BRepOffset_Pipe,
BRepOffset_RectoVerso
};
]#
#[ proc makeThickSolidByJoin*(this: var ThickSolid; 
                           S: TopoDS_Shape;
                           ClosingFaces: TopTools_ListOfShape;
                           Offset: float; Tol: float;
                           Mode: BRepOffset_Mode = BRepOffset_Skin;
                           Intersection: bool = false;
                           SelfInter: bool = false;
                           Join: GeomAbsJoinType = GeomAbs_Arc;
                           RemoveIntEdges: bool = false;
    theRange: Message_ProgressRange = Message_ProgressRange()) {.
     cdecl, 
     importcpp: "MakeThickSolidByJoin", 
     header: "BRepOffsetAPI_MakeThickSolid.hxx".} ]#

#proc shape*(obj:ThickSolid): BRepPrimAPI_MakePrism {.importcpp:"#.Shape()".}
# proc MakeThickSolidByJoin*(this: var BRepOffsetAPI_MakeThickSolid; S: TopoDS_Shape;
#                           ClosingFaces: TopTools_ListOfShape;
#                           Offset: Standard_Real; Tol: Standard_Real;
#                           Mode: BRepOffset_Mode = BRepOffset_Skin;
#                           Intersection: Standard_Boolean = Standard_False;
#                           SelfInter: Standard_Boolean = Standard_False;
#                           Join: GeomAbs_JoinType = GeomAbs_Arc;
#                           RemoveIntEdges: Standard_Boolean = Standard_False;
#     theRange: Message_ProgressRange = Message_ProgressRange())
# proc setCurve*(this: var GeomFillConstantBiNormal; c: Handle[Adaptor3dHCurve]) 
  
#[
  Standard_EXPORT void MakeThickSolidByJoin(const TopoDS_Shape& S,
                                            const TopTools_ListOfShape& ClosingFaces,
                                            const Standard_Real Offset,
                                            const Standard_Real Tol,
                                            const BRepOffset_Mode Mode = BRepOffset_Skin,
                                            const Standard_Boolean Intersection = Standard_False,
                                            const Standard_Boolean SelfInter = Standard_False,
                                            const GeomAbs_JoinType Join = GeomAbs_Arc,
                                            const Standard_Boolean RemoveIntEdges = Standard_False,
                                            const Message_ProgressRange& theRange = Message_ProgressRange());

]#

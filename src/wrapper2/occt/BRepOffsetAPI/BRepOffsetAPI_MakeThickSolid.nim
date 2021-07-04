##  Created on: 1996-02-13
##  Created by: Yves FRICAUD
##  Copyright (c) 1996-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepOffsetAPI_MakeOffsetShape,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Real,
  ../BRepOffset/BRepOffset_Mode, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_JoinType

discard "forward decl of TopoDS_Shape"
type
  BRepOffsetAPI_MakeThickSolid* {.importcpp: "BRepOffsetAPI_MakeThickSolid",
                                 header: "BRepOffsetAPI_MakeThickSolid.hxx",
                                 bycopy.} = object of BRepOffsetAPI_MakeOffsetShape ## !
                                                                               ## Constructor
                                                                               ## does
                                                                               ## nothing.


proc constructBRepOffsetAPI_MakeThickSolid*(): BRepOffsetAPI_MakeThickSolid {.
    constructor, importcpp: "BRepOffsetAPI_MakeThickSolid(@)",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
## !!!Ignored construct:  ! Deprecated constructor. Please avoid usage of this constructor. Standard_DEPRECATED ( Deprecated constructor. Please use constructor without parameters and one of make methods. ) BRepOffsetAPI_MakeThickSolid ( const TopoDS_Shape & S , const TopTools_ListOfShape & ClosingFaces , const Standard_Real Offset , const Standard_Real Tol , const BRepOffset_Mode Mode = BRepOffset_Skin , const Standard_Boolean Intersection = Standard_False , const Standard_Boolean SelfInter = Standard_False , const GeomAbs_JoinType Join = GeomAbs_Arc , const Standard_Boolean RemoveIntEdges = Standard_False ) ;
## Error: identifier expected, but got: Deprecated constructor. Please use constructor without parameters and one of make methods.!!!

proc MakeThickSolidBySimple*(this: var BRepOffsetAPI_MakeThickSolid;
                            theS: TopoDS_Shape; theOffsetValue: Standard_Real) {.
    importcpp: "MakeThickSolidBySimple",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc MakeThickSolidByJoin*(this: var BRepOffsetAPI_MakeThickSolid; S: TopoDS_Shape;
                          ClosingFaces: TopTools_ListOfShape;
                          Offset: Standard_Real; Tol: Standard_Real;
                          Mode: BRepOffset_Mode = BRepOffset_Skin;
                          Intersection: Standard_Boolean = Standard_False;
                          SelfInter: Standard_Boolean = Standard_False;
                          Join: GeomAbs_JoinType = GeomAbs_Arc;
                          RemoveIntEdges: Standard_Boolean = Standard_False) {.
    importcpp: "MakeThickSolidByJoin", header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc Build*(this: var BRepOffsetAPI_MakeThickSolid) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakeThickSolid.hxx".}
proc Modified*(this: var BRepOffsetAPI_MakeThickSolid; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepOffsetAPI_MakeThickSolid.hxx".}
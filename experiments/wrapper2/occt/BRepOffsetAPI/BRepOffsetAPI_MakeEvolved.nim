##  Created on: 1995-09-18
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../BRepFill/BRepFill_Evolved,
  ../BRepFill/BRepFill_AdvancedEvolved,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../GeomAbs/GeomAbs_JoinType,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepFill_Evolved"
discard "forward decl of TopoDS_Shape"
type
  BRepOffsetAPI_MakeEvolved* {.importcpp: "BRepOffsetAPI_MakeEvolved",
                              header: "BRepOffsetAPI_MakeEvolved.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc constructBRepOffsetAPI_MakeEvolved*(): BRepOffsetAPI_MakeEvolved {.
    constructor, importcpp: "BRepOffsetAPI_MakeEvolved(@)",
    header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc constructBRepOffsetAPI_MakeEvolved*(theSpine: TopoDS_Shape;
                                        theProfile: TopoDS_Wire; theJoinType: GeomAbs_JoinType = GeomAbs_Arc;
    theIsAxeProf: Standard_Boolean = Standard_True; theIsSolid: Standard_Boolean = Standard_False;
    theIsProfOnSpine: Standard_Boolean = Standard_False;
                                        theTol: Standard_Real = 0.0000001;
    theIsVolume: Standard_Boolean = Standard_False; theRunInParallel: Standard_Boolean = Standard_False): BRepOffsetAPI_MakeEvolved {.
    constructor, importcpp: "BRepOffsetAPI_MakeEvolved(@)",
    header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc Evolved*(this: BRepOffsetAPI_MakeEvolved): BRepFill_Evolved {.noSideEffect,
    importcpp: "Evolved", header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc Build*(this: var BRepOffsetAPI_MakeEvolved) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc GeneratedShapes*(this: BRepOffsetAPI_MakeEvolved; SpineShape: TopoDS_Shape;
                     ProfShape: TopoDS_Shape): TopTools_ListOfShape {.noSideEffect,
    importcpp: "GeneratedShapes", header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc Top*(this: BRepOffsetAPI_MakeEvolved): TopoDS_Shape {.noSideEffect,
    importcpp: "Top", header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc Bottom*(this: BRepOffsetAPI_MakeEvolved): TopoDS_Shape {.noSideEffect,
    importcpp: "Bottom", header: "BRepOffsetAPI_MakeEvolved.hxx".}
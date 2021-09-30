##  Created on: 1997-10-08
##  Created by: Olga KOULECHOVA
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Plane"
discard "forward decl of gp_Dir"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of LocOpe_Gluer"
discard "forward decl of BRepAlgoAPI_BooleanOperation"
type
  BRepFeatRibSlot* {.importcpp: "BRepFeat_RibSlot", header: "BRepFeat_RibSlot.hxx",
                    bycopy.} = object of BRepBuilderAPI_MakeShape ## ! Redefines the empty constructor.


proc `new`*(this: var BRepFeatRibSlot; theSize: csize_t): pointer {.
    importcpp: "BRepFeat_RibSlot::operator new", header: "BRepFeat_RibSlot.hxx".}
proc `delete`*(this: var BRepFeatRibSlot; theAddress: pointer) {.
    importcpp: "BRepFeat_RibSlot::operator delete", header: "BRepFeat_RibSlot.hxx".}
proc `new[]`*(this: var BRepFeatRibSlot; theSize: csize_t): pointer {.
    importcpp: "BRepFeat_RibSlot::operator new[]", header: "BRepFeat_RibSlot.hxx".}
proc `delete[]`*(this: var BRepFeatRibSlot; theAddress: pointer) {.
    importcpp: "BRepFeat_RibSlot::operator delete[]",
    header: "BRepFeat_RibSlot.hxx".}
proc `new`*(this: var BRepFeatRibSlot; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFeat_RibSlot::operator new", header: "BRepFeat_RibSlot.hxx".}
proc `delete`*(this: var BRepFeatRibSlot; a2: pointer; a3: pointer) {.
    importcpp: "BRepFeat_RibSlot::operator delete", header: "BRepFeat_RibSlot.hxx".}
proc isDeleted*(this: var BRepFeatRibSlot; f: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted", header: "BRepFeat_RibSlot.hxx".}
proc modified*(this: var BRepFeatRibSlot; f: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepFeat_RibSlot.hxx".}
proc generated*(this: var BRepFeatRibSlot; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepFeat_RibSlot.hxx".}
proc firstShape*(this: BRepFeatRibSlot): TopToolsListOfShape {.noSideEffect,
    importcpp: "FirstShape", header: "BRepFeat_RibSlot.hxx".}
proc lastShape*(this: BRepFeatRibSlot): TopToolsListOfShape {.noSideEffect,
    importcpp: "LastShape", header: "BRepFeat_RibSlot.hxx".}
proc facesForDraft*(this: BRepFeatRibSlot): TopToolsListOfShape {.noSideEffect,
    importcpp: "FacesForDraft", header: "BRepFeat_RibSlot.hxx".}
proc newEdges*(this: BRepFeatRibSlot): TopToolsListOfShape {.noSideEffect,
    importcpp: "NewEdges", header: "BRepFeat_RibSlot.hxx".}
proc tgtEdges*(this: BRepFeatRibSlot): TopToolsListOfShape {.noSideEffect,
    importcpp: "TgtEdges", header: "BRepFeat_RibSlot.hxx".}
proc intPar*(c: Handle[GeomCurve]; p: Pnt): StandardReal {.
    importcpp: "BRepFeat_RibSlot::IntPar(@)", header: "BRepFeat_RibSlot.hxx".}
proc choiceOfFaces*(faces: var TopToolsListOfShape; cc: Handle[GeomCurve];
                   par: StandardReal; bnd: StandardReal; pln: Handle[GeomPlane]): TopoDS_Face {.
    importcpp: "BRepFeat_RibSlot::ChoiceOfFaces(@)",
    header: "BRepFeat_RibSlot.hxx".}
proc currentStatusError*(this: BRepFeatRibSlot): BRepFeatStatusError {.noSideEffect,
    importcpp: "CurrentStatusError", header: "BRepFeat_RibSlot.hxx".}
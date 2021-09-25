##  Created on: 1994-03-22
##  Created by: Frederic UNTEREINER
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of IGESToBRep_AlgoContainer"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of IGESToBRep_CurveAndSurface"
discard "forward decl of IGESToBRep_BasicSurface"
discard "forward decl of IGESToBRep_BasicCurve"
discard "forward decl of IGESToBRep_TopoSurface"
discard "forward decl of IGESToBRep_TopoCurve"
discard "forward decl of IGESToBRep_BRepEntity"
discard "forward decl of IGESToBRep_IGESBoundary"
discard "forward decl of IGESToBRep_Reader"
discard "forward decl of IGESToBRep_Actor"
discard "forward decl of IGESToBRep_AlgoContainer"
discard "forward decl of IGESToBRep_ToolContainer"
type
  IGESToBRep* {.importcpp: "IGESToBRep", header: "IGESToBRep.hxx", bycopy.} = object ## !
                                                                             ## Creates and
                                                                             ## initializes
                                                                             ## default
                                                                             ## AlgoContainer.


proc init*() {.importcpp: "IGESToBRep::Init(@)", header: "IGESToBRep.hxx".}
proc setAlgoContainer*(aContainer: Handle[IGESToBRepAlgoContainer]) {.
    importcpp: "IGESToBRep::SetAlgoContainer(@)", header: "IGESToBRep.hxx".}
proc algoContainer*(): Handle[IGESToBRepAlgoContainer] {.
    importcpp: "IGESToBRep::AlgoContainer(@)", header: "IGESToBRep.hxx".}
proc isCurveAndSurface*(start: Handle[IGESDataIGESEntity]): bool {.
    importcpp: "IGESToBRep::IsCurveAndSurface(@)", header: "IGESToBRep.hxx".}
proc isBasicCurve*(start: Handle[IGESDataIGESEntity]): bool {.
    importcpp: "IGESToBRep::IsBasicCurve(@)", header: "IGESToBRep.hxx".}
proc isBasicSurface*(start: Handle[IGESDataIGESEntity]): bool {.
    importcpp: "IGESToBRep::IsBasicSurface(@)", header: "IGESToBRep.hxx".}
proc isTopoCurve*(start: Handle[IGESDataIGESEntity]): bool {.
    importcpp: "IGESToBRep::IsTopoCurve(@)", header: "IGESToBRep.hxx".}
proc isTopoSurface*(start: Handle[IGESDataIGESEntity]): bool {.
    importcpp: "IGESToBRep::IsTopoSurface(@)", header: "IGESToBRep.hxx".}
proc isBRepEntity*(start: Handle[IGESDataIGESEntity]): bool {.
    importcpp: "IGESToBRep::IsBRepEntity(@)", header: "IGESToBRep.hxx".}
proc iGESCurveToSequenceOfIGESCurve*(curve: Handle[IGESDataIGESEntity]; sequence: var Handle[
    TColStdHSequenceOfTransient]): int {.importcpp: "IGESToBRep::IGESCurveToSequenceOfIGESCurve(@)",
                                       header: "IGESToBRep.hxx".}
proc transferPCurve*(fromedge: TopoDS_Edge; toedge: TopoDS_Edge; face: TopoDS_Face): bool {.
    importcpp: "IGESToBRep::TransferPCurve(@)", header: "IGESToBRep.hxx".}

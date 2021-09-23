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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColStd/TColStd_HSequenceOfTransient

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


proc Init*() {.importcpp: "IGESToBRep::Init(@)", header: "IGESToBRep.hxx".}
proc SetAlgoContainer*(aContainer: handle[IGESToBRep_AlgoContainer]) {.
    importcpp: "IGESToBRep::SetAlgoContainer(@)", header: "IGESToBRep.hxx".}
proc AlgoContainer*(): handle[IGESToBRep_AlgoContainer] {.
    importcpp: "IGESToBRep::AlgoContainer(@)", header: "IGESToBRep.hxx".}
proc IsCurveAndSurface*(start: handle[IGESData_IGESEntity]): Standard_Boolean {.
    importcpp: "IGESToBRep::IsCurveAndSurface(@)", header: "IGESToBRep.hxx".}
proc IsBasicCurve*(start: handle[IGESData_IGESEntity]): Standard_Boolean {.
    importcpp: "IGESToBRep::IsBasicCurve(@)", header: "IGESToBRep.hxx".}
proc IsBasicSurface*(start: handle[IGESData_IGESEntity]): Standard_Boolean {.
    importcpp: "IGESToBRep::IsBasicSurface(@)", header: "IGESToBRep.hxx".}
proc IsTopoCurve*(start: handle[IGESData_IGESEntity]): Standard_Boolean {.
    importcpp: "IGESToBRep::IsTopoCurve(@)", header: "IGESToBRep.hxx".}
proc IsTopoSurface*(start: handle[IGESData_IGESEntity]): Standard_Boolean {.
    importcpp: "IGESToBRep::IsTopoSurface(@)", header: "IGESToBRep.hxx".}
proc IsBRepEntity*(start: handle[IGESData_IGESEntity]): Standard_Boolean {.
    importcpp: "IGESToBRep::IsBRepEntity(@)", header: "IGESToBRep.hxx".}
proc IGESCurveToSequenceOfIGESCurve*(curve: handle[IGESData_IGESEntity]; sequence: var handle[
    TColStd_HSequenceOfTransient]): Standard_Integer {.
    importcpp: "IGESToBRep::IGESCurveToSequenceOfIGESCurve(@)",
    header: "IGESToBRep.hxx".}
proc TransferPCurve*(fromedge: TopoDS_Edge; toedge: TopoDS_Edge; face: TopoDS_Face): Standard_Boolean {.
    importcpp: "IGESToBRep::TransferPCurve(@)", header: "IGESToBRep.hxx".}
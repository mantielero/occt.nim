##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_HArray1OfInteger,
  ../TColgp/TColgp_HArray1OfXYZ, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of ShapeExtend_WireData"
discard "forward decl of TopoDS_Wire"
discard "forward decl of gp_XYZ"
when defined(Status):
  discard
## ! Analyzes and records status of vertices in a Wire
## !
## ! The Wire has formerly been loaded in a ShapeExtend_WireData
## ! For each Vertex, a status and some data can be attached
## ! (case found, position and parameters)
## ! Then, these informations can be used to fix problems

type
  ShapeAnalysis_WireVertex* {.importcpp: "ShapeAnalysis_WireVertex",
                             header: "ShapeAnalysis_WireVertex.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor


proc constructShapeAnalysis_WireVertex*(): ShapeAnalysis_WireVertex {.constructor,
    importcpp: "ShapeAnalysis_WireVertex(@)",
    header: "ShapeAnalysis_WireVertex.hxx".}
proc Init*(this: var ShapeAnalysis_WireVertex; wire: TopoDS_Wire; preci: Standard_Real) {.
    importcpp: "Init", header: "ShapeAnalysis_WireVertex.hxx".}
proc Init*(this: var ShapeAnalysis_WireVertex; swbd: handle[ShapeExtend_WireData];
          preci: Standard_Real) {.importcpp: "Init",
                                header: "ShapeAnalysis_WireVertex.hxx".}
proc Load*(this: var ShapeAnalysis_WireVertex; wire: TopoDS_Wire) {.importcpp: "Load",
    header: "ShapeAnalysis_WireVertex.hxx".}
proc Load*(this: var ShapeAnalysis_WireVertex; sbwd: handle[ShapeExtend_WireData]) {.
    importcpp: "Load", header: "ShapeAnalysis_WireVertex.hxx".}
proc SetPrecision*(this: var ShapeAnalysis_WireVertex; preci: Standard_Real) {.
    importcpp: "SetPrecision", header: "ShapeAnalysis_WireVertex.hxx".}
proc Analyze*(this: var ShapeAnalysis_WireVertex) {.importcpp: "Analyze",
    header: "ShapeAnalysis_WireVertex.hxx".}
proc SetSameVertex*(this: var ShapeAnalysis_WireVertex; num: Standard_Integer) {.
    importcpp: "SetSameVertex", header: "ShapeAnalysis_WireVertex.hxx".}
proc SetSameCoords*(this: var ShapeAnalysis_WireVertex; num: Standard_Integer) {.
    importcpp: "SetSameCoords", header: "ShapeAnalysis_WireVertex.hxx".}
proc SetClose*(this: var ShapeAnalysis_WireVertex; num: Standard_Integer) {.
    importcpp: "SetClose", header: "ShapeAnalysis_WireVertex.hxx".}
proc SetEnd*(this: var ShapeAnalysis_WireVertex; num: Standard_Integer; pos: gp_XYZ;
            ufol: Standard_Real) {.importcpp: "SetEnd",
                                 header: "ShapeAnalysis_WireVertex.hxx".}
proc SetStart*(this: var ShapeAnalysis_WireVertex; num: Standard_Integer; pos: gp_XYZ;
              upre: Standard_Real) {.importcpp: "SetStart",
                                   header: "ShapeAnalysis_WireVertex.hxx".}
proc SetInters*(this: var ShapeAnalysis_WireVertex; num: Standard_Integer;
               pos: gp_XYZ; upre: Standard_Real; ufol: Standard_Real) {.
    importcpp: "SetInters", header: "ShapeAnalysis_WireVertex.hxx".}
proc SetDisjoined*(this: var ShapeAnalysis_WireVertex; num: Standard_Integer) {.
    importcpp: "SetDisjoined", header: "ShapeAnalysis_WireVertex.hxx".}
proc IsDone*(this: ShapeAnalysis_WireVertex): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "ShapeAnalysis_WireVertex.hxx".}
proc Precision*(this: ShapeAnalysis_WireVertex): Standard_Real {.noSideEffect,
    importcpp: "Precision", header: "ShapeAnalysis_WireVertex.hxx".}
proc NbEdges*(this: ShapeAnalysis_WireVertex): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "ShapeAnalysis_WireVertex.hxx".}
proc WireData*(this: ShapeAnalysis_WireVertex): handle[ShapeExtend_WireData] {.
    noSideEffect, importcpp: "WireData", header: "ShapeAnalysis_WireVertex.hxx".}
proc Status*(this: ShapeAnalysis_WireVertex; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Status", header: "ShapeAnalysis_WireVertex.hxx".}
proc Position*(this: ShapeAnalysis_WireVertex; num: Standard_Integer): gp_XYZ {.
    noSideEffect, importcpp: "Position", header: "ShapeAnalysis_WireVertex.hxx".}
proc UPrevious*(this: ShapeAnalysis_WireVertex; num: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "UPrevious", header: "ShapeAnalysis_WireVertex.hxx".}
proc UFollowing*(this: ShapeAnalysis_WireVertex; num: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "UFollowing", header: "ShapeAnalysis_WireVertex.hxx".}
proc Data*(this: ShapeAnalysis_WireVertex; num: Standard_Integer; pos: var gp_XYZ;
          upre: var Standard_Real; ufol: var Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "Data", header: "ShapeAnalysis_WireVertex.hxx".}
proc NextStatus*(this: ShapeAnalysis_WireVertex; stat: Standard_Integer;
                num: Standard_Integer = 0): Standard_Integer {.noSideEffect,
    importcpp: "NextStatus", header: "ShapeAnalysis_WireVertex.hxx".}
proc NextCriter*(this: ShapeAnalysis_WireVertex; crit: Standard_Integer;
                num: Standard_Integer = 0): Standard_Integer {.noSideEffect,
    importcpp: "NextCriter", header: "ShapeAnalysis_WireVertex.hxx".}
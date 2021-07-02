##  Created on: 1994-08-31
##  Created by: Jacques GOUSSARD
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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  DraftEdgeInfo* {.importcpp: "Draft_EdgeInfo", header: "Draft_EdgeInfo.hxx", bycopy.} = object


proc constructDraftEdgeInfo*(): DraftEdgeInfo {.constructor,
    importcpp: "Draft_EdgeInfo(@)", header: "Draft_EdgeInfo.hxx".}
proc constructDraftEdgeInfo*(hasNewGeometry: StandardBoolean): DraftEdgeInfo {.
    constructor, importcpp: "Draft_EdgeInfo(@)", header: "Draft_EdgeInfo.hxx".}
proc add*(this: var DraftEdgeInfo; f: TopoDS_Face) {.importcpp: "Add",
    header: "Draft_EdgeInfo.hxx".}
proc rootFace*(this: var DraftEdgeInfo; f: TopoDS_Face) {.importcpp: "RootFace",
    header: "Draft_EdgeInfo.hxx".}
proc tangent*(this: var DraftEdgeInfo; p: GpPnt) {.importcpp: "Tangent",
    header: "Draft_EdgeInfo.hxx".}
proc isTangent*(this: DraftEdgeInfo; p: var GpPnt): StandardBoolean {.noSideEffect,
    importcpp: "IsTangent", header: "Draft_EdgeInfo.hxx".}
proc newGeometry*(this: DraftEdgeInfo): StandardBoolean {.noSideEffect,
    importcpp: "NewGeometry", header: "Draft_EdgeInfo.hxx".}
proc setNewGeometry*(this: var DraftEdgeInfo; newGeom: StandardBoolean) {.
    importcpp: "SetNewGeometry", header: "Draft_EdgeInfo.hxx".}
proc geometry*(this: DraftEdgeInfo): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Geometry", header: "Draft_EdgeInfo.hxx".}
proc firstFace*(this: DraftEdgeInfo): TopoDS_Face {.noSideEffect,
    importcpp: "FirstFace", header: "Draft_EdgeInfo.hxx".}
proc secondFace*(this: DraftEdgeInfo): TopoDS_Face {.noSideEffect,
    importcpp: "SecondFace", header: "Draft_EdgeInfo.hxx".}
proc firstPC*(this: DraftEdgeInfo): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "FirstPC", header: "Draft_EdgeInfo.hxx".}
proc secondPC*(this: DraftEdgeInfo): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "SecondPC", header: "Draft_EdgeInfo.hxx".}
proc changeGeometry*(this: var DraftEdgeInfo): var Handle[GeomCurve] {.
    importcpp: "ChangeGeometry", header: "Draft_EdgeInfo.hxx".}
proc changeFirstPC*(this: var DraftEdgeInfo): var Handle[Geom2dCurve] {.
    importcpp: "ChangeFirstPC", header: "Draft_EdgeInfo.hxx".}
proc changeSecondPC*(this: var DraftEdgeInfo): var Handle[Geom2dCurve] {.
    importcpp: "ChangeSecondPC", header: "Draft_EdgeInfo.hxx".}
proc rootFace*(this: DraftEdgeInfo): TopoDS_Face {.noSideEffect,
    importcpp: "RootFace", header: "Draft_EdgeInfo.hxx".}
proc tolerance*(this: var DraftEdgeInfo; tol: StandardReal) {.importcpp: "Tolerance",
    header: "Draft_EdgeInfo.hxx".}
proc tolerance*(this: DraftEdgeInfo): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: "Draft_EdgeInfo.hxx".}


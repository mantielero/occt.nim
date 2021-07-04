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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TopoDS/TopoDS_Face, ../gp/gp_Pnt, ../Standard/Standard_Real

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  Draft_EdgeInfo* {.importcpp: "Draft_EdgeInfo", header: "Draft_EdgeInfo.hxx", bycopy.} = object


proc constructDraft_EdgeInfo*(): Draft_EdgeInfo {.constructor,
    importcpp: "Draft_EdgeInfo(@)", header: "Draft_EdgeInfo.hxx".}
proc constructDraft_EdgeInfo*(HasNewGeometry: Standard_Boolean): Draft_EdgeInfo {.
    constructor, importcpp: "Draft_EdgeInfo(@)", header: "Draft_EdgeInfo.hxx".}
proc Add*(this: var Draft_EdgeInfo; F: TopoDS_Face) {.importcpp: "Add",
    header: "Draft_EdgeInfo.hxx".}
proc RootFace*(this: var Draft_EdgeInfo; F: TopoDS_Face) {.importcpp: "RootFace",
    header: "Draft_EdgeInfo.hxx".}
proc Tangent*(this: var Draft_EdgeInfo; P: gp_Pnt) {.importcpp: "Tangent",
    header: "Draft_EdgeInfo.hxx".}
proc IsTangent*(this: Draft_EdgeInfo; P: var gp_Pnt): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangent", header: "Draft_EdgeInfo.hxx".}
proc NewGeometry*(this: Draft_EdgeInfo): Standard_Boolean {.noSideEffect,
    importcpp: "NewGeometry", header: "Draft_EdgeInfo.hxx".}
proc SetNewGeometry*(this: var Draft_EdgeInfo; NewGeom: Standard_Boolean) {.
    importcpp: "SetNewGeometry", header: "Draft_EdgeInfo.hxx".}
proc Geometry*(this: Draft_EdgeInfo): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Geometry", header: "Draft_EdgeInfo.hxx".}
proc FirstFace*(this: Draft_EdgeInfo): TopoDS_Face {.noSideEffect,
    importcpp: "FirstFace", header: "Draft_EdgeInfo.hxx".}
proc SecondFace*(this: Draft_EdgeInfo): TopoDS_Face {.noSideEffect,
    importcpp: "SecondFace", header: "Draft_EdgeInfo.hxx".}
proc FirstPC*(this: Draft_EdgeInfo): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "FirstPC", header: "Draft_EdgeInfo.hxx".}
proc SecondPC*(this: Draft_EdgeInfo): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "SecondPC", header: "Draft_EdgeInfo.hxx".}
proc ChangeGeometry*(this: var Draft_EdgeInfo): var handle[Geom_Curve] {.
    importcpp: "ChangeGeometry", header: "Draft_EdgeInfo.hxx".}
proc ChangeFirstPC*(this: var Draft_EdgeInfo): var handle[Geom2d_Curve] {.
    importcpp: "ChangeFirstPC", header: "Draft_EdgeInfo.hxx".}
proc ChangeSecondPC*(this: var Draft_EdgeInfo): var handle[Geom2d_Curve] {.
    importcpp: "ChangeSecondPC", header: "Draft_EdgeInfo.hxx".}
proc RootFace*(this: Draft_EdgeInfo): TopoDS_Face {.noSideEffect,
    importcpp: "RootFace", header: "Draft_EdgeInfo.hxx".}
proc Tolerance*(this: var Draft_EdgeInfo; tol: Standard_Real) {.
    importcpp: "Tolerance", header: "Draft_EdgeInfo.hxx".}
proc Tolerance*(this: Draft_EdgeInfo): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "Draft_EdgeInfo.hxx".}
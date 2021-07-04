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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../TopoDS/TopoDS_Face

discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Face"
type
  Draft_FaceInfo* {.importcpp: "Draft_FaceInfo", header: "Draft_FaceInfo.hxx", bycopy.} = object


proc constructDraft_FaceInfo*(): Draft_FaceInfo {.constructor,
    importcpp: "Draft_FaceInfo(@)", header: "Draft_FaceInfo.hxx".}
proc constructDraft_FaceInfo*(S: handle[Geom_Surface];
                             HasNewGeometry: Standard_Boolean): Draft_FaceInfo {.
    constructor, importcpp: "Draft_FaceInfo(@)", header: "Draft_FaceInfo.hxx".}
proc RootFace*(this: var Draft_FaceInfo; F: TopoDS_Face) {.importcpp: "RootFace",
    header: "Draft_FaceInfo.hxx".}
proc NewGeometry*(this: Draft_FaceInfo): Standard_Boolean {.noSideEffect,
    importcpp: "NewGeometry", header: "Draft_FaceInfo.hxx".}
proc Add*(this: var Draft_FaceInfo; F: TopoDS_Face) {.importcpp: "Add",
    header: "Draft_FaceInfo.hxx".}
proc FirstFace*(this: Draft_FaceInfo): TopoDS_Face {.noSideEffect,
    importcpp: "FirstFace", header: "Draft_FaceInfo.hxx".}
proc SecondFace*(this: Draft_FaceInfo): TopoDS_Face {.noSideEffect,
    importcpp: "SecondFace", header: "Draft_FaceInfo.hxx".}
proc Geometry*(this: Draft_FaceInfo): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Geometry", header: "Draft_FaceInfo.hxx".}
proc ChangeGeometry*(this: var Draft_FaceInfo): var handle[Geom_Surface] {.
    importcpp: "ChangeGeometry", header: "Draft_FaceInfo.hxx".}
proc RootFace*(this: Draft_FaceInfo): TopoDS_Face {.noSideEffect,
    importcpp: "RootFace", header: "Draft_FaceInfo.hxx".}
proc ChangeCurve*(this: var Draft_FaceInfo): var handle[Geom_Curve] {.
    importcpp: "ChangeCurve", header: "Draft_FaceInfo.hxx".}
proc Curve*(this: Draft_FaceInfo): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Curve", header: "Draft_FaceInfo.hxx".}
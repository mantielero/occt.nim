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

discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Face"
type
  DraftFaceInfo* {.importcpp: "Draft_FaceInfo", header: "Draft_FaceInfo.hxx", bycopy.} = object


proc constructDraftFaceInfo*(): DraftFaceInfo {.constructor,
    importcpp: "Draft_FaceInfo(@)", header: "Draft_FaceInfo.hxx".}
proc constructDraftFaceInfo*(s: Handle[GeomSurface];
                            hasNewGeometry: StandardBoolean): DraftFaceInfo {.
    constructor, importcpp: "Draft_FaceInfo(@)", header: "Draft_FaceInfo.hxx".}
proc rootFace*(this: var DraftFaceInfo; f: TopoDS_Face) {.importcpp: "RootFace",
    header: "Draft_FaceInfo.hxx".}
proc newGeometry*(this: DraftFaceInfo): StandardBoolean {.noSideEffect,
    importcpp: "NewGeometry", header: "Draft_FaceInfo.hxx".}
proc add*(this: var DraftFaceInfo; f: TopoDS_Face) {.importcpp: "Add",
    header: "Draft_FaceInfo.hxx".}
proc firstFace*(this: DraftFaceInfo): TopoDS_Face {.noSideEffect,
    importcpp: "FirstFace", header: "Draft_FaceInfo.hxx".}
proc secondFace*(this: DraftFaceInfo): TopoDS_Face {.noSideEffect,
    importcpp: "SecondFace", header: "Draft_FaceInfo.hxx".}
proc geometry*(this: DraftFaceInfo): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Geometry", header: "Draft_FaceInfo.hxx".}
proc changeGeometry*(this: var DraftFaceInfo): var Handle[GeomSurface] {.
    importcpp: "ChangeGeometry", header: "Draft_FaceInfo.hxx".}
proc rootFace*(this: DraftFaceInfo): TopoDS_Face {.noSideEffect,
    importcpp: "RootFace", header: "Draft_FaceInfo.hxx".}
proc changeCurve*(this: var DraftFaceInfo): var Handle[GeomCurve] {.
    importcpp: "ChangeCurve", header: "Draft_FaceInfo.hxx".}
proc curve*(this: DraftFaceInfo): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: "Draft_FaceInfo.hxx".}


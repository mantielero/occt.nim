##  Created on: 1998-10-29
##  Created by: Jean Yves LEBEY
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

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopOpeBRep_Hctxff2d"
discard "forward decl of TopOpeBRep_Hctxff2d"
type
  HandleTopOpeBRepHctxff2d* = Handle[TopOpeBRepHctxff2d]
  TopOpeBRepHctxff2d* {.importcpp: "TopOpeBRep_Hctxff2d",
                       header: "TopOpeBRep_Hctxff2d.hxx", bycopy.} = object of StandardTransient


proc constructTopOpeBRepHctxff2d*(): TopOpeBRepHctxff2d {.constructor,
    importcpp: "TopOpeBRep_Hctxff2d(@)", header: "TopOpeBRep_Hctxff2d.hxx".}
proc setFaces*(this: var TopOpeBRepHctxff2d; f1: TopoDS_Face; f2: TopoDS_Face) {.
    importcpp: "SetFaces", header: "TopOpeBRep_Hctxff2d.hxx".}
proc setHSurfaces*(this: var TopOpeBRepHctxff2d; s1: Handle[BRepAdaptorHSurface];
                  s2: Handle[BRepAdaptorHSurface]) {.importcpp: "SetHSurfaces",
    header: "TopOpeBRep_Hctxff2d.hxx".}
proc setTolerances*(this: var TopOpeBRepHctxff2d; tol1: float; tol2: float) {.
    importcpp: "SetTolerances", header: "TopOpeBRep_Hctxff2d.hxx".}
proc getTolerances*(this: TopOpeBRepHctxff2d; tol1: var float; tol2: var float) {.
    noSideEffect, importcpp: "GetTolerances", header: "TopOpeBRep_Hctxff2d.hxx".}
proc getMaxTolerance*(this: TopOpeBRepHctxff2d): float {.noSideEffect,
    importcpp: "GetMaxTolerance", header: "TopOpeBRep_Hctxff2d.hxx".}
proc face*(this: TopOpeBRepHctxff2d; i: int): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRep_Hctxff2d.hxx".}
proc hSurface*(this: TopOpeBRepHctxff2d; i: int): Handle[BRepAdaptorHSurface] {.
    noSideEffect, importcpp: "HSurface", header: "TopOpeBRep_Hctxff2d.hxx".}
proc surfacesSameOriented*(this: TopOpeBRepHctxff2d): bool {.noSideEffect,
    importcpp: "SurfacesSameOriented", header: "TopOpeBRep_Hctxff2d.hxx".}
proc facesSameOriented*(this: TopOpeBRepHctxff2d): bool {.noSideEffect,
    importcpp: "FacesSameOriented", header: "TopOpeBRep_Hctxff2d.hxx".}
proc faceSameOrientedWithRef*(this: TopOpeBRepHctxff2d; i: int): bool {.noSideEffect,
    importcpp: "FaceSameOrientedWithRef", header: "TopOpeBRep_Hctxff2d.hxx".}
type
  TopOpeBRepHctxff2dbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopOpeBRep_Hctxff2d::get_type_name(@)",
                            header: "TopOpeBRep_Hctxff2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRep_Hctxff2d::get_type_descriptor(@)",
    header: "TopOpeBRep_Hctxff2d.hxx".}
proc dynamicType*(this: TopOpeBRepHctxff2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRep_Hctxff2d.hxx".}

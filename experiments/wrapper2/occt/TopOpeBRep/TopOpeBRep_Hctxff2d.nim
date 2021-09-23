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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Face,
  ../GeomAbs/GeomAbs_SurfaceType, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopOpeBRep_Hctxff2d"
discard "forward decl of TopOpeBRep_Hctxff2d"
type
  Handle_TopOpeBRep_Hctxff2d* = handle[TopOpeBRep_Hctxff2d]
  TopOpeBRep_Hctxff2d* {.importcpp: "TopOpeBRep_Hctxff2d",
                        header: "TopOpeBRep_Hctxff2d.hxx", bycopy.} = object of Standard_Transient


proc constructTopOpeBRep_Hctxff2d*(): TopOpeBRep_Hctxff2d {.constructor,
    importcpp: "TopOpeBRep_Hctxff2d(@)", header: "TopOpeBRep_Hctxff2d.hxx".}
proc SetFaces*(this: var TopOpeBRep_Hctxff2d; F1: TopoDS_Face; F2: TopoDS_Face) {.
    importcpp: "SetFaces", header: "TopOpeBRep_Hctxff2d.hxx".}
proc SetHSurfaces*(this: var TopOpeBRep_Hctxff2d; S1: handle[BRepAdaptor_HSurface];
                  S2: handle[BRepAdaptor_HSurface]) {.importcpp: "SetHSurfaces",
    header: "TopOpeBRep_Hctxff2d.hxx".}
proc SetTolerances*(this: var TopOpeBRep_Hctxff2d; Tol1: Standard_Real;
                   Tol2: Standard_Real) {.importcpp: "SetTolerances",
                                        header: "TopOpeBRep_Hctxff2d.hxx".}
proc GetTolerances*(this: TopOpeBRep_Hctxff2d; Tol1: var Standard_Real;
                   Tol2: var Standard_Real) {.noSideEffect,
    importcpp: "GetTolerances", header: "TopOpeBRep_Hctxff2d.hxx".}
proc GetMaxTolerance*(this: TopOpeBRep_Hctxff2d): Standard_Real {.noSideEffect,
    importcpp: "GetMaxTolerance", header: "TopOpeBRep_Hctxff2d.hxx".}
proc Face*(this: TopOpeBRep_Hctxff2d; I: Standard_Integer): TopoDS_Face {.
    noSideEffect, importcpp: "Face", header: "TopOpeBRep_Hctxff2d.hxx".}
proc HSurface*(this: TopOpeBRep_Hctxff2d; I: Standard_Integer): handle[
    BRepAdaptor_HSurface] {.noSideEffect, importcpp: "HSurface",
                           header: "TopOpeBRep_Hctxff2d.hxx".}
proc SurfacesSameOriented*(this: TopOpeBRep_Hctxff2d): Standard_Boolean {.
    noSideEffect, importcpp: "SurfacesSameOriented",
    header: "TopOpeBRep_Hctxff2d.hxx".}
proc FacesSameOriented*(this: TopOpeBRep_Hctxff2d): Standard_Boolean {.noSideEffect,
    importcpp: "FacesSameOriented", header: "TopOpeBRep_Hctxff2d.hxx".}
proc FaceSameOrientedWithRef*(this: TopOpeBRep_Hctxff2d; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "FaceSameOrientedWithRef",
    header: "TopOpeBRep_Hctxff2d.hxx".}
type
  TopOpeBRep_Hctxff2dbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopOpeBRep_Hctxff2d::get_type_name(@)",
                              header: "TopOpeBRep_Hctxff2d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRep_Hctxff2d::get_type_descriptor(@)",
    header: "TopOpeBRep_Hctxff2d.hxx".}
proc DynamicType*(this: TopOpeBRep_Hctxff2d): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TopOpeBRep_Hctxff2d.hxx".}
##  Created on: 1995-12-04
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of GeomFill_Boundary"
discard "forward decl of Law_Function"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_CoonsAlgPatch"
type
  HandleGeomFillCoonsAlgPatch* = Handle[GeomFillCoonsAlgPatch]

## ! Provides  evaluation   methods on an   algorithmic
## ! patch (based on 4 Curves) defined by  its   boundaries and  blending
## ! functions.

type
  GeomFillCoonsAlgPatch* {.importcpp: "GeomFill_CoonsAlgPatch",
                          header: "GeomFill_CoonsAlgPatch.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Constructs
                                                                                                ## the
                                                                                                ## algorithmic
                                                                                                ## patch.
                                                                                                ## By
                                                                                                ## Default
                                                                                                ## the
                                                                                                ##
                                                                                                ## !
                                                                                                ## constructed
                                                                                                ## blending
                                                                                                ## functions
                                                                                                ## are
                                                                                                ## linear.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Warning:
                                                                                                ## No
                                                                                                ## control
                                                                                                ## is
                                                                                                ## done
                                                                                                ## on
                                                                                                ## the
                                                                                                ## bounds.
                                                                                                ##
                                                                                                ## !
                                                                                                ## B1/B3
                                                                                                ## and
                                                                                                ## B2/B4
                                                                                                ## must
                                                                                                ## be
                                                                                                ## same
                                                                                                ## range
                                                                                                ## and
                                                                                                ## well
                                                                                                ## oriented.


proc newGeomFillCoonsAlgPatch*(b1: Handle[GeomFillBoundary];
                              b2: Handle[GeomFillBoundary];
                              b3: Handle[GeomFillBoundary];
                              b4: Handle[GeomFillBoundary]): GeomFillCoonsAlgPatch {.
    cdecl, constructor, importcpp: "GeomFill_CoonsAlgPatch(@)", header: "GeomFill_CoonsAlgPatch.hxx".}
proc `func`*(this: GeomFillCoonsAlgPatch; f1: var Handle[LawFunction];
            f2: var Handle[LawFunction]) {.noSideEffect, cdecl, importcpp: "Func",
                                        header: "GeomFill_CoonsAlgPatch.hxx".}
proc setFunc*(this: var GeomFillCoonsAlgPatch; f1: Handle[LawFunction];
             f2: Handle[LawFunction]) {.cdecl, importcpp: "SetFunc",
                                      header: "GeomFill_CoonsAlgPatch.hxx".}
proc value*(this: GeomFillCoonsAlgPatch; u: cfloat; v: cfloat): PntObj {.noSideEffect,
    cdecl, importcpp: "Value", header: "GeomFill_CoonsAlgPatch.hxx".}
proc d1u*(this: GeomFillCoonsAlgPatch; u: cfloat; v: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "D1U", header: "GeomFill_CoonsAlgPatch.hxx".}
proc d1v*(this: GeomFillCoonsAlgPatch; u: cfloat; v: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "D1V", header: "GeomFill_CoonsAlgPatch.hxx".}
proc duv*(this: GeomFillCoonsAlgPatch; u: cfloat; v: cfloat): VecObj {.noSideEffect, cdecl,
    importcpp: "DUV", header: "GeomFill_CoonsAlgPatch.hxx".}
proc corner*(this: GeomFillCoonsAlgPatch; i: cint): PntObj {.noSideEffect, cdecl,
    importcpp: "Corner", header: "GeomFill_CoonsAlgPatch.hxx".}
proc bound*(this: GeomFillCoonsAlgPatch; i: cint): Handle[GeomFillBoundary] {.
    noSideEffect, cdecl, importcpp: "Bound", header: "GeomFill_CoonsAlgPatch.hxx".}
proc `func`*(this: GeomFillCoonsAlgPatch; i: cint): Handle[LawFunction] {.
    noSideEffect, cdecl, importcpp: "Func", header: "GeomFill_CoonsAlgPatch.hxx".}
##  Created on: 1994-08-18
##  Created by: Laurent PAINNOT
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

discard "forward decl of gp_Vec"
type
  GeomAPI_Interpolate* {.importcpp: "GeomAPI_Interpolate",
                        header: "GeomAPI_Interpolate.hxx", bycopy.} = object ## !
                                                                        ## Interpolates in a non periodic fashion


proc `new`*(this: var GeomAPI_Interpolate; theSize: csize_t): pointer {.
    importcpp: "GeomAPI_Interpolate::operator new",
    header: "GeomAPI_Interpolate.hxx".}
proc `delete`*(this: var GeomAPI_Interpolate; theAddress: pointer) {.
    importcpp: "GeomAPI_Interpolate::operator delete",
    header: "GeomAPI_Interpolate.hxx".}
proc `new[]`*(this: var GeomAPI_Interpolate; theSize: csize_t): pointer {.
    importcpp: "GeomAPI_Interpolate::operator new[]",
    header: "GeomAPI_Interpolate.hxx".}
proc `delete[]`*(this: var GeomAPI_Interpolate; theAddress: pointer) {.
    importcpp: "GeomAPI_Interpolate::operator delete[]",
    header: "GeomAPI_Interpolate.hxx".}
proc `new`*(this: var GeomAPI_Interpolate; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomAPI_Interpolate::operator new",
    header: "GeomAPI_Interpolate.hxx".}
proc `delete`*(this: var GeomAPI_Interpolate; a2: pointer; a3: pointer) {.
    importcpp: "GeomAPI_Interpolate::operator delete",
    header: "GeomAPI_Interpolate.hxx".}
proc constructGeomAPI_Interpolate*(points: Handle[TColgpHArray1OfPnt];
                                  periodicFlag: StandardBoolean;
                                  tolerance: StandardReal): GeomAPI_Interpolate {.
    constructor, importcpp: "GeomAPI_Interpolate(@)",
    header: "GeomAPI_Interpolate.hxx".}
proc constructGeomAPI_Interpolate*(points: Handle[TColgpHArray1OfPnt];
                                  parameters: Handle[TColStdHArray1OfReal];
                                  periodicFlag: StandardBoolean;
                                  tolerance: StandardReal): GeomAPI_Interpolate {.
    constructor, importcpp: "GeomAPI_Interpolate(@)",
    header: "GeomAPI_Interpolate.hxx".}
proc load*(this: var GeomAPI_Interpolate; initialTangent: Vec; finalTangent: Vec;
          scale: StandardBoolean = true) {.importcpp: "Load",
                                       header: "GeomAPI_Interpolate.hxx".}
proc load*(this: var GeomAPI_Interpolate; tangents: TColgpArray1OfVec;
          tangentFlags: Handle[TColStdHArray1OfBoolean];
          scale: StandardBoolean = true) {.importcpp: "Load",
                                       header: "GeomAPI_Interpolate.hxx".}
proc clearTangents*(this: var GeomAPI_Interpolate) {.importcpp: "ClearTangents",
    header: "GeomAPI_Interpolate.hxx".}
proc perform*(this: var GeomAPI_Interpolate) {.importcpp: "Perform",
    header: "GeomAPI_Interpolate.hxx".}
proc curve*(this: GeomAPI_Interpolate): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "GeomAPI_Interpolate.hxx".}
converter `opencascade`*(this: GeomAPI_Interpolate): Handle[GeomBSplineCurve] {.
    noSideEffect, importcpp: "GeomAPI_Interpolate::operator opencascade",
    header: "GeomAPI_Interpolate.hxx".}
proc isDone*(this: GeomAPI_Interpolate): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_Interpolate.hxx".}
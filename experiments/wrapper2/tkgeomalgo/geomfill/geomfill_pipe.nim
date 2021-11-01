##  Created on: 1994-04-13
##  Created by: Eric BONNARDEL
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Geom_Surface"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Dir"
type
  GeomFillPipe* {.importcpp: "GeomFill_Pipe", header: "GeomFill_Pipe.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## algorithm
                                                                                     ## for
                                                                                     ## building
                                                                                     ## pipes.
                                                                                     ## Use
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## function
                                                                                     ## Init
                                                                                     ## to
                                                                                     ## initialize
                                                                                     ## it.


proc newGeomFillPipe*(): GeomFillPipe {.cdecl, constructor,
                                     importcpp: "GeomFill_Pipe(@)",
                                     dynlib: tkgeomalgo.}
proc newGeomFillPipe*(path: Handle[GeomCurve]; radius: cfloat): GeomFillPipe {.cdecl,
    constructor, importcpp: "GeomFill_Pipe(@)", dynlib: tkgeomalgo.}
proc newGeomFillPipe*(path: Handle[GeomCurve]; firstSect: Handle[GeomCurve];
                     option: GeomFillTrihedron = geomFillIsCorrectedFrenet): GeomFillPipe {.
    cdecl, constructor, importcpp: "GeomFill_Pipe(@)", dynlib: tkgeomalgo.}
proc newGeomFillPipe*(path: Handle[Geom2dCurve]; support: Handle[GeomSurface];
                     firstSect: Handle[GeomCurve]): GeomFillPipe {.cdecl,
    constructor, importcpp: "GeomFill_Pipe(@)", dynlib: tkgeomalgo.}
proc newGeomFillPipe*(path: Handle[GeomCurve]; firstSect: Handle[GeomCurve]; dir: Dir): GeomFillPipe {.
    cdecl, constructor, importcpp: "GeomFill_Pipe(@)", dynlib: tkgeomalgo.}
proc newGeomFillPipe*(path: Handle[GeomCurve]; firstSect: Handle[GeomCurve];
                     lastSect: Handle[GeomCurve]): GeomFillPipe {.cdecl,
    constructor, importcpp: "GeomFill_Pipe(@)", dynlib: tkgeomalgo.}
proc newGeomFillPipe*(path: Handle[GeomCurve]; nSections: TColGeomSequenceOfCurve): GeomFillPipe {.
    cdecl, constructor, importcpp: "GeomFill_Pipe(@)", dynlib: tkgeomalgo.}
proc newGeomFillPipe*(path: Handle[GeomCurve]; curve1: Handle[GeomCurve];
                     curve2: Handle[GeomCurve]; radius: cfloat): GeomFillPipe {.
    cdecl, constructor, importcpp: "GeomFill_Pipe(@)", dynlib: tkgeomalgo.}
proc newGeomFillPipe*(path: Handle[Adaptor3dHCurve];
                     curve1: Handle[Adaptor3dHCurve];
                     curve2: Handle[Adaptor3dHCurve]; radius: cfloat): GeomFillPipe {.
    cdecl, constructor, importcpp: "GeomFill_Pipe(@)", dynlib: tkgeomalgo.}
proc newGeomFillPipe*(path: Handle[GeomCurve]; guide: Handle[Adaptor3dHCurve];
                     firstSect: Handle[GeomCurve]; byACR: bool; rotat: bool): GeomFillPipe {.
    cdecl, constructor, importcpp: "GeomFill_Pipe(@)", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillPipe; path: Handle[GeomCurve]; radius: cfloat) {.cdecl,
    importcpp: "Init", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillPipe; path: Handle[GeomCurve];
          firstSect: Handle[GeomCurve];
          option: GeomFillTrihedron = geomFillIsCorrectedFrenet) {.cdecl,
    importcpp: "Init", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillPipe; path: Handle[Geom2dCurve];
          support: Handle[GeomSurface]; firstSect: Handle[GeomCurve]) {.cdecl,
    importcpp: "Init", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillPipe; path: Handle[GeomCurve];
          firstSect: Handle[GeomCurve]; dir: Dir) {.cdecl, importcpp: "Init",
    dynlib: tkgeomalgo.}
proc init*(this: var GeomFillPipe; path: Handle[GeomCurve];
          firstSect: Handle[GeomCurve]; lastSect: Handle[GeomCurve]) {.cdecl,
    importcpp: "Init", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillPipe; path: Handle[GeomCurve];
          nSections: TColGeomSequenceOfCurve) {.cdecl, importcpp: "Init",
    dynlib: tkgeomalgo.}
proc init*(this: var GeomFillPipe; path: Handle[Adaptor3dHCurve];
          curve1: Handle[Adaptor3dHCurve]; curve2: Handle[Adaptor3dHCurve];
          radius: cfloat) {.cdecl, importcpp: "Init", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillPipe; path: Handle[GeomCurve];
          guide: Handle[Adaptor3dHCurve]; firstSect: Handle[GeomCurve]; byACR: bool;
          rotat: bool) {.cdecl, importcpp: "Init", dynlib: tkgeomalgo.}
proc perform*(this: var GeomFillPipe; withParameters: bool = false;
             myPolynomial: bool = false) {.cdecl, importcpp: "Perform",
                                       dynlib: tkgeomalgo.}
proc perform*(this: var GeomFillPipe; tol: cfloat; polynomial: bool;
             conti: GeomAbsShape = geomAbsC1; maxDegree: cint = 11;
             nbMaxSegment: cint = 30) {.cdecl, importcpp: "Perform", dynlib: tkgeomalgo.}
proc surface*(this: GeomFillPipe): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkgeomalgo.}
proc exchangeUV*(this: GeomFillPipe): bool {.noSideEffect, cdecl,
    importcpp: "ExchangeUV", dynlib: tkgeomalgo.}
proc generateParticularCase*(this: var GeomFillPipe; b: bool) {.cdecl,
    importcpp: "GenerateParticularCase", dynlib: tkgeomalgo.}
proc generateParticularCase*(this: GeomFillPipe): bool {.noSideEffect, cdecl,
    importcpp: "GenerateParticularCase", dynlib: tkgeomalgo.}
proc errorOnSurf*(this: GeomFillPipe): cfloat {.noSideEffect, cdecl,
    importcpp: "ErrorOnSurf", dynlib: tkgeomalgo.}
proc isDone*(this: GeomFillPipe): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                     dynlib: tkgeomalgo.}
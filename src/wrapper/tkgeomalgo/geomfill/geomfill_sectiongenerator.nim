##  Created on: 1994-02-18
##  Created by: Bruno DUMORTIER
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

## ! gives  the  functions  needed  for  instantiation from
## ! AppSurf in AppBlend.   Allow  to  evaluate  a  surface
## ! passing by all the curves if the Profiler.

type
  GeomFillSectionGenerator* {.importcpp: "GeomFill_SectionGenerator",
                             header: "GeomFill_SectionGenerator.hxx", bycopy.} = object of GeomFillProfiler


proc newGeomFillSectionGenerator*(): GeomFillSectionGenerator {.cdecl, constructor,
    importcpp: "GeomFill_SectionGenerator(@)", dynlib: tkgeomalgo.}
proc setParam*(this: var GeomFillSectionGenerator;
              params: Handle[TColStdHArray1OfReal]) {.cdecl, importcpp: "SetParam",
    dynlib: tkgeomalgo.}
proc getShape*(this: GeomFillSectionGenerator; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.noSideEffect, cdecl,
    importcpp: "GetShape", dynlib: tkgeomalgo.}
proc knots*(this: GeomFillSectionGenerator; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Knots", dynlib: tkgeomalgo.}
proc mults*(this: GeomFillSectionGenerator; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Mults", dynlib: tkgeomalgo.}
proc section*(this: GeomFillSectionGenerator; p: cint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): bool {.noSideEffect, cdecl,
    importcpp: "Section", dynlib: tkgeomalgo.}
proc section*(this: GeomFillSectionGenerator; p: cint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "Section", dynlib: tkgeomalgo.}
proc parameter*(this: GeomFillSectionGenerator; p: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", dynlib: tkgeomalgo.}
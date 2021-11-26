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


proc `new`*(this: var GeomFillSectionGenerator; theSize: csize_t): pointer {.
    importcpp: "GeomFill_SectionGenerator::operator new",
    header: "GeomFill_SectionGenerator.hxx".}
proc `delete`*(this: var GeomFillSectionGenerator; theAddress: pointer) {.
    importcpp: "GeomFill_SectionGenerator::operator delete",
    header: "GeomFill_SectionGenerator.hxx".}
proc `new[]`*(this: var GeomFillSectionGenerator; theSize: csize_t): pointer {.
    importcpp: "GeomFill_SectionGenerator::operator new[]",
    header: "GeomFill_SectionGenerator.hxx".}
proc `delete[]`*(this: var GeomFillSectionGenerator; theAddress: pointer) {.
    importcpp: "GeomFill_SectionGenerator::operator delete[]",
    header: "GeomFill_SectionGenerator.hxx".}
proc `new`*(this: var GeomFillSectionGenerator; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomFill_SectionGenerator::operator new",
    header: "GeomFill_SectionGenerator.hxx".}
proc `delete`*(this: var GeomFillSectionGenerator; a2: pointer; a3: pointer) {.
    importcpp: "GeomFill_SectionGenerator::operator delete",
    header: "GeomFill_SectionGenerator.hxx".}
proc constructGeomFillSectionGenerator*(): GeomFillSectionGenerator {.constructor,
    importcpp: "GeomFill_SectionGenerator(@)",
    header: "GeomFill_SectionGenerator.hxx".}
proc setParam*(this: var GeomFillSectionGenerator;
              params: Handle[TColStdHArray1OfReal]) {.importcpp: "SetParam",
    header: "GeomFill_SectionGenerator.hxx".}
proc getShape*(this: GeomFillSectionGenerator; nbPoles: var int; nbKnots: var int;
              degree: var int; nbPoles2d: var int) {.noSideEffect,
    importcpp: "GetShape", header: "GeomFill_SectionGenerator.hxx".}
proc knots*(this: GeomFillSectionGenerator; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_SectionGenerator.hxx".}
proc mults*(this: GeomFillSectionGenerator; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_SectionGenerator.hxx".}
proc section*(this: GeomFillSectionGenerator; p: int; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): StandardBoolean {.noSideEffect,
    importcpp: "Section", header: "GeomFill_SectionGenerator.hxx".}
proc section*(this: GeomFillSectionGenerator; p: int; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "Section", header: "GeomFill_SectionGenerator.hxx".}
proc parameter*(this: GeomFillSectionGenerator; p: int): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "GeomFill_SectionGenerator.hxx".}
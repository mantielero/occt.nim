##  Created on: 1999-09-21
##  Created by: Edward AGAPOV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of GeomAdaptor_HSurfaceOfRevolution"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of Extrema_POnSurf"
discard "forward decl of Extrema_ExtPRevS"
discard "forward decl of Extrema_ExtPRevS"
type
  HandleExtremaExtPRevS* = Handle[ExtremaExtPRevS]

## ! It calculates all the extremum (minimum and
## ! maximum) distances between a point and a surface
## ! of revolution.

type
  ExtremaExtPRevS* {.importcpp: "Extrema_ExtPRevS", header: "Extrema_ExtPRevS.hxx",
                    bycopy.} = object of StandardTransient


proc constructExtremaExtPRevS*(): ExtremaExtPRevS {.constructor,
    importcpp: "Extrema_ExtPRevS(@)", header: "Extrema_ExtPRevS.hxx".}
proc constructExtremaExtPRevS*(p: GpPnt;
                              s: Handle[GeomAdaptorHSurfaceOfRevolution];
                              umin: StandardReal; usup: StandardReal;
                              vmin: StandardReal; vsup: StandardReal;
                              tolU: StandardReal; tolV: StandardReal): ExtremaExtPRevS {.
    constructor, importcpp: "Extrema_ExtPRevS(@)", header: "Extrema_ExtPRevS.hxx".}
proc constructExtremaExtPRevS*(p: GpPnt;
                              s: Handle[GeomAdaptorHSurfaceOfRevolution];
                              tolU: StandardReal; tolV: StandardReal): ExtremaExtPRevS {.
    constructor, importcpp: "Extrema_ExtPRevS(@)", header: "Extrema_ExtPRevS.hxx".}
proc initialize*(this: var ExtremaExtPRevS;
                s: Handle[GeomAdaptorHSurfaceOfRevolution]; umin: StandardReal;
                usup: StandardReal; vmin: StandardReal; vsup: StandardReal;
                tolU: StandardReal; tolV: StandardReal) {.importcpp: "Initialize",
    header: "Extrema_ExtPRevS.hxx".}
proc perform*(this: var ExtremaExtPRevS; p: GpPnt) {.importcpp: "Perform",
    header: "Extrema_ExtPRevS.hxx".}
proc isDone*(this: ExtremaExtPRevS): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPRevS.hxx".}
proc nbExt*(this: ExtremaExtPRevS): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtPRevS.hxx".}
proc squareDistance*(this: ExtremaExtPRevS; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPRevS.hxx".}
proc point*(this: ExtremaExtPRevS; n: StandardInteger): ExtremaPOnSurf {.noSideEffect,
    importcpp: "Point", header: "Extrema_ExtPRevS.hxx".}
type
  ExtremaExtPRevSbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Extrema_ExtPRevS::get_type_name(@)",
                            header: "Extrema_ExtPRevS.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Extrema_ExtPRevS::get_type_descriptor(@)",
    header: "Extrema_ExtPRevS.hxx".}
proc dynamicType*(this: ExtremaExtPRevS): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Extrema_ExtPRevS.hxx".}


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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_HArray1OfReal,
  GeomFill_Profiler, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger,
  ../Standard/Standard_Boolean, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfVec, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColgp/TColgp_Array1OfVec2d, ../Standard/Standard_Real

## ! gives  the  functions  needed  for  instantiation from
## ! AppSurf in AppBlend.   Allow  to  evaluate  a  surface
## ! passing by all the curves if the Profiler.

type
  GeomFill_SectionGenerator* {.importcpp: "GeomFill_SectionGenerator",
                              header: "GeomFill_SectionGenerator.hxx", bycopy.} = object of GeomFill_Profiler


proc constructGeomFill_SectionGenerator*(): GeomFill_SectionGenerator {.
    constructor, importcpp: "GeomFill_SectionGenerator(@)",
    header: "GeomFill_SectionGenerator.hxx".}
proc SetParam*(this: var GeomFill_SectionGenerator;
              Params: handle[TColStd_HArray1OfReal]) {.importcpp: "SetParam",
    header: "GeomFill_SectionGenerator.hxx".}
proc GetShape*(this: GeomFill_SectionGenerator; NbPoles: var Standard_Integer;
              NbKnots: var Standard_Integer; Degree: var Standard_Integer;
              NbPoles2d: var Standard_Integer) {.noSideEffect,
    importcpp: "GetShape", header: "GeomFill_SectionGenerator.hxx".}
proc Knots*(this: GeomFill_SectionGenerator; TKnots: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_SectionGenerator.hxx".}
proc Mults*(this: GeomFill_SectionGenerator; TMults: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_SectionGenerator.hxx".}
proc Section*(this: GeomFill_SectionGenerator; P: Standard_Integer;
             Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    noSideEffect, importcpp: "Section", header: "GeomFill_SectionGenerator.hxx".}
proc Section*(this: GeomFill_SectionGenerator; P: Standard_Integer;
             Poles: var TColgp_Array1OfPnt; Poles2d: var TColgp_Array1OfPnt2d;
             Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "Section", header: "GeomFill_SectionGenerator.hxx".}
proc Parameter*(this: GeomFill_SectionGenerator; P: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Parameter", header: "GeomFill_SectionGenerator.hxx".}
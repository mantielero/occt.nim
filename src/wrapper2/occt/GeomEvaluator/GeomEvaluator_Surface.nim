##  Created on: 2015-09-21
##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GeomEvaluatorSurface* {.importcpp: "GeomEvaluator_Surface",
                         header: "GeomEvaluator_Surface.hxx", bycopy.} = object of StandardTransient


proc constructGeomEvaluatorSurface*(): GeomEvaluatorSurface {.constructor,
    importcpp: "GeomEvaluator_Surface(@)", header: "GeomEvaluator_Surface.hxx".}
proc d0*(this: GeomEvaluatorSurface; theU: StandardReal; theV: StandardReal;
        theValue: var GpPnt) {.noSideEffect, importcpp: "D0",
                            header: "GeomEvaluator_Surface.hxx".}
proc d1*(this: GeomEvaluatorSurface; theU: StandardReal; theV: StandardReal;
        theValue: var GpPnt; theD1U: var GpVec; theD1V: var GpVec) {.noSideEffect,
    importcpp: "D1", header: "GeomEvaluator_Surface.hxx".}
proc d2*(this: GeomEvaluatorSurface; theU: StandardReal; theV: StandardReal;
        theValue: var GpPnt; theD1U: var GpVec; theD1V: var GpVec; theD2U: var GpVec;
        theD2V: var GpVec; theD2UV: var GpVec) {.noSideEffect, importcpp: "D2",
    header: "GeomEvaluator_Surface.hxx".}
proc d3*(this: GeomEvaluatorSurface; theU: StandardReal; theV: StandardReal;
        theValue: var GpPnt; theD1U: var GpVec; theD1V: var GpVec; theD2U: var GpVec;
        theD2V: var GpVec; theD2UV: var GpVec; theD3U: var GpVec; theD3V: var GpVec;
        theD3UUV: var GpVec; theD3UVV: var GpVec) {.noSideEffect, importcpp: "D3",
    header: "GeomEvaluator_Surface.hxx".}
proc dn*(this: GeomEvaluatorSurface; theU: StandardReal; theV: StandardReal;
        theDerU: StandardInteger; theDerV: StandardInteger): GpVec {.noSideEffect,
    importcpp: "DN", header: "GeomEvaluator_Surface.hxx".}
type
  GeomEvaluatorSurfacebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "GeomEvaluator_Surface::get_type_name(@)",
                            header: "GeomEvaluator_Surface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomEvaluator_Surface::get_type_descriptor(@)",
    header: "GeomEvaluator_Surface.hxx".}
proc dynamicType*(this: GeomEvaluatorSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomEvaluator_Surface.hxx".}
discard "forward decl of GeomEvaluator_Surface"
type
  HandleGeomEvaluatorSurface* = Handle[GeomEvaluatorSurface]



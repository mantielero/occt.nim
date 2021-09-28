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

## !!!Ignored construct:  # _GeomEvaluator_Surface_HeaderFile [NewLine] # _GeomEvaluator_Surface_HeaderFile [NewLine] # < Standard_Transient . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] class gp_Pnt ;
## Error: expected ';'!!!

discard "forward decl of gp_Vec"
type
  GeomEvaluatorSurface* {.importcpp: "GeomEvaluator_Surface",
                         header: "GeomEvaluator_Surface.hxx", bycopy.} = object of StandardTransient


proc constructGeomEvaluatorSurface*(): GeomEvaluatorSurface {.constructor,
    importcpp: "GeomEvaluator_Surface(@)", header: "GeomEvaluator_Surface.hxx".}
proc d0*(this: GeomEvaluatorSurface; theU: float; theV: float; theValue: var Pnt) {.
    noSideEffect, importcpp: "D0", header: "GeomEvaluator_Surface.hxx".}
proc d1*(this: GeomEvaluatorSurface; theU: float; theV: float; theValue: var Pnt;
        theD1U: var Vec; theD1V: var Vec) {.noSideEffect, importcpp: "D1",
                                      header: "GeomEvaluator_Surface.hxx".}
proc d2*(this: GeomEvaluatorSurface; theU: float; theV: float; theValue: var Pnt;
        theD1U: var Vec; theD1V: var Vec; theD2U: var Vec; theD2V: var Vec; theD2UV: var Vec) {.
    noSideEffect, importcpp: "D2", header: "GeomEvaluator_Surface.hxx".}
proc d3*(this: GeomEvaluatorSurface; theU: float; theV: float; theValue: var Pnt;
        theD1U: var Vec; theD1V: var Vec; theD2U: var Vec; theD2V: var Vec;
        theD2UV: var Vec; theD3U: var Vec; theD3V: var Vec; theD3UUV: var Vec;
        theD3UVV: var Vec) {.noSideEffect, importcpp: "D3",
                          header: "GeomEvaluator_Surface.hxx".}
proc dn*(this: GeomEvaluatorSurface; theU: float; theV: float; theDerU: int; theDerV: int): Vec {.
    noSideEffect, importcpp: "DN", header: "GeomEvaluator_Surface.hxx".}
type
  GeomEvaluatorSurfacebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "GeomEvaluator_Surface::get_type_name(@)",
                            header: "GeomEvaluator_Surface.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) { return Standard_Type :: Instance < GeomEvaluator_Surface > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } }
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( GeomEvaluator_Surface , Standard_Transient ) #  _GeomEvaluator_Surface_HeaderFile
## Error: expected ';'!!!















































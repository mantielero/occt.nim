##  Created on: 1991-02-26
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1991-1999 Matra Datavision
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

type
  ExtremaHArray1OfPOnSurf* {.importcpp: "Extrema_HArray1OfPOnSurf",
                            header: "Extrema_HArray1OfPOnSurf.hxx", bycopy.} = object of ExtremaArray1OfPOnSurf


proc newExtremaHArray1OfPOnSurf*(theLower: cint; theUpper: cint): ExtremaHArray1OfPOnSurf {.
    cdecl, constructor, importcpp: "Extrema_HArray1OfPOnSurf(@)", dynlib: tkgeombase.}
proc newExtremaHArray1OfPOnSurf*(theLower: cint; theUpper: cint; theValue: ValueType): ExtremaHArray1OfPOnSurf {.
    cdecl, constructor, importcpp: "Extrema_HArray1OfPOnSurf(@)", dynlib: tkgeombase.}
proc newExtremaHArray1OfPOnSurf*(theOther: ExtremaArray1OfPOnSurf): ExtremaHArray1OfPOnSurf {.
    cdecl, constructor, importcpp: "Extrema_HArray1OfPOnSurf(@)", dynlib: tkgeombase.}
proc array1*(this: ExtremaHArray1OfPOnSurf): ExtremaArray1OfPOnSurf {.noSideEffect,
    cdecl, importcpp: "Array1", dynlib: tkgeombase.}
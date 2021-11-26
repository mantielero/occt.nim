##  Created on: 1993-09-28
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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
  GeomFillHArray1OfLocationLaw* {.importcpp: "GeomFill_HArray1OfLocationLaw",
                                 header: "GeomFill_HArray1OfLocationLaw.hxx",
                                 bycopy.} = object of GeomFillArray1OfLocationLaw


proc newGeomFillHArray1OfLocationLaw*(theLower: cint; theUpper: cint): GeomFillHArray1OfLocationLaw {.
    cdecl, constructor, importcpp: "GeomFill_HArray1OfLocationLaw(@)",
    dynlib: tkgeomalgo.}
proc newGeomFillHArray1OfLocationLaw*(theLower: cint; theUpper: cint;
                                     theValue: ValueType): GeomFillHArray1OfLocationLaw {.
    cdecl, constructor, importcpp: "GeomFill_HArray1OfLocationLaw(@)",
    dynlib: tkgeomalgo.}
proc newGeomFillHArray1OfLocationLaw*(theOther: GeomFillArray1OfLocationLaw): GeomFillHArray1OfLocationLaw {.
    cdecl, constructor, importcpp: "GeomFill_HArray1OfLocationLaw(@)",
    dynlib: tkgeomalgo.}
proc array1*(this: GeomFillHArray1OfLocationLaw): GeomFillArray1OfLocationLaw {.
    noSideEffect, cdecl, importcpp: "Array1", dynlib: tkgeomalgo.}
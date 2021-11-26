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
  GeomFillHSequenceOfAx2* {.importcpp: "GeomFill_HSequenceOfAx2",
                           header: "GeomFill_HSequenceOfAx2.hxx", bycopy.} = object of GeomFillSequenceOfAx2


proc newGeomFillHSequenceOfAx2*(): GeomFillHSequenceOfAx2 {.cdecl, constructor,
    importcpp: "GeomFill_HSequenceOfAx2(@)", dynlib: tkgeomalgo.}
proc newGeomFillHSequenceOfAx2*(theOther: GeomFillSequenceOfAx2): GeomFillHSequenceOfAx2 {.
    cdecl, constructor, importcpp: "GeomFill_HSequenceOfAx2(@)", dynlib: tkgeomalgo.}
proc sequence*(this: GeomFillHSequenceOfAx2): GeomFillSequenceOfAx2 {.noSideEffect,
    cdecl, importcpp: "Sequence", dynlib: tkgeomalgo.}
proc append*(this: var GeomFillHSequenceOfAx2; theItem: ValueType) {.cdecl,
    importcpp: "Append", dynlib: tkgeomalgo.}
proc append*(this: var GeomFillHSequenceOfAx2;
            theSequence: var GeomFillSequenceOfAx2) {.cdecl, importcpp: "Append",
    dynlib: tkgeomalgo.}
proc changeSequence*(this: var GeomFillHSequenceOfAx2): var GeomFillSequenceOfAx2 {.
    cdecl, importcpp: "ChangeSequence", dynlib: tkgeomalgo.}
type
  HandleGeomFillHSequenceOfAx2* = Handle[GeomFillHSequenceOfAx2]

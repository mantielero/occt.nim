##  Created on: 1993-03-10
##  Created by: Philippe DAUTRY
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
  TColgpHSequenceOfVec2d* {.importcpp: "TColgp_HSequenceOfVec2d",
                           header: "TColgp_HSequenceOfVec2d.hxx", bycopy.} = object of TColgpSequenceOfVec2d


proc newTColgpHSequenceOfVec2d*(): TColgpHSequenceOfVec2d {.cdecl, constructor,
    importcpp: "TColgp_HSequenceOfVec2d(@)", dynlib: tkmath.}
proc newTColgpHSequenceOfVec2d*(theOther: TColgpSequenceOfVec2d): TColgpHSequenceOfVec2d {.
    cdecl, constructor, importcpp: "TColgp_HSequenceOfVec2d(@)", dynlib: tkmath.}
proc sequence*(this: TColgpHSequenceOfVec2d): TColgpSequenceOfVec2d {.noSideEffect,
    cdecl, importcpp: "Sequence", dynlib: tkmath.}
proc append*(this: var TColgpHSequenceOfVec2d; theItem: ValueType) {.cdecl,
    importcpp: "Append", dynlib: tkmath.}
proc append*(this: var TColgpHSequenceOfVec2d;
            theSequence: var TColgpSequenceOfVec2d) {.cdecl, importcpp: "Append",
    dynlib: tkmath.}
proc changeSequence*(this: var TColgpHSequenceOfVec2d): var TColgpSequenceOfVec2d {.
    cdecl, importcpp: "ChangeSequence", dynlib: tkmath.}
type
  HandleTColgpHSequenceOfVec2d* = Handle[TColgpHSequenceOfVec2d]

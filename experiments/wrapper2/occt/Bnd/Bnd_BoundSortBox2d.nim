##  Created on: 1993-03-05
##  Created by: Didier PIFFAULT
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Bnd_Box2d, Bnd_HArray1OfBox2d,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfListOfInteger,
  ../TColStd/TColStd_DataMapOfIntegerInteger, ../TColStd/TColStd_ListOfInteger

discard "forward decl of Standard_NullValue"
discard "forward decl of Standard_MultiplyDefined"
discard "forward decl of Bnd_Box2d"
type
  Bnd_BoundSortBox2d* {.importcpp: "Bnd_BoundSortBox2d",
                       header: "Bnd_BoundSortBox2d.hxx", bycopy.} = object ## ! Constructs an empty comparison algorithm for 2D bounding boxes.
                                                                      ## ! The bounding boxes are then defined using the Initialize function.
                                                                      ## ! Prepares
                                                                      ## BoundSortBox2d and sorts the rectangles of
                                                                      ## ! <SetOfBox> .


proc constructBnd_BoundSortBox2d*(): Bnd_BoundSortBox2d {.constructor,
    importcpp: "Bnd_BoundSortBox2d(@)", header: "Bnd_BoundSortBox2d.hxx".}
proc Initialize*(this: var Bnd_BoundSortBox2d; CompleteBox: Bnd_Box2d;
                SetOfBox: handle[Bnd_HArray1OfBox2d]) {.importcpp: "Initialize",
    header: "Bnd_BoundSortBox2d.hxx".}
proc Initialize*(this: var Bnd_BoundSortBox2d; SetOfBox: handle[Bnd_HArray1OfBox2d]) {.
    importcpp: "Initialize", header: "Bnd_BoundSortBox2d.hxx".}
proc Initialize*(this: var Bnd_BoundSortBox2d; CompleteBox: Bnd_Box2d;
                nbComponents: Standard_Integer) {.importcpp: "Initialize",
    header: "Bnd_BoundSortBox2d.hxx".}
proc Add*(this: var Bnd_BoundSortBox2d; theBox: Bnd_Box2d; boxIndex: Standard_Integer) {.
    importcpp: "Add", header: "Bnd_BoundSortBox2d.hxx".}
proc Compare*(this: var Bnd_BoundSortBox2d; theBox: Bnd_Box2d): TColStd_ListOfInteger {.
    importcpp: "Compare", header: "Bnd_BoundSortBox2d.hxx".}
proc Dump*(this: Bnd_BoundSortBox2d) {.noSideEffect, importcpp: "Dump",
                                    header: "Bnd_BoundSortBox2d.hxx".}
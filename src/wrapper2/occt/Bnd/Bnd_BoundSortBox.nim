##  Created on: 1992-11-24
##  Created by: Didier PIFFAULT
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, Bnd_Box, Bnd_HArray1OfBox,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TColStd/TColStd_DataMapOfIntegerInteger, ../TColStd/TColStd_ListOfInteger,
  ../Standard/Standard_Address

discard "forward decl of Standard_NullValue"
discard "forward decl of Standard_MultiplyDefined"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pln"
type
  Bnd_BoundSortBox* {.importcpp: "Bnd_BoundSortBox",
                     header: "Bnd_BoundSortBox.hxx", bycopy.} = object ## ! Constructs an empty comparison algorithm for bounding boxes.
                                                                  ## ! The bounding boxes are then defined using the Initialize function.
                                                                  ## ! Prepares  BoundSortBox and  sorts   the  boxes of
                                                                  ## ! <SetOfBox> .


proc constructBnd_BoundSortBox*(): Bnd_BoundSortBox {.constructor,
    importcpp: "Bnd_BoundSortBox(@)", header: "Bnd_BoundSortBox.hxx".}
proc Initialize*(this: var Bnd_BoundSortBox; CompleteBox: Bnd_Box;
                SetOfBox: handle[Bnd_HArray1OfBox]) {.importcpp: "Initialize",
    header: "Bnd_BoundSortBox.hxx".}
proc Initialize*(this: var Bnd_BoundSortBox; SetOfBox: handle[Bnd_HArray1OfBox]) {.
    importcpp: "Initialize", header: "Bnd_BoundSortBox.hxx".}
proc Initialize*(this: var Bnd_BoundSortBox; CompleteBox: Bnd_Box;
                nbComponents: Standard_Integer) {.importcpp: "Initialize",
    header: "Bnd_BoundSortBox.hxx".}
proc Add*(this: var Bnd_BoundSortBox; theBox: Bnd_Box; boxIndex: Standard_Integer) {.
    importcpp: "Add", header: "Bnd_BoundSortBox.hxx".}
proc Compare*(this: var Bnd_BoundSortBox; theBox: Bnd_Box): TColStd_ListOfInteger {.
    importcpp: "Compare", header: "Bnd_BoundSortBox.hxx".}
proc Compare*(this: var Bnd_BoundSortBox; P: gp_Pln): TColStd_ListOfInteger {.
    importcpp: "Compare", header: "Bnd_BoundSortBox.hxx".}
proc Dump*(this: Bnd_BoundSortBox) {.noSideEffect, importcpp: "Dump",
                                  header: "Bnd_BoundSortBox.hxx".}
proc Destroy*(this: var Bnd_BoundSortBox) {.importcpp: "Destroy",
                                        header: "Bnd_BoundSortBox.hxx".}
proc destroyBnd_BoundSortBox*(this: var Bnd_BoundSortBox) {.
    importcpp: "#.~Bnd_BoundSortBox()", header: "Bnd_BoundSortBox.hxx".}
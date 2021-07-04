##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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
  ../Standard/Standard, ../Standard/Standard_Type, IGESSolid_HArray1OfFace,
  ../TColStd/TColStd_HArray1OfInteger, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESSolid_Face"
discard "forward decl of IGESSolid_Shell"
discard "forward decl of IGESSolid_Shell"
type
  Handle_IGESSolid_Shell* = handle[IGESSolid_Shell]

## ! defines Shell, Type <514> Form Number <1>
## ! in package IGESSolid
## ! Shell entity is a connected entity of dimensionality 2
## ! which divides R3 into two arcwise connected open subsets,
## ! one of which is finite. Inside of the shell is defined to
## ! be the finite region.
## ! From IGES-5.3, Form can be <1> for Closed or <2> for Open

type
  IGESSolid_Shell* {.importcpp: "IGESSolid_Shell", header: "IGESSolid_Shell.hxx",
                    bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_Shell*(): IGESSolid_Shell {.constructor,
    importcpp: "IGESSolid_Shell(@)", header: "IGESSolid_Shell.hxx".}
proc Init*(this: var IGESSolid_Shell; allFaces: handle[IGESSolid_HArray1OfFace];
          allOrient: handle[TColStd_HArray1OfInteger]) {.importcpp: "Init",
    header: "IGESSolid_Shell.hxx".}
proc IsClosed*(this: IGESSolid_Shell): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "IGESSolid_Shell.hxx".}
proc SetClosed*(this: var IGESSolid_Shell; closed: Standard_Boolean) {.
    importcpp: "SetClosed", header: "IGESSolid_Shell.hxx".}
proc NbFaces*(this: IGESSolid_Shell): Standard_Integer {.noSideEffect,
    importcpp: "NbFaces", header: "IGESSolid_Shell.hxx".}
proc Face*(this: IGESSolid_Shell; Index: Standard_Integer): handle[IGESSolid_Face] {.
    noSideEffect, importcpp: "Face", header: "IGESSolid_Shell.hxx".}
proc Orientation*(this: IGESSolid_Shell; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Orientation", header: "IGESSolid_Shell.hxx".}
type
  IGESSolid_Shellbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_Shell::get_type_name(@)",
                              header: "IGESSolid_Shell.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_Shell::get_type_descriptor(@)",
    header: "IGESSolid_Shell.hxx".}
proc DynamicType*(this: IGESSolid_Shell): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Shell.hxx".}
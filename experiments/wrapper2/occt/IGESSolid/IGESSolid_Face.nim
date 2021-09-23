##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (SIVA)
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  IGESSolid_HArray1OfLoop, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESSolid_Loop"
discard "forward decl of IGESSolid_Face"
discard "forward decl of IGESSolid_Face"
type
  Handle_IGESSolid_Face* = handle[IGESSolid_Face]

## ! defines Face, Type <510> Form Number <1>
## ! in package IGESSolid
## ! Face entity is a bound (partial) which has finite area

type
  IGESSolid_Face* {.importcpp: "IGESSolid_Face", header: "IGESSolid_Face.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_Face*(): IGESSolid_Face {.constructor,
    importcpp: "IGESSolid_Face(@)", header: "IGESSolid_Face.hxx".}
proc Init*(this: var IGESSolid_Face; aSurface: handle[IGESData_IGESEntity];
          outerLoopFlag: Standard_Boolean; loops: handle[IGESSolid_HArray1OfLoop]) {.
    importcpp: "Init", header: "IGESSolid_Face.hxx".}
proc Surface*(this: IGESSolid_Face): handle[IGESData_IGESEntity] {.noSideEffect,
    importcpp: "Surface", header: "IGESSolid_Face.hxx".}
proc NbLoops*(this: IGESSolid_Face): Standard_Integer {.noSideEffect,
    importcpp: "NbLoops", header: "IGESSolid_Face.hxx".}
proc HasOuterLoop*(this: IGESSolid_Face): Standard_Boolean {.noSideEffect,
    importcpp: "HasOuterLoop", header: "IGESSolid_Face.hxx".}
proc Loop*(this: IGESSolid_Face; Index: Standard_Integer): handle[IGESSolid_Loop] {.
    noSideEffect, importcpp: "Loop", header: "IGESSolid_Face.hxx".}
type
  IGESSolid_Facebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_Face::get_type_name(@)",
                              header: "IGESSolid_Face.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_Face::get_type_descriptor(@)",
    header: "IGESSolid_Face.hxx".}
proc DynamicType*(this: IGESSolid_Face): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Face.hxx".}
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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESSolid_Loop"
discard "forward decl of IGESSolid_Face"
discard "forward decl of IGESSolid_Face"
type
  HandleIGESSolidFace* = Handle[IGESSolidFace]

## ! defines Face, Type <510> Form Number <1>
## ! in package IGESSolid
## ! Face entity is a bound (partial) which has finite area

type
  IGESSolidFace* {.importcpp: "IGESSolid_Face", header: "IGESSolid_Face.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidFace*(): IGESSolidFace {.constructor,
    importcpp: "IGESSolid_Face(@)", header: "IGESSolid_Face.hxx".}
proc init*(this: var IGESSolidFace; aSurface: Handle[IGESDataIGESEntity];
          outerLoopFlag: bool; loops: Handle[IGESSolidHArray1OfLoop]) {.
    importcpp: "Init", header: "IGESSolid_Face.hxx".}
proc surface*(this: IGESSolidFace): Handle[IGESDataIGESEntity] {.noSideEffect,
    importcpp: "Surface", header: "IGESSolid_Face.hxx".}
proc nbLoops*(this: IGESSolidFace): int {.noSideEffect, importcpp: "NbLoops",
                                      header: "IGESSolid_Face.hxx".}
proc hasOuterLoop*(this: IGESSolidFace): bool {.noSideEffect,
    importcpp: "HasOuterLoop", header: "IGESSolid_Face.hxx".}
proc loop*(this: IGESSolidFace; index: int): Handle[IGESSolidLoop] {.noSideEffect,
    importcpp: "Loop", header: "IGESSolid_Face.hxx".}
type
  IGESSolidFacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_Face::get_type_name(@)",
                            header: "IGESSolid_Face.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_Face::get_type_descriptor(@)",
    header: "IGESSolid_Face.hxx".}
proc dynamicType*(this: IGESSolidFace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Face.hxx".}

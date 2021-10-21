##  Created on: 1995-06-28
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_HShape"
type
  HandleTopoDS_HShape* = Handle[TopoDS_HShape]

## ! Class to manipulate a Shape with  handle.

type
  TopoDS_HShape* {.importcpp: "TopoDS_HShape", header: "TopoDS_HShape.hxx", bycopy.} = object of StandardTransient ##
                                                                                                         ## !
                                                                                                         ## Constructs
                                                                                                         ## an
                                                                                                         ## empty
                                                                                                         ## shape
                                                                                                         ## object


proc newTopoDS_HShape*(): TopoDS_HShape {.cdecl, constructor,
                                       importcpp: "TopoDS_HShape(@)",
                                       dynlib: tkernel.}
proc newTopoDS_HShape*(aShape: TopoDS_Shape): TopoDS_HShape {.cdecl, constructor,
    importcpp: "TopoDS_HShape(@)", dynlib: tkernel.}
proc shape*(this: var TopoDS_HShape; aShape: TopoDS_Shape) {.cdecl, importcpp: "Shape",
    dynlib: tkernel.}
proc shape*(this: TopoDS_HShape): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", dynlib: tkernel.}
proc changeShape*(this: var TopoDS_HShape): var TopoDS_Shape {.cdecl,
    importcpp: "ChangeShape", dynlib: tkernel.}
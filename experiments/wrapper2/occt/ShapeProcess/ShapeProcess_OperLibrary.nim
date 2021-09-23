##  Created on: 2000-08-31
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_DataMapOfShapeShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeProcess_ShapeContext"
discard "forward decl of BRepTools_Modification"
discard "forward decl of ShapeExtend_MsgRegistrator"
type
  ShapeProcess_OperLibrary* {.importcpp: "ShapeProcess_OperLibrary",
                             header: "ShapeProcess_OperLibrary.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Registers
                                                                                  ## all
                                                                                  ## the
                                                                                  ## operators


proc Init*() {.importcpp: "ShapeProcess_OperLibrary::Init(@)",
             header: "ShapeProcess_OperLibrary.hxx".}
proc ApplyModifier*(S: TopoDS_Shape; context: handle[ShapeProcess_ShapeContext];
                   M: handle[BRepTools_Modification];
                   map: var TopTools_DataMapOfShapeShape;
                   msg: handle[ShapeExtend_MsgRegistrator] = 0;
                   theMutableInput: Standard_Boolean = Standard_False): TopoDS_Shape {.
    importcpp: "ShapeProcess_OperLibrary::ApplyModifier(@)",
    header: "ShapeProcess_OperLibrary.hxx".}
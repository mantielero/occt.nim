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

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeProcess_ShapeContext"
discard "forward decl of BRepTools_Modification"
discard "forward decl of ShapeExtend_MsgRegistrator"
type
  ShapeProcessOperLibrary* {.importcpp: "ShapeProcess_OperLibrary",
                            header: "ShapeProcess_OperLibrary.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Registers
                                                                                 ## all
                                                                                 ## the
                                                                                 ## operators


proc init*() {.importcpp: "ShapeProcess_OperLibrary::Init(@)",
             header: "ShapeProcess_OperLibrary.hxx".}
proc applyModifier*(s: TopoDS_Shape; context: Handle[ShapeProcessShapeContext];
                   m: Handle[BRepToolsModification];
                   map: var TopToolsDataMapOfShapeShape;
                   msg: Handle[ShapeExtendMsgRegistrator] = 0;
                   theMutableInput: bool = false): TopoDS_Shape {.
    importcpp: "ShapeProcess_OperLibrary::ApplyModifier(@)",
    header: "ShapeProcess_OperLibrary.hxx".}


























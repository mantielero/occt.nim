##  Created on: 1996-12-30
##  Created by: Stagiaire Mary FABIEN
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_GTrsf"
discard "forward decl of TopoDS_Shape"
type
  BRepBuilderAPI_GTransform* {.importcpp: "BRepBuilderAPI_GTransform",
                              header: "BRepBuilderAPI_GTransform.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape


proc `new`*(this: var BRepBuilderAPI_GTransform; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_GTransform::operator new",
    header: "BRepBuilderAPI_GTransform.hxx".}
proc `delete`*(this: var BRepBuilderAPI_GTransform; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_GTransform::operator delete",
    header: "BRepBuilderAPI_GTransform.hxx".}
proc `new[]`*(this: var BRepBuilderAPI_GTransform; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_GTransform::operator new[]",
    header: "BRepBuilderAPI_GTransform.hxx".}
proc `delete[]`*(this: var BRepBuilderAPI_GTransform; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_GTransform::operator delete[]",
    header: "BRepBuilderAPI_GTransform.hxx".}
proc `new`*(this: var BRepBuilderAPI_GTransform; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBuilderAPI_GTransform::operator new",
    header: "BRepBuilderAPI_GTransform.hxx".}
proc `delete`*(this: var BRepBuilderAPI_GTransform; a2: pointer; a3: pointer) {.
    importcpp: "BRepBuilderAPI_GTransform::operator delete",
    header: "BRepBuilderAPI_GTransform.hxx".}
proc constructBRepBuilderAPI_GTransform*(t: GTrsf): BRepBuilderAPI_GTransform {.
    constructor, importcpp: "BRepBuilderAPI_GTransform(@)",
    header: "BRepBuilderAPI_GTransform.hxx".}
proc constructBRepBuilderAPI_GTransform*(s: TopoDS_Shape; t: GTrsf;
                                        copy: StandardBoolean = false): BRepBuilderAPI_GTransform {.
    constructor, importcpp: "BRepBuilderAPI_GTransform(@)",
    header: "BRepBuilderAPI_GTransform.hxx".}
proc perform*(this: var BRepBuilderAPI_GTransform; s: TopoDS_Shape;
             copy: StandardBoolean = false) {.importcpp: "Perform",
    header: "BRepBuilderAPI_GTransform.hxx".}
#[ proc modified*(this: var BRepBuilderAPI_GTransform; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepBuilderAPI_GTransform.hxx".}
proc modifiedShape*(this: BRepBuilderAPI_GTransform; s: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedShape",
    header: "BRepBuilderAPI_GTransform.hxx".} ]#
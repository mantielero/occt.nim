##  Created on: 1994-12-02
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of BRepTools_Modification"
discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
type
  BRepBuilderAPI_ModifyShape* {.importcpp: "BRepBuilderAPI_ModifyShape",
                               header: "BRepBuilderAPI_ModifyShape.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                                ## !
                                                                                                                ## Empty
                                                                                                                ## constructor.


proc `new`*(this: var BRepBuilderAPI_ModifyShape; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_ModifyShape::operator new",
    header: "BRepBuilderAPI_ModifyShape.hxx".}
proc `delete`*(this: var BRepBuilderAPI_ModifyShape; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_ModifyShape::operator delete",
    header: "BRepBuilderAPI_ModifyShape.hxx".}
proc `new[]`*(this: var BRepBuilderAPI_ModifyShape; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_ModifyShape::operator new[]",
    header: "BRepBuilderAPI_ModifyShape.hxx".}
proc `delete[]`*(this: var BRepBuilderAPI_ModifyShape; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_ModifyShape::operator delete[]",
    header: "BRepBuilderAPI_ModifyShape.hxx".}
proc `new`*(this: var BRepBuilderAPI_ModifyShape; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBuilderAPI_ModifyShape::operator new",
    header: "BRepBuilderAPI_ModifyShape.hxx".}
proc `delete`*(this: var BRepBuilderAPI_ModifyShape; a2: pointer; a3: pointer) {.
    importcpp: "BRepBuilderAPI_ModifyShape::operator delete",
    header: "BRepBuilderAPI_ModifyShape.hxx".}
#[ proc modified*(this: var BRepBuilderAPI_ModifyShape; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepBuilderAPI_ModifyShape.hxx".} ]#
proc modifiedShape*(this: BRepBuilderAPI_ModifyShape; s: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedShape",
    header: "BRepBuilderAPI_ModifyShape.hxx".}
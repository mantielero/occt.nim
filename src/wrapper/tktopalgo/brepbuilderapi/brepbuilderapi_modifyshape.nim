import brepbuilderapi_types

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


proc modified*(this: var BRepBuilderAPI_ModifyShape; s: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", header: "BRepBuilderAPI_ModifyShape.hxx".}
proc modifiedShape*(this: BRepBuilderAPI_ModifyShape; s: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "ModifiedShape", header: "BRepBuilderAPI_ModifyShape.hxx".}

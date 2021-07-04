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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_GTrsf, BRepBuilderAPI_Collect,
  BRepBuilderAPI_ModifyShape, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_GTrsf"
discard "forward decl of TopoDS_Shape"
type
  BRepBuilderAPI_GTransform* {.importcpp: "BRepBuilderAPI_GTransform",
                              header: "BRepBuilderAPI_GTransform.hxx", bycopy.} = object of BRepBuilderAPI_ModifyShape ##
                                                                                                                ## !
                                                                                                                ## Constructs
                                                                                                                ## a
                                                                                                                ## framework
                                                                                                                ## for
                                                                                                                ## applying
                                                                                                                ## the
                                                                                                                ## geometric
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## transformation
                                                                                                                ## T
                                                                                                                ## to
                                                                                                                ## a
                                                                                                                ## shape.
                                                                                                                ## Use
                                                                                                                ## the
                                                                                                                ## function
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Perform
                                                                                                                ## to
                                                                                                                ## define
                                                                                                                ## the
                                                                                                                ## shape
                                                                                                                ## to
                                                                                                                ## transform.


proc constructBRepBuilderAPI_GTransform*(T: gp_GTrsf): BRepBuilderAPI_GTransform {.
    constructor, importcpp: "BRepBuilderAPI_GTransform(@)",
    header: "BRepBuilderAPI_GTransform.hxx".}
proc constructBRepBuilderAPI_GTransform*(S: TopoDS_Shape; T: gp_GTrsf;
                                        Copy: Standard_Boolean = Standard_False): BRepBuilderAPI_GTransform {.
    constructor, importcpp: "BRepBuilderAPI_GTransform(@)",
    header: "BRepBuilderAPI_GTransform.hxx".}
proc Perform*(this: var BRepBuilderAPI_GTransform; S: TopoDS_Shape;
             Copy: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "BRepBuilderAPI_GTransform.hxx".}
proc Modified*(this: var BRepBuilderAPI_GTransform; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepBuilderAPI_GTransform.hxx".}
proc ModifiedShape*(this: BRepBuilderAPI_GTransform; S: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedShape",
    header: "BRepBuilderAPI_GTransform.hxx".}
##  Created on: 1998-03-27
##  Created by: Robert COUBLANC
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../TopoDS/TopoDS_Shape, ../Prs3d/Prs3d_Drawer,
  ../PrsMgr/PrsMgr_PresentableObject

discard "forward decl of TopoDS_Shape"
type
  StdSelect_Shape* {.importcpp: "StdSelect_Shape", header: "StdSelect_Shape.hxx",
                    bycopy.} = object of PrsMgr_PresentableObject

  StdSelect_Shapebase_type* = PrsMgr_PresentableObject

proc get_type_name*(): cstring {.importcpp: "StdSelect_Shape::get_type_name(@)",
                              header: "StdSelect_Shape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdSelect_Shape::get_type_descriptor(@)",
    header: "StdSelect_Shape.hxx".}
proc DynamicType*(this: StdSelect_Shape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StdSelect_Shape.hxx".}
proc constructStdSelect_Shape*(theShape: TopoDS_Shape; theDrawer: handle[
    Prs3d_Drawer] = handle[Prs3d_Drawer]()): StdSelect_Shape {.constructor,
    importcpp: "StdSelect_Shape(@)", header: "StdSelect_Shape.hxx".}
proc Compute*(this: var StdSelect_Shape;
             aPresentationManager: handle[PrsMgr_PresentationManager3d];
             aPresentation: handle[Prs3d_Presentation];
             aMode: Standard_Integer = 0) {.importcpp: "Compute",
                                        header: "StdSelect_Shape.hxx".}
proc Shape*(this: StdSelect_Shape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "StdSelect_Shape.hxx".}
proc Shape*(this: var StdSelect_Shape; theShape: TopoDS_Shape) {.importcpp: "Shape",
    header: "StdSelect_Shape.hxx".}
proc DumpJson*(this: StdSelect_Shape; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "StdSelect_Shape.hxx".}
discard "forward decl of StdSelect_Shape"
type
  Handle_StdSelect_Shape* = handle[StdSelect_Shape]

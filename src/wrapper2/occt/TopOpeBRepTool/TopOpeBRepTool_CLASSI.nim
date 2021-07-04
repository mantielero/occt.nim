##  Created on: 1999-01-13
##  Created by: Xuan PHAM PHU
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face,
  TopOpeBRepTool_IndexedDataMapOfShapeBox2d, TopOpeBRepTool_DataMapOfShapeface,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Bnd_Box2d"
discard "forward decl of TopOpeBRepTool_face"
type
  TopOpeBRepTool_CLASSI* {.importcpp: "TopOpeBRepTool_CLASSI",
                          header: "TopOpeBRepTool_CLASSI.hxx", bycopy.} = object


proc constructTopOpeBRepTool_CLASSI*(): TopOpeBRepTool_CLASSI {.constructor,
    importcpp: "TopOpeBRepTool_CLASSI(@)", header: "TopOpeBRepTool_CLASSI.hxx".}
proc Init2d*(this: var TopOpeBRepTool_CLASSI; Fref: TopoDS_Face) {.
    importcpp: "Init2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc HasInit2d*(this: TopOpeBRepTool_CLASSI): Standard_Boolean {.noSideEffect,
    importcpp: "HasInit2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc Add2d*(this: var TopOpeBRepTool_CLASSI; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "Add2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc GetBox2d*(this: var TopOpeBRepTool_CLASSI; S: TopoDS_Shape; Box2d: var Bnd_Box2d): Standard_Boolean {.
    importcpp: "GetBox2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc ClassiBnd2d*(this: var TopOpeBRepTool_CLASSI; S1: TopoDS_Shape; S2: TopoDS_Shape;
                 tol: Standard_Real; checklarge: Standard_Boolean): Standard_Integer {.
    importcpp: "ClassiBnd2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc Classip2d*(this: var TopOpeBRepTool_CLASSI; S1: TopoDS_Shape; S2: TopoDS_Shape;
               stabnd2d12: Standard_Integer): Standard_Integer {.
    importcpp: "Classip2d", header: "TopOpeBRepTool_CLASSI.hxx".}
proc Getface*(this: TopOpeBRepTool_CLASSI; S: TopoDS_Shape;
             fa: var TopOpeBRepTool_face): Standard_Boolean {.noSideEffect,
    importcpp: "Getface", header: "TopOpeBRepTool_CLASSI.hxx".}
proc Classilist*(this: var TopOpeBRepTool_CLASSI; lS: TopTools_ListOfShape;
                mapgreasma: var TopTools_DataMapOfShapeListOfShape): Standard_Boolean {.
    importcpp: "Classilist", header: "TopOpeBRepTool_CLASSI.hxx".}
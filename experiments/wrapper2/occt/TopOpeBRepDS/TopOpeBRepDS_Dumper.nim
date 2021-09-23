##  Created on: 1994-08-04
##  Created by: Jean Yves LEBEY
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_OStream,
  ../Standard/Standard_Boolean, TopOpeBRepDS_Kind, ../Standard/Standard_Integer,
  ../TopAbs/TopAbs_ShapeEnum, TopOpeBRepDS_ListOfInterference,
  ../TCollection/TCollection_AsciiString, ../TopTools/TopTools_ListOfShape

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_Interference"
type
  TopOpeBRepDS_Dumper* {.importcpp: "TopOpeBRepDS_Dumper",
                        header: "TopOpeBRepDS_Dumper.hxx", bycopy.} = object


proc constructTopOpeBRepDS_Dumper*(HDS: handle[TopOpeBRepDS_HDataStructure]): TopOpeBRepDS_Dumper {.
    constructor, importcpp: "TopOpeBRepDS_Dumper(@)",
    header: "TopOpeBRepDS_Dumper.hxx".}
proc SDumpRefOri*(this: TopOpeBRepDS_Dumper; K: TopOpeBRepDS_Kind;
                 I: Standard_Integer): TCollection_AsciiString {.noSideEffect,
    importcpp: "SDumpRefOri", header: "TopOpeBRepDS_Dumper.hxx".}
proc SDumpRefOri*(this: TopOpeBRepDS_Dumper; S: TopoDS_Shape): TCollection_AsciiString {.
    noSideEffect, importcpp: "SDumpRefOri", header: "TopOpeBRepDS_Dumper.hxx".}
proc SPrintShape*(this: TopOpeBRepDS_Dumper; I: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "SPrintShape", header: "TopOpeBRepDS_Dumper.hxx".}
proc SPrintShape*(this: TopOpeBRepDS_Dumper; S: TopoDS_Shape): TCollection_AsciiString {.
    noSideEffect, importcpp: "SPrintShape", header: "TopOpeBRepDS_Dumper.hxx".}
proc SPrintShapeRefOri*(this: TopOpeBRepDS_Dumper; S: TopoDS_Shape;
                       B: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SPrintShapeRefOri", header: "TopOpeBRepDS_Dumper.hxx".}
proc SPrintShapeRefOri*(this: TopOpeBRepDS_Dumper; L: TopTools_ListOfShape;
                       B: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SPrintShapeRefOri", header: "TopOpeBRepDS_Dumper.hxx".}
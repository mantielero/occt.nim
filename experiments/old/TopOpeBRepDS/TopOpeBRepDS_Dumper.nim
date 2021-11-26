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


proc `new`*(this: var TopOpeBRepDS_Dumper; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_Dumper::operator new",
    header: "TopOpeBRepDS_Dumper.hxx".}
proc `delete`*(this: var TopOpeBRepDS_Dumper; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_Dumper::operator delete",
    header: "TopOpeBRepDS_Dumper.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_Dumper; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_Dumper::operator new[]",
    header: "TopOpeBRepDS_Dumper.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_Dumper; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_Dumper::operator delete[]",
    header: "TopOpeBRepDS_Dumper.hxx".}
proc `new`*(this: var TopOpeBRepDS_Dumper; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_Dumper::operator new",
    header: "TopOpeBRepDS_Dumper.hxx".}
proc `delete`*(this: var TopOpeBRepDS_Dumper; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_Dumper::operator delete",
    header: "TopOpeBRepDS_Dumper.hxx".}
proc constructTopOpeBRepDS_Dumper*(hds: Handle[TopOpeBRepDS_HDataStructure]): TopOpeBRepDS_Dumper {.
    constructor, importcpp: "TopOpeBRepDS_Dumper(@)",
    header: "TopOpeBRepDS_Dumper.hxx".}
proc sDumpRefOri*(this: TopOpeBRepDS_Dumper; k: TopOpeBRepDS_Kind; i: int): TCollectionAsciiString {.
    noSideEffect, importcpp: "SDumpRefOri", header: "TopOpeBRepDS_Dumper.hxx".}
proc sDumpRefOri*(this: TopOpeBRepDS_Dumper; s: TopoDS_Shape): TCollectionAsciiString {.
    noSideEffect, importcpp: "SDumpRefOri", header: "TopOpeBRepDS_Dumper.hxx".}
proc sPrintShape*(this: TopOpeBRepDS_Dumper; i: int): TCollectionAsciiString {.
    noSideEffect, importcpp: "SPrintShape", header: "TopOpeBRepDS_Dumper.hxx".}
proc sPrintShape*(this: TopOpeBRepDS_Dumper; s: TopoDS_Shape): TCollectionAsciiString {.
    noSideEffect, importcpp: "SPrintShape", header: "TopOpeBRepDS_Dumper.hxx".}
proc sPrintShapeRefOri*(this: TopOpeBRepDS_Dumper; s: TopoDS_Shape;
                       b: TCollectionAsciiString = ""): TCollectionAsciiString {.
    noSideEffect, importcpp: "SPrintShapeRefOri", header: "TopOpeBRepDS_Dumper.hxx".}
proc sPrintShapeRefOri*(this: TopOpeBRepDS_Dumper; L: TopToolsListOfShape;
                       b: TCollectionAsciiString = ""): TCollectionAsciiString {.
    noSideEffect, importcpp: "SPrintShapeRefOri", header: "TopOpeBRepDS_Dumper.hxx".}
import topopebrepds_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types



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



proc newTopOpeBRepDS_Dumper*(hds: Handle[TopOpeBRepDS_HDataStructure]): TopOpeBRepDS_Dumper {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_Dumper(@)", header: "TopOpeBRepDS_Dumper.hxx".}
proc sDumpRefOri*(this: TopOpeBRepDS_Dumper; k: TopOpeBRepDS_Kind; i: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SDumpRefOri", header: "TopOpeBRepDS_Dumper.hxx".}
proc sDumpRefOri*(this: TopOpeBRepDS_Dumper; s: TopoDS_Shape): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SDumpRefOri", header: "TopOpeBRepDS_Dumper.hxx".}
proc sPrintShape*(this: TopOpeBRepDS_Dumper; i: cint): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SPrintShape", header: "TopOpeBRepDS_Dumper.hxx".}
proc sPrintShape*(this: TopOpeBRepDS_Dumper; s: TopoDS_Shape): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SPrintShape", header: "TopOpeBRepDS_Dumper.hxx".}
proc sPrintShapeRefOri*(this: TopOpeBRepDS_Dumper; s: TopoDS_Shape;
                       b: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SPrintShapeRefOri", header: "TopOpeBRepDS_Dumper.hxx".}
proc sPrintShapeRefOri*(this: TopOpeBRepDS_Dumper; L: TopToolsListOfShape;
                       b: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SPrintShapeRefOri", header: "TopOpeBRepDS_Dumper.hxx".}


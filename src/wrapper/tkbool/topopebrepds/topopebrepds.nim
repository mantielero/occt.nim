import topopebrepds_types
import ../../tkg3d/topabs/topabs_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types



##  Created on: 1993-06-17
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
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



proc sPrint*(s: TopAbsState): TCollectionAsciiString {.cdecl,
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc print*(s: TopAbsState; os: var StandardOStream): var StandardOStream {.cdecl,
    importcpp: "TopOpeBRepDS::Print(@)", header: "TopOpeBRepDS.hxx".}
proc sPrint*(k: TopOpeBRepDS_Kind): TCollectionAsciiString {.cdecl,
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc sPrint*(k: TopOpeBRepDS_Kind; i: cint; b: TCollectionAsciiString = newTCollectionAsciiString("");
            a: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.cdecl,
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc print*(k: TopOpeBRepDS_Kind; s: var StandardOStream): var StandardOStream {.cdecl,
    importcpp: "TopOpeBRepDS::Print(@)", header: "TopOpeBRepDS.hxx".}
proc print*(k: TopOpeBRepDS_Kind; i: cint; s: var StandardOStream;
           b: TCollectionAsciiString = newTCollectionAsciiString(""); a: TCollectionAsciiString = newTCollectionAsciiString("")): var StandardOStream {.
    cdecl, importcpp: "TopOpeBRepDS::Print(@)", header: "TopOpeBRepDS.hxx".}
proc sPrint*(t: TopAbsShapeEnum): TCollectionAsciiString {.cdecl,
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc sPrint*(t: TopAbsShapeEnum; i: cint): TCollectionAsciiString {.cdecl,
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc print*(t: TopAbsShapeEnum; i: cint; s: var StandardOStream): var StandardOStream {.
    cdecl, importcpp: "TopOpeBRepDS::Print(@)", header: "TopOpeBRepDS.hxx".}
proc sPrint*(o: TopAbsOrientation): TCollectionAsciiString {.cdecl,
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc sPrint*(c: TopOpeBRepDS_Config): TCollectionAsciiString {.cdecl,
    importcpp: "TopOpeBRepDS::SPrint(@)", header: "TopOpeBRepDS.hxx".}
proc print*(c: TopOpeBRepDS_Config; s: var StandardOStream): var StandardOStream {.
    cdecl, importcpp: "TopOpeBRepDS::Print(@)", header: "TopOpeBRepDS.hxx".}
proc isGeometry*(k: TopOpeBRepDS_Kind): bool {.cdecl,
    importcpp: "TopOpeBRepDS::IsGeometry(@)", header: "TopOpeBRepDS.hxx".}
proc isTopology*(k: TopOpeBRepDS_Kind): bool {.cdecl,
    importcpp: "TopOpeBRepDS::IsTopology(@)", header: "TopOpeBRepDS.hxx".}
proc kindToShape*(k: TopOpeBRepDS_Kind): TopAbsShapeEnum {.cdecl,
    importcpp: "TopOpeBRepDS::KindToShape(@)", header: "TopOpeBRepDS.hxx".}
proc shapeToKind*(s: TopAbsShapeEnum): TopOpeBRepDS_Kind {.cdecl,
    importcpp: "TopOpeBRepDS::ShapeToKind(@)", header: "TopOpeBRepDS.hxx".}


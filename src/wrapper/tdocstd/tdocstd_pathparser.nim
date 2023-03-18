import tdocstd_types
import ../tcollection/tcollection_types



##  Created on: 1999-09-17
##  Created by: Denis PASCAL
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



proc newTDocStdPathParser*(path: TCollectionExtendedString): TDocStdPathParser {.
    cdecl, constructor, importcpp: "TDocStd_PathParser(@)",
    header: "TDocStd_PathParser.hxx".}
proc parse*(this: var TDocStdPathParser) {.cdecl, importcpp: "Parse",
                                       header: "TDocStd_PathParser.hxx".}
proc trek*(this: TDocStdPathParser): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Trek", header: "TDocStd_PathParser.hxx".}
proc name*(this: TDocStdPathParser): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Name", header: "TDocStd_PathParser.hxx".}
proc extension*(this: TDocStdPathParser): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "Extension", header: "TDocStd_PathParser.hxx".}
proc path*(this: TDocStdPathParser): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Path", header: "TDocStd_PathParser.hxx".}
proc length*(this: TDocStdPathParser): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "TDocStd_PathParser.hxx".}


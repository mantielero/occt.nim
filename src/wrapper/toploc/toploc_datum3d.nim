import toploc_types

##  Created on: 1991-01-23
##  Created by: Christophe MARION
##  Copyright (c) 1991-1999 Matra Datavision
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
import ../gp/gp_types
import ../standard/standard_types

discard "forward decl of TopLoc_Datum3D"




proc newTopLocDatum3D*(): TopLocDatum3D {.cdecl, constructor,
                                       importcpp: "TopLoc_Datum3D(@)",
                                       header: "TopLoc_Datum3D.hxx".}
proc newTopLocDatum3D*(t: TrsfObj): TopLocDatum3D {.cdecl, constructor,
    importcpp: "TopLoc_Datum3D(@)", header: "TopLoc_Datum3D.hxx".}
proc transformation*(this: TopLocDatum3D): TrsfObj {.noSideEffect, cdecl,
    importcpp: "Transformation", header: "TopLoc_Datum3D.hxx".}
proc trsf*(this: TopLocDatum3D): TrsfObj {.noSideEffect, cdecl, importcpp: "Trsf",
                                    header: "TopLoc_Datum3D.hxx".}
proc form*(this: TopLocDatum3D): TrsfFormObj {.noSideEffect, cdecl, importcpp: "Form",
                                        header: "TopLoc_Datum3D.hxx".}
proc dumpJson*(this: TopLocDatum3D; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TopLoc_Datum3D.hxx".}
proc shallowDump*(this: TopLocDatum3D; s: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "ShallowDump", header: "TopLoc_Datum3D.hxx".}
proc shallowDump*(me: Handle[TopLocDatum3D]; s: var StandardOStream) {.cdecl.} =
  discard


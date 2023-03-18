import tdf_types
import ../standard/standard_types



##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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





proc apply*(this: var TDF_AttributeDelta) {.cdecl, importcpp: "Apply",
                                        header: "TDF_AttributeDelta.hxx".}
proc label*(this: TDF_AttributeDelta): TDF_Label {.noSideEffect, cdecl,
    importcpp: "Label", header: "TDF_AttributeDelta.hxx".}
proc attribute*(this: TDF_AttributeDelta): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "Attribute", header: "TDF_AttributeDelta.hxx".}
proc id*(this: TDF_AttributeDelta): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDF_AttributeDelta.hxx".}
proc dump*(this: TDF_AttributeDelta; os: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDF_AttributeDelta.hxx".}
proc `<<`*(this: TDF_AttributeDelta; os: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "(# << #)", header: "TDF_AttributeDelta.hxx".}
proc dumpJson*(this: TDF_AttributeDelta; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDF_AttributeDelta.hxx".}


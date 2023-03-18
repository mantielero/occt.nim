import tdf_types
import ../standard/standard_types



##  Created on: 1997-08-04
##  Created by: VAUTHIER Jean-Claude
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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDF_TagSource::GetID(@)",
                           header: "TDF_TagSource.hxx".}
proc set*(label: TDF_Label): Handle[TDF_TagSource] {.cdecl,
    importcpp: "TDF_TagSource::Set(@)", header: "TDF_TagSource.hxx".}
proc newChild*(L: TDF_Label): TDF_Label {.cdecl,
                                      importcpp: "TDF_TagSource::NewChild(@)",
                                      header: "TDF_TagSource.hxx".}
proc newTDF_TagSource*(): TDF_TagSource {.cdecl, constructor,
                                       importcpp: "TDF_TagSource(@)",
                                       header: "TDF_TagSource.hxx".}
proc newTag*(this: var TDF_TagSource): cint {.cdecl, importcpp: "NewTag",
    header: "TDF_TagSource.hxx".}
proc newChild*(this: var TDF_TagSource): TDF_Label {.cdecl, importcpp: "NewChild",
    header: "TDF_TagSource.hxx".}
proc get*(this: TDF_TagSource): cint {.noSideEffect, cdecl, importcpp: "Get",
                                   header: "TDF_TagSource.hxx".}
proc set*(this: var TDF_TagSource; t: cint) {.cdecl, importcpp: "Set",
                                        header: "TDF_TagSource.hxx".}
proc id*(this: TDF_TagSource): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDF_TagSource.hxx".}
proc restore*(this: var TDF_TagSource; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDF_TagSource.hxx".}
proc newEmpty*(this: TDF_TagSource): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDF_TagSource.hxx".}
proc paste*(this: TDF_TagSource; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDF_TagSource.hxx".}
proc dumpJson*(this: TDF_TagSource; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDF_TagSource.hxx".}


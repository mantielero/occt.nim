##  Created on: 2000-09-08
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TDataStd/TDataStd_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_Volume"
discard "forward decl of XCAFDoc_Volume"
type
  Handle_XCAFDoc_Volume* = handle[XCAFDoc_Volume]

## ! attribute to store volume

type
  XCAFDoc_Volume* {.importcpp: "XCAFDoc_Volume", header: "XCAFDoc_Volume.hxx", bycopy.} = object of TDataStd_Real ##
                                                                                                        ## !
                                                                                                        ## class
                                                                                                        ## methods
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## =============


proc constructXCAFDoc_Volume*(): XCAFDoc_Volume {.constructor,
    importcpp: "XCAFDoc_Volume(@)", header: "XCAFDoc_Volume.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_Volume::GetID(@)",
                            header: "XCAFDoc_Volume.hxx".}
proc ID*(this: XCAFDoc_Volume): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_Volume.hxx".}
proc Set*(this: var XCAFDoc_Volume; vol: Standard_Real) {.importcpp: "Set",
    header: "XCAFDoc_Volume.hxx".}
proc Set*(label: TDF_Label; vol: Standard_Real): handle[XCAFDoc_Volume] {.
    importcpp: "XCAFDoc_Volume::Set(@)", header: "XCAFDoc_Volume.hxx".}
proc Get*(this: XCAFDoc_Volume): Standard_Real {.noSideEffect, importcpp: "Get",
    header: "XCAFDoc_Volume.hxx".}
proc Get*(label: TDF_Label; vol: var Standard_Real): Standard_Boolean {.
    importcpp: "XCAFDoc_Volume::Get(@)", header: "XCAFDoc_Volume.hxx".}
proc Dump*(this: XCAFDoc_Volume; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_Volume.hxx".}
proc DumpJson*(this: XCAFDoc_Volume; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_Volume.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_Volume , TDataStd_Real ) }
## Error: token expected: ) but got: ,!!!

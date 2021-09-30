##  Created on: 2000-08-11
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

discard "forward decl of TDF_Label"
discard "forward decl of AIS_InteractiveObject"
discard "forward decl of Standard_GUID"
discard "forward decl of XCAFPrs_Driver"
discard "forward decl of XCAFPrs_Driver"
type
  HandleC1C1* = Handle[XCAFPrsDriver]

## ! Implements a driver for presentation of shapes in DECAF
## ! document. Its the only purpose is to initialize and return
## ! XCAFPrs_AISObject object on request

type
  XCAFPrsDriver* {.importcpp: "XCAFPrs_Driver", header: "XCAFPrs_Driver.hxx", bycopy.} = object of TPrsStdDriver


proc update*(this: var XCAFPrsDriver; L: TDF_Label;
            ais: var Handle[AIS_InteractiveObject]): bool {.importcpp: "Update",
    header: "XCAFPrs_Driver.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFPrs_Driver::GetID(@)",
                           header: "XCAFPrs_Driver.hxx".}
type
  XCAFPrsDriverbaseType* = TPrsStdDriver

proc getTypeName*(): cstring {.importcpp: "XCAFPrs_Driver::get_type_name(@)",
                            header: "XCAFPrs_Driver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFPrs_Driver::get_type_descriptor(@)",
    header: "XCAFPrs_Driver.hxx".}
proc dynamicType*(this: XCAFPrsDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFPrs_Driver.hxx".}


























##  Created on: 2015-08-06
##  Created by: Ilya Novikov
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TDataStd/TDataStd_GenericEmpty

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDimTolObjects_DimensionObject"
when defined(GetObject):
  discard
discard "forward decl of XCAFDoc_Dimension"
discard "forward decl of XCAFDoc_Dimension"
type
  Handle_XCAFDoc_Dimension* = handle[XCAFDoc_Dimension]

## ! Attribute that identifies a dimension in the GD&T table.
## ! Its parent label is used as a container to store data provided
## ! by XCAFDimTolObjects_DimensionObject.

type
  XCAFDoc_Dimension* {.importcpp: "XCAFDoc_Dimension",
                      header: "XCAFDoc_Dimension.hxx", bycopy.} = object of TDataStd_GenericEmpty


proc constructXCAFDoc_Dimension*(): XCAFDoc_Dimension {.constructor,
    importcpp: "XCAFDoc_Dimension(@)", header: "XCAFDoc_Dimension.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_Dimension::GetID(@)",
                            header: "XCAFDoc_Dimension.hxx".}
proc Set*(theLabel: TDF_Label): handle[XCAFDoc_Dimension] {.
    importcpp: "XCAFDoc_Dimension::Set(@)", header: "XCAFDoc_Dimension.hxx".}
proc ID*(this: XCAFDoc_Dimension): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_Dimension.hxx".}
proc SetObject*(this: var XCAFDoc_Dimension;
               theDimensionObject: handle[XCAFDimTolObjects_DimensionObject]) {.
    importcpp: "SetObject", header: "XCAFDoc_Dimension.hxx".}
proc GetObject*(this: XCAFDoc_Dimension): handle[XCAFDimTolObjects_DimensionObject] {.
    noSideEffect, importcpp: "GetObject", header: "XCAFDoc_Dimension.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_Dimension , TDataStd_GenericEmpty ) }
## Error: token expected: ) but got: ,!!!

import xcafdoc_types

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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDimTolObjects_DimensionObject"
when defined(GetObject):
  discard
discard "forward decl of XCAFDoc_Dimension"


proc newXCAFDoc_Dimension*(): XCAFDoc_Dimension {.cdecl, constructor,
    importcpp: "XCAFDoc_Dimension(@)", header: "XCAFDoc_Dimension.hxx".}
proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_Dimension::GetID(@)",
                            header: "XCAFDoc_Dimension.hxx".}
proc Set*(theLabel: TDF_Label): handle[XCAFDoc_Dimension] {.cdecl,
    importcpp: "XCAFDoc_Dimension::Set(@)", header: "XCAFDoc_Dimension.hxx".}
proc ID*(this: XCAFDoc_Dimension): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_Dimension.hxx".}
proc SetObject*(this: var XCAFDoc_Dimension;
               theDimensionObject: handle[XCAFDimTolObjects_DimensionObject]) {.
    cdecl, importcpp: "SetObject", header: "XCAFDoc_Dimension.hxx".}
proc GetObject*(this: XCAFDoc_Dimension): handle[XCAFDimTolObjects_DimensionObject] {.
    noSideEffect, cdecl, importcpp: "GetObject", header: "XCAFDoc_Dimension.hxx".}
proc DumpJson*(this: XCAFDoc_Dimension; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Dimension.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_Dimension , TDataStd_GenericEmpty ) }
## Error: token expected: ) but got: ,!!!

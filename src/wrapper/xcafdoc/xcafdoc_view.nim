import xcafdoc_types

##  Created on: 2016-10-19
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
discard "forward decl of XCAFView_Object"
when defined(GetObject):
  discard
discard "forward decl of XCAFDoc_View"

proc newXCAFDoc_View*(): XCAFDoc_View {.cdecl, constructor,
                                     importcpp: "XCAFDoc_View(@)",
                                     header: "XCAFDoc_View.hxx".}
proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_View::GetID(@)",
                            header: "XCAFDoc_View.hxx".}
proc Set*(theLabel: TDF_Label): handle[XCAFDoc_View] {.cdecl,
    importcpp: "XCAFDoc_View::Set(@)", header: "XCAFDoc_View.hxx".}
proc ID*(this: XCAFDoc_View): Standard_GUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_View.hxx".}
proc SetObject*(this: var XCAFDoc_View; theViewObject: handle[XCAFView_Object]) {.
    cdecl, importcpp: "SetObject", header: "XCAFDoc_View.hxx".}
proc GetObject*(this: XCAFDoc_View): handle[XCAFView_Object] {.noSideEffect, cdecl,
    importcpp: "GetObject", header: "XCAFDoc_View.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_View , TDataStd_GenericEmpty ) }
## Error: token expected: ) but got: ,!!!

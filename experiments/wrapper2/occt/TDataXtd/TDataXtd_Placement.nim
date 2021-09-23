##  Created on: 2009-04-06
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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
  ../TDataStd/TDataStd_GenericEmpty

discard "forward decl of TDF_Label"
discard "forward decl of TDataXtd_Placement"
discard "forward decl of TDataXtd_Placement"
type
  Handle_TDataXtd_Placement* = handle[TDataXtd_Placement]
  TDataXtd_Placement* {.importcpp: "TDataXtd_Placement",
                       header: "TDataXtd_Placement.hxx", bycopy.} = object of TDataStd_GenericEmpty ##
                                                                                             ## !
                                                                                             ## class
                                                                                             ## methods
                                                                                             ##
                                                                                             ## !
                                                                                             ## =============


proc GetID*(): Standard_GUID {.importcpp: "TDataXtd_Placement::GetID(@)",
                            header: "TDataXtd_Placement.hxx".}
proc Set*(label: TDF_Label): handle[TDataXtd_Placement] {.
    importcpp: "TDataXtd_Placement::Set(@)", header: "TDataXtd_Placement.hxx".}
proc constructTDataXtd_Placement*(): TDataXtd_Placement {.constructor,
    importcpp: "TDataXtd_Placement(@)", header: "TDataXtd_Placement.hxx".}
proc ID*(this: TDataXtd_Placement): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Placement.hxx".}
proc Dump*(this: TDataXtd_Placement; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Placement.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataXtd_Placement , TDataStd_GenericEmpty ) protected : private : }
## Error: token expected: ) but got: ,!!!

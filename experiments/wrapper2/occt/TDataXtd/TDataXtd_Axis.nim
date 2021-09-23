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
discard "forward decl of gp_Lin"
discard "forward decl of TDataXtd_Axis"
discard "forward decl of TDataXtd_Axis"
type
  Handle_TDataXtd_Axis* = handle[TDataXtd_Axis]

## ! The basis to define an axis attribute.
## !
## ! Warning: Use TDataXtd_Geometry  attribute  to retrieve  the
## ! gp_Lin of the Axis attribute

type
  TDataXtd_Axis* {.importcpp: "TDataXtd_Axis", header: "TDataXtd_Axis.hxx", bycopy.} = object of TDataStd_GenericEmpty ##
                                                                                                             ## !
                                                                                                             ## class
                                                                                                             ## methods
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## =============
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Returns
                                                                                                             ## the
                                                                                                             ## GUID
                                                                                                             ## for
                                                                                                             ## an
                                                                                                             ## axis.


proc GetID*(): Standard_GUID {.importcpp: "TDataXtd_Axis::GetID(@)",
                            header: "TDataXtd_Axis.hxx".}
proc Set*(label: TDF_Label): handle[TDataXtd_Axis] {.
    importcpp: "TDataXtd_Axis::Set(@)", header: "TDataXtd_Axis.hxx".}
proc Set*(label: TDF_Label; L: gp_Lin): handle[TDataXtd_Axis] {.
    importcpp: "TDataXtd_Axis::Set(@)", header: "TDataXtd_Axis.hxx".}
proc constructTDataXtd_Axis*(): TDataXtd_Axis {.constructor,
    importcpp: "TDataXtd_Axis(@)", header: "TDataXtd_Axis.hxx".}
proc ID*(this: TDataXtd_Axis): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Axis.hxx".}
proc Dump*(this: TDataXtd_Axis; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Axis.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataXtd_Axis , TDataStd_GenericEmpty ) protected : private : }
## Error: token expected: ) but got: ,!!!

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

discard "forward decl of TDF_Label"
discard "forward decl of gp_Lin"
discard "forward decl of TDataXtd_Axis"
discard "forward decl of TDataXtd_Axis"
type
  HandleTDataXtdAxis* = Handle[TDataXtdAxis]

## ! The basis to define an axis attribute.
## !
## ! Warning: Use TDataXtd_Geometry  attribute  to retrieve  the
## ! gp_Lin of the Axis attribute

type
  TDataXtdAxis* {.importcpp: "TDataXtd_Axis", header: "TDataXtd_Axis.hxx", bycopy.} = object of TDataStdGenericEmpty ##
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


proc getID*(): StandardGUID {.importcpp: "TDataXtd_Axis::GetID(@)",
                           header: "TDataXtd_Axis.hxx".}
proc set*(label: TDF_Label): Handle[TDataXtdAxis] {.
    importcpp: "TDataXtd_Axis::Set(@)", header: "TDataXtd_Axis.hxx".}
proc set*(label: TDF_Label; L: Lin): Handle[TDataXtdAxis] {.
    importcpp: "TDataXtd_Axis::Set(@)", header: "TDataXtd_Axis.hxx".}
proc constructTDataXtdAxis*(): TDataXtdAxis {.constructor,
    importcpp: "TDataXtd_Axis(@)", header: "TDataXtd_Axis.hxx".}
proc id*(this: TDataXtdAxis): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Axis.hxx".}
proc dump*(this: TDataXtdAxis; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Axis.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataXtd_Axis , TDataStd_GenericEmpty ) protected : private : }
## Error: token expected: ) but got: ,!!!


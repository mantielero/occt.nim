##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_GUID"
discard "forward decl of StdObjMgt_MapOfInstantiators"
discard "forward decl of TDocStd_Application"
type
  StdDrivers* {.importcpp: "StdDrivers", header: "StdDrivers.hxx", bycopy.} = object ## !
                                                                             ## Depending
                                                                             ## from the ID,
                                                                             ## returns a
                                                                             ## list of
                                                                             ## storage
                                                                             ## ! or
                                                                             ## retrieval
                                                                             ## attribute
                                                                             ## drivers.
                                                                             ## Used for
                                                                             ## plugin


proc factory*(aGUID: StandardGUID): Handle[StandardTransient] {.
    importcpp: "StdDrivers::Factory(@)", header: "StdDrivers.hxx".}
proc defineFormat*(theApp: Handle[TDocStdApplication]) {.
    importcpp: "StdDrivers::DefineFormat(@)", header: "StdDrivers.hxx".}
proc bindTypes*(theMap: var StdObjMgtMapOfInstantiators) {.
    importcpp: "StdDrivers::BindTypes(@)", header: "StdDrivers.hxx".}


























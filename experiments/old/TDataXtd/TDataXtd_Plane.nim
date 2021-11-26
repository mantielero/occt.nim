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
discard "forward decl of gp_Pln"
discard "forward decl of TDataXtd_Plane"
discard "forward decl of TDataXtd_Plane"
type
  HandleTDataXtdPlane* = Handle[TDataXtdPlane]

## ! The basis to define a plane attribute.
## ! Warning:  Use TDataXtd_Geometry  attribute  to retrieve  the
## ! gp_Pln of the Plane attribute

type
  TDataXtdPlane* {.importcpp: "TDataXtd_Plane", header: "TDataXtd_Plane.hxx", bycopy.} = object of TDataStdGenericEmpty ##
                                                                                                              ## !
                                                                                                              ## class
                                                                                                              ## methods
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## =============
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Returns
                                                                                                              ## the
                                                                                                              ## GUID
                                                                                                              ## for
                                                                                                              ## plane
                                                                                                              ## attributes.


proc getID*(): StandardGUID {.importcpp: "TDataXtd_Plane::GetID(@)",
                           header: "TDataXtd_Plane.hxx".}
proc set*(label: TDF_Label): Handle[TDataXtdPlane] {.
    importcpp: "TDataXtd_Plane::Set(@)", header: "TDataXtd_Plane.hxx".}
proc set*(label: TDF_Label; p: Pln): Handle[TDataXtdPlane] {.
    importcpp: "TDataXtd_Plane::Set(@)", header: "TDataXtd_Plane.hxx".}
proc constructTDataXtdPlane*(): TDataXtdPlane {.constructor,
    importcpp: "TDataXtd_Plane(@)", header: "TDataXtd_Plane.hxx".}
proc id*(this: TDataXtdPlane): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Plane.hxx".}
proc dump*(this: TDataXtdPlane; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Plane.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataXtd_Plane , TDataStd_GenericEmpty ) protected : private : }
## Error: token expected: ) but got: ,!!!
















































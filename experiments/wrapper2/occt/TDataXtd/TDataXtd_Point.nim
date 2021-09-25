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
discard "forward decl of gp_Pnt"
discard "forward decl of TDataXtd_Point"
discard "forward decl of TDataXtd_Point"
type
  HandleTDataXtdPoint* = Handle[TDataXtdPoint]

## ! The basis to define a point attribute.
## ! The topological attribute must contain a vertex.
## ! You use this class to create reference points in a design.
## !
## ! Warning:  Use TDataXtd_Geometry  attribute  to retrieve the
## ! gp_Pnt of the Point attribute

type
  TDataXtdPoint* {.importcpp: "TDataXtd_Point", header: "TDataXtd_Point.hxx", bycopy.} = object of TDataStdGenericEmpty ##
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
                                                                                                              ## point
                                                                                                              ## attributes.


proc getID*(): StandardGUID {.importcpp: "TDataXtd_Point::GetID(@)",
                           header: "TDataXtd_Point.hxx".}
proc set*(label: TDF_Label): Handle[TDataXtdPoint] {.
    importcpp: "TDataXtd_Point::Set(@)", header: "TDataXtd_Point.hxx".}
proc set*(label: TDF_Label; p: Pnt): Handle[TDataXtdPoint] {.
    importcpp: "TDataXtd_Point::Set(@)", header: "TDataXtd_Point.hxx".}
proc constructTDataXtdPoint*(): TDataXtdPoint {.constructor,
    importcpp: "TDataXtd_Point(@)", header: "TDataXtd_Point.hxx".}
proc id*(this: TDataXtdPoint): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Point.hxx".}
proc dump*(this: TDataXtdPoint; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Point.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataXtd_Point , TDataStd_GenericEmpty ) protected : private : }
## Error: token expected: ) but got: ,!!!


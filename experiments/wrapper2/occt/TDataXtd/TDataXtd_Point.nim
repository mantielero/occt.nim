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
discard "forward decl of gp_Pnt"
discard "forward decl of TDataXtd_Point"
discard "forward decl of TDataXtd_Point"
type
  Handle_TDataXtd_Point* = handle[TDataXtd_Point]

## ! The basis to define a point attribute.
## ! The topological attribute must contain a vertex.
## ! You use this class to create reference points in a design.
## !
## ! Warning:  Use TDataXtd_Geometry  attribute  to retrieve the
## ! gp_Pnt of the Point attribute

type
  TDataXtd_Point* {.importcpp: "TDataXtd_Point", header: "TDataXtd_Point.hxx", bycopy.} = object of TDataStd_GenericEmpty ##
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


proc GetID*(): Standard_GUID {.importcpp: "TDataXtd_Point::GetID(@)",
                            header: "TDataXtd_Point.hxx".}
proc Set*(label: TDF_Label): handle[TDataXtd_Point] {.
    importcpp: "TDataXtd_Point::Set(@)", header: "TDataXtd_Point.hxx".}
proc Set*(label: TDF_Label; P: gp_Pnt): handle[TDataXtd_Point] {.
    importcpp: "TDataXtd_Point::Set(@)", header: "TDataXtd_Point.hxx".}
proc constructTDataXtd_Point*(): TDataXtd_Point {.constructor,
    importcpp: "TDataXtd_Point(@)", header: "TDataXtd_Point.hxx".}
proc ID*(this: TDataXtd_Point): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Point.hxx".}
proc Dump*(this: TDataXtd_Point; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Point.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataXtd_Point , TDataStd_GenericEmpty ) protected : private : }
## Error: token expected: ) but got: ,!!!

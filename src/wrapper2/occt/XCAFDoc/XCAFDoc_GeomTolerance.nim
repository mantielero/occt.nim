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
discard "forward decl of XCAFDimTolObjects_GeomToleranceObject"
when defined(GetObject):
  discard
discard "forward decl of XCAFDoc_GeomTolerance"
discard "forward decl of XCAFDoc_GeomTolerance"
type
  Handle_XCAFDoc_GeomTolerance* = handle[XCAFDoc_GeomTolerance]

## ! Attribute to store dimension and tolerance

type
  XCAFDoc_GeomTolerance* {.importcpp: "XCAFDoc_GeomTolerance",
                          header: "XCAFDoc_GeomTolerance.hxx", bycopy.} = object of TDataStd_GenericEmpty


proc constructXCAFDoc_GeomTolerance*(): XCAFDoc_GeomTolerance {.constructor,
    importcpp: "XCAFDoc_GeomTolerance(@)", header: "XCAFDoc_GeomTolerance.hxx".}
proc constructXCAFDoc_GeomTolerance*(theObj: handle[XCAFDoc_GeomTolerance]): XCAFDoc_GeomTolerance {.
    constructor, importcpp: "XCAFDoc_GeomTolerance(@)",
    header: "XCAFDoc_GeomTolerance.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_GeomTolerance::GetID(@)",
                            header: "XCAFDoc_GeomTolerance.hxx".}
proc Set*(theLabel: TDF_Label): handle[XCAFDoc_GeomTolerance] {.
    importcpp: "XCAFDoc_GeomTolerance::Set(@)",
    header: "XCAFDoc_GeomTolerance.hxx".}
proc SetObject*(this: var XCAFDoc_GeomTolerance; theGeomToleranceObject: handle[
    XCAFDimTolObjects_GeomToleranceObject]) {.importcpp: "SetObject",
    header: "XCAFDoc_GeomTolerance.hxx".}
proc GetObject*(this: XCAFDoc_GeomTolerance): handle[
    XCAFDimTolObjects_GeomToleranceObject] {.noSideEffect, importcpp: "GetObject",
    header: "XCAFDoc_GeomTolerance.hxx".}
proc ID*(this: XCAFDoc_GeomTolerance): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_GeomTolerance.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_GeomTolerance , TDataStd_GenericEmpty ) }
## Error: token expected: ) but got: ,!!!

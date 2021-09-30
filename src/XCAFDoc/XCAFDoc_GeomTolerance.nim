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
discard "forward decl of XCAFDimTolObjects_GeomToleranceObject"
# when defined(GetObject):
#   discard
discard "forward decl of XCAFDoc_GeomTolerance"
discard "forward decl of XCAFDoc_GeomTolerance"
type
  HandleXCAFDocGeomTolerance* = Handle[XCAFDocGeomTolerance]

## ! Attribute to store dimension and tolerance

type
  XCAFDocGeomTolerance* {.importcpp: "XCAFDoc_GeomTolerance",
                         header: "XCAFDoc_GeomTolerance.hxx", bycopy.} = object of TDataStdGenericEmpty


proc constructXCAFDocGeomTolerance*(): XCAFDocGeomTolerance {.constructor,
    importcpp: "XCAFDoc_GeomTolerance(@)", header: "XCAFDoc_GeomTolerance.hxx".}
proc constructXCAFDocGeomTolerance*(theObj: Handle[XCAFDocGeomTolerance]): XCAFDocGeomTolerance {.
    constructor, importcpp: "XCAFDoc_GeomTolerance(@)",
    header: "XCAFDoc_GeomTolerance.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_GeomTolerance::GetID(@)",
                           header: "XCAFDoc_GeomTolerance.hxx".}
proc set*(theLabel: TDF_Label): Handle[XCAFDocGeomTolerance] {.
    importcpp: "XCAFDoc_GeomTolerance::Set(@)",
    header: "XCAFDoc_GeomTolerance.hxx".}
proc setObject*(this: var XCAFDocGeomTolerance; theGeomToleranceObject: Handle[
    XCAFDimTolObjectsGeomToleranceObject]) {.importcpp: "SetObject",
    header: "XCAFDoc_GeomTolerance.hxx".}
proc getObject*(this: XCAFDocGeomTolerance): Handle[
    XCAFDimTolObjectsGeomToleranceObject] {.noSideEffect, importcpp: "GetObject",
    header: "XCAFDoc_GeomTolerance.hxx".}
proc id*(this: XCAFDocGeomTolerance): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_GeomTolerance.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_GeomTolerance , TDataStd_GenericEmpty ) }
## Error: token expected: ) but got: ,!!!
















































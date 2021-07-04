##  Created on: 2016-11-29
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

import
  ../gp/gp_Pln, ../TDF/TDF_LabelSequence, ../TDataStd/TDataStd_GenericEmpty

discard "forward decl of XCAFDoc_ClippingPlaneTool"
discard "forward decl of XCAFDoc_ClippingPlaneTool"
type
  Handle_XCAFDoc_ClippingPlaneTool* = handle[XCAFDoc_ClippingPlaneTool]

## ! Provide tool for management of ClippingPlane section of document.
## ! Provide tool to store, retrieve, remove and modify clipping planes.
## ! Each clipping plane consists of gp_Pln and its name.

type
  XCAFDoc_ClippingPlaneTool* {.importcpp: "XCAFDoc_ClippingPlaneTool",
                              header: "XCAFDoc_ClippingPlaneTool.hxx", bycopy.} = object of TDataStd_GenericEmpty


proc constructXCAFDoc_ClippingPlaneTool*(): XCAFDoc_ClippingPlaneTool {.
    constructor, importcpp: "XCAFDoc_ClippingPlaneTool(@)",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc Set*(theLabel: TDF_Label): handle[XCAFDoc_ClippingPlaneTool] {.
    importcpp: "XCAFDoc_ClippingPlaneTool::Set(@)",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_ClippingPlaneTool::GetID(@)",
                            header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc BaseLabel*(this: XCAFDoc_ClippingPlaneTool): TDF_Label {.noSideEffect,
    importcpp: "BaseLabel", header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc IsClippingPlane*(this: XCAFDoc_ClippingPlaneTool; theLabel: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "IsClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc GetClippingPlane*(this: XCAFDoc_ClippingPlaneTool; theLabel: TDF_Label;
                      thePlane: var gp_Pln;
                      theName: var TCollection_ExtendedString;
                      theCapping: var Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "GetClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc GetClippingPlane*(this: XCAFDoc_ClippingPlaneTool; theLabel: TDF_Label;
                      thePlane: var gp_Pln;
                      theName: var handle[TCollection_HAsciiString];
                      theCapping: var Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "GetClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc AddClippingPlane*(this: XCAFDoc_ClippingPlaneTool; thePlane: gp_Pln;
                      theName: TCollection_ExtendedString;
                      theCapping: Standard_Boolean): TDF_Label {.noSideEffect,
    importcpp: "AddClippingPlane", header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc AddClippingPlane*(this: XCAFDoc_ClippingPlaneTool; thePlane: gp_Pln;
                      theName: handle[TCollection_HAsciiString];
                      theCapping: Standard_Boolean): TDF_Label {.noSideEffect,
    importcpp: "AddClippingPlane", header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc AddClippingPlane*(this: XCAFDoc_ClippingPlaneTool; thePlane: gp_Pln;
                      theName: TCollection_ExtendedString): TDF_Label {.
    noSideEffect, importcpp: "AddClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc AddClippingPlane*(this: XCAFDoc_ClippingPlaneTool; thePlane: gp_Pln;
                      theName: handle[TCollection_HAsciiString]): TDF_Label {.
    noSideEffect, importcpp: "AddClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc RemoveClippingPlane*(this: XCAFDoc_ClippingPlaneTool; theLabel: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "RemoveClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc GetClippingPlanes*(this: XCAFDoc_ClippingPlaneTool;
                       Labels: var TDF_LabelSequence) {.noSideEffect,
    importcpp: "GetClippingPlanes", header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc UpdateClippingPlane*(this: XCAFDoc_ClippingPlaneTool; theLabelL: TDF_Label;
                         thePlane: gp_Pln; theName: TCollection_ExtendedString) {.
    noSideEffect, importcpp: "UpdateClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc SetCapping*(this: var XCAFDoc_ClippingPlaneTool; theClippingPlaneL: TDF_Label;
                theCapping: Standard_Boolean) {.importcpp: "SetCapping",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc GetCapping*(this: XCAFDoc_ClippingPlaneTool; theClippingPlaneL: TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "GetCapping", header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc GetCapping*(this: XCAFDoc_ClippingPlaneTool; theClippingPlaneL: TDF_Label;
                theCapping: var Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "GetCapping", header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc ID*(this: XCAFDoc_ClippingPlaneTool): Standard_GUID {.noSideEffect,
    importcpp: "ID", header: "XCAFDoc_ClippingPlaneTool.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_ClippingPlaneTool , TDataStd_GenericEmpty ) }
## Error: token expected: ) but got: ,!!!

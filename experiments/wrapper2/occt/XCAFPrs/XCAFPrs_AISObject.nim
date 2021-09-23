##  Copyright (c) 2014 OPEN CASCADE SAS
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
  ../AIS/AIS_ColoredShape, ../TDF/TDF_Label

discard "forward decl of XCAFPrs_Style"
type
  XCAFPrs_AISObject* {.importcpp: "XCAFPrs_AISObject",
                      header: "XCAFPrs_AISObject.hxx", bycopy.} = object of AIS_ColoredShape ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## object
                                                                                      ## to
                                                                                      ## visualise
                                                                                      ## the
                                                                                      ## shape
                                                                                      ## label.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Redefined
                                                                                      ## method
                                                                                      ## to
                                                                                      ## compute
                                                                                      ## presentation.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Assign
                                                                                      ## style
                                                                                      ## to
                                                                                      ## drawer.
    ## !< label pointing onto the shape
    ## !< flag indicating that shape and sub-shapes should be updates within Compute()


proc constructXCAFPrs_AISObject*(theLabel: TDF_Label): XCAFPrs_AISObject {.
    constructor, importcpp: "XCAFPrs_AISObject(@)", header: "XCAFPrs_AISObject.hxx".}
proc GetLabel*(this: XCAFPrs_AISObject): TDF_Label {.noSideEffect,
    importcpp: "GetLabel", header: "XCAFPrs_AISObject.hxx".}
proc SetLabel*(this: var XCAFPrs_AISObject; theLabel: TDF_Label) {.
    importcpp: "SetLabel", header: "XCAFPrs_AISObject.hxx".}
proc DispatchStyles*(this: var XCAFPrs_AISObject;
                    theToSyncStyles: Standard_Boolean = Standard_False) {.
    importcpp: "DispatchStyles", header: "XCAFPrs_AISObject.hxx".}
proc SetMaterial*(this: var XCAFPrs_AISObject; theMaterial: Graphic3d_MaterialAspect) {.
    importcpp: "SetMaterial", header: "XCAFPrs_AISObject.hxx".}
type
  XCAFPrs_AISObjectbase_type* = AIS_ColoredShape

proc get_type_name*(): cstring {.importcpp: "XCAFPrs_AISObject::get_type_name(@)",
                              header: "XCAFPrs_AISObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFPrs_AISObject::get_type_descriptor(@)",
    header: "XCAFPrs_AISObject.hxx".}
proc DynamicType*(this: XCAFPrs_AISObject): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFPrs_AISObject.hxx".}
discard "forward decl of XCAFPrs_AISObject"
type
  Handle_XCAFPrs_AISObject* = handle[XCAFPrs_AISObject]

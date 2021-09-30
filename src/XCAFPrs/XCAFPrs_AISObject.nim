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

discard "forward decl of XCAFPrs_Style"
type
  XCAFPrsAISObject* {.importcpp: "XCAFPrs_AISObject",
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


proc constructXCAFPrsAISObject*(theLabel: TDF_Label): XCAFPrsAISObject {.
    constructor, importcpp: "XCAFPrs_AISObject(@)", header: "XCAFPrs_AISObject.hxx".}
proc getLabel*(this: XCAFPrsAISObject): TDF_Label {.noSideEffect,
    importcpp: "GetLabel", header: "XCAFPrs_AISObject.hxx".}
proc setLabel*(this: var XCAFPrsAISObject; theLabel: TDF_Label) {.
    importcpp: "SetLabel", header: "XCAFPrs_AISObject.hxx".}
proc dispatchStyles*(this: var XCAFPrsAISObject; theToSyncStyles: bool = false) {.
    importcpp: "DispatchStyles", header: "XCAFPrs_AISObject.hxx".}
proc setMaterial*(this: var XCAFPrsAISObject; theMaterial: Graphic3dMaterialAspect) {.
    importcpp: "SetMaterial", header: "XCAFPrs_AISObject.hxx".}
type
  XCAFPrsAISObjectbaseType* = AIS_ColoredShape

proc getTypeName*(): cstring {.importcpp: "XCAFPrs_AISObject::get_type_name(@)",
                            header: "XCAFPrs_AISObject.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFPrs_AISObject::get_type_descriptor(@)",
    header: "XCAFPrs_AISObject.hxx".}
proc dynamicType*(this: XCAFPrsAISObject): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFPrs_AISObject.hxx".}
discard "forward decl of XCAFPrs_AISObject"
type
  HandleC1C1* = Handle[XCAFPrsAISObject]



























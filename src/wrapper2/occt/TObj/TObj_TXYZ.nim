##  Created on: 2004-11-23
##  Created by: Pavel TELKOV
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
##  The original implementation Copyright: (C) RINA S.p.A

import
  TObj_Common, ../gp/gp_XYZ, ../TDF/TDF_Attribute

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
type
  TObj_TXYZ* {.importcpp: "TObj_TXYZ", header: "TObj_TXYZ.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                         ## !
                                                                                         ## Standard
                                                                                         ## methods
                                                                                         ## of
                                                                                         ## OCAF
                                                                                         ## attribute
                                                                                         ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor
                                                                                         ##
                                                                                         ## !
                                                                                         ## Method
                                                                                         ## for
                                                                                         ## create
                                                                                         ## TObj_TXYZ
                                                                                         ## object
                                                                                         ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## attribute
                                                                                         ## and
                                                                                         ## sets
                                                                                         ## the
                                                                                         ## XYZ
                                                                                         ##
                                                                                         ## !
                                                                                         ## Methods
                                                                                         ## for
                                                                                         ## setting
                                                                                         ## and
                                                                                         ## obtaining
                                                                                         ## XYZ
                                                                                         ##
                                                                                         ## !
                                                                                         ## Sets
                                                                                         ## the
                                                                                         ## XYZ
                                                                                         ##
                                                                                         ## !
                                                                                         ## Redefined
                                                                                         ## OCAF
                                                                                         ## abstract
                                                                                         ## methods
                                                                                         ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## an
                                                                                         ## new
                                                                                         ## empty
                                                                                         ## TObj_TXYZ
                                                                                         ## attribute.
                                                                                         ## It
                                                                                         ## is
                                                                                         ## used
                                                                                         ## by
                                                                                         ## the
                                                                                         ##
                                                                                         ## !
                                                                                         ## copy
                                                                                         ## algorithm.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Fields
                                                                                         ##
                                                                                         ## !
                                                                                         ## CASCADE
                                                                                         ## RTTI
    ## !< The object interface stored by the attribute


proc constructTObj_TXYZ*(): TObj_TXYZ {.constructor, importcpp: "TObj_TXYZ(@)",
                                     header: "TObj_TXYZ.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TObj_TXYZ::GetID(@)",
                            header: "TObj_TXYZ.hxx".}
proc ID*(this: TObj_TXYZ): Standard_GUID {.noSideEffect, importcpp: "ID",
                                       header: "TObj_TXYZ.hxx".}
proc Set*(theLabel: TDF_Label; theXYZ: gp_XYZ): handle[TObj_TXYZ] {.
    importcpp: "TObj_TXYZ::Set(@)", header: "TObj_TXYZ.hxx".}
proc Set*(this: var TObj_TXYZ; theXYZ: gp_XYZ) {.importcpp: "Set",
    header: "TObj_TXYZ.hxx".}
proc Get*(this: TObj_TXYZ): gp_XYZ {.noSideEffect, importcpp: "Get",
                                 header: "TObj_TXYZ.hxx".}
proc NewEmpty*(this: TObj_TXYZ): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TObj_TXYZ.hxx".}
proc Restore*(this: var TObj_TXYZ; theWith: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TObj_TXYZ.hxx".}
proc Paste*(this: TObj_TXYZ; theInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TObj_TXYZ.hxx".}
proc Dump*(this: TObj_TXYZ; theOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TObj_TXYZ.hxx".}
type
  TObj_TXYZbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TObj_TXYZ::get_type_name(@)",
                              header: "TObj_TXYZ.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_TXYZ::get_type_descriptor(@)", header: "TObj_TXYZ.hxx".}
proc DynamicType*(this: TObj_TXYZ): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_TXYZ.hxx".}
## ! Define handle class for TObj_TXYZ

discard "forward decl of TObj_TXYZ"
type
  Handle_TObj_TXYZ* = handle[TObj_TXYZ]

when defined(_MSC_VER):
  discard
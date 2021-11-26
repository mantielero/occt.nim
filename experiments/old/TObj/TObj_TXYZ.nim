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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
type
  TObjTXYZ* {.importcpp: "TObj_TXYZ", header: "TObj_TXYZ.hxx", bycopy.} = object of TDF_Attribute ##
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


proc constructTObjTXYZ*(): TObjTXYZ {.constructor, importcpp: "TObj_TXYZ(@)",
                                   header: "TObj_TXYZ.hxx".}
proc getID*(): StandardGUID {.importcpp: "TObj_TXYZ::GetID(@)",
                           header: "TObj_TXYZ.hxx".}
proc id*(this: TObjTXYZ): StandardGUID {.noSideEffect, importcpp: "ID",
                                     header: "TObj_TXYZ.hxx".}
proc set*(theLabel: TDF_Label; theXYZ: Xyz): Handle[TObjTXYZ] {.
    importcpp: "TObj_TXYZ::Set(@)", header: "TObj_TXYZ.hxx".}
proc set*(this: var TObjTXYZ; theXYZ: Xyz) {.importcpp: "Set", header: "TObj_TXYZ.hxx".}
proc get*(this: TObjTXYZ): Xyz {.noSideEffect, importcpp: "Get",
                             header: "TObj_TXYZ.hxx".}
proc newEmpty*(this: TObjTXYZ): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TObj_TXYZ.hxx".}
proc restore*(this: var TObjTXYZ; theWith: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TObj_TXYZ.hxx".}
proc paste*(this: TObjTXYZ; theInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TObj_TXYZ.hxx".}
proc dump*(this: TObjTXYZ; theOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TObj_TXYZ.hxx".}
type
  TObjTXYZbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TObj_TXYZ::get_type_name(@)",
                            header: "TObj_TXYZ.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_TXYZ::get_type_descriptor(@)", header: "TObj_TXYZ.hxx".}
proc dynamicType*(this: TObjTXYZ): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_TXYZ.hxx".}
## ! Define handle class for TObj_TXYZ

discard "forward decl of TObj_TXYZ"
type
  HandleC1C1* = Handle[TObjTXYZ]

# when defined(_MSC_VER):
#   discard


























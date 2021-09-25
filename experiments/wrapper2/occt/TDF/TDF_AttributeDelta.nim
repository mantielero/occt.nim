##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of TDF_AttributeDelta"
type
  HandleTDF_AttributeDelta* = Handle[TDF_AttributeDelta]

## ! This class discribes the services we need to
## ! implement Delta and Undo/Redo services.
## !
## ! AttributeDeltas are applied in an unpredictable
## ! order. But by the redefinition of the method
## ! IsNowApplicable, a condition can be verified
## ! before application. If the AttributeDelta is not
## ! yet applicable, it is put at the end of the
## ! AttributeDelta list, to be treated later. If a
## ! dead lock if found on the list, the
## ! AttributeDeltas are forced to be applied in an
## ! unpredictable order.

type
  TDF_AttributeDelta* {.importcpp: "TDF_AttributeDelta",
                       header: "TDF_AttributeDelta.hxx", bycopy.} = object of StandardTransient ##
                                                                                         ## !
                                                                                         ## Applies
                                                                                         ## the
                                                                                         ## delta
                                                                                         ## to
                                                                                         ## the
                                                                                         ## attribute.


proc apply*(this: var TDF_AttributeDelta) {.importcpp: "Apply",
                                        header: "TDF_AttributeDelta.hxx".}
proc label*(this: TDF_AttributeDelta): TDF_Label {.noSideEffect, importcpp: "Label",
    header: "TDF_AttributeDelta.hxx".}
proc attribute*(this: TDF_AttributeDelta): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "Attribute", header: "TDF_AttributeDelta.hxx".}
proc id*(this: TDF_AttributeDelta): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDF_AttributeDelta.hxx".}
proc dump*(this: TDF_AttributeDelta; os: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDF_AttributeDelta.hxx".}
proc `<<`*(this: TDF_AttributeDelta; os: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "(# << #)", header: "TDF_AttributeDelta.hxx".}
proc dumpJson*(this: TDF_AttributeDelta; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDF_AttributeDelta.hxx".}
type
  TDF_AttributeDeltabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TDF_AttributeDelta::get_type_name(@)",
                            header: "TDF_AttributeDelta.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDF_AttributeDelta::get_type_descriptor(@)",
    header: "TDF_AttributeDelta.hxx".}
proc dynamicType*(this: TDF_AttributeDelta): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_AttributeDelta.hxx".}

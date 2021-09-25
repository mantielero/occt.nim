##  Created on: 1998-07-29
##  Created by: Administrateur Atelier XSTEP
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of STEPEdit_EditSDR"
discard "forward decl of STEPEdit_EditSDR"
type
  HandleSTEPEditEditSDR* = Handle[STEPEditEditSDR]

## ! EditSDR is an Editor fit for a Shape Definition Representation
## ! which designates a Product Definition

type
  STEPEditEditSDR* {.importcpp: "STEPEdit_EditSDR", header: "STEPEdit_EditSDR.hxx",
                    bycopy.} = object of IFSelectEditor


proc constructSTEPEditEditSDR*(): STEPEditEditSDR {.constructor,
    importcpp: "STEPEdit_EditSDR(@)", header: "STEPEdit_EditSDR.hxx".}
proc label*(this: STEPEditEditSDR): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "STEPEdit_EditSDR.hxx".}
proc recognize*(this: STEPEditEditSDR; form: Handle[IFSelectEditForm]): bool {.
    noSideEffect, importcpp: "Recognize", header: "STEPEdit_EditSDR.hxx".}
proc stringValue*(this: STEPEditEditSDR; form: Handle[IFSelectEditForm]; num: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "StringValue",
                              header: "STEPEdit_EditSDR.hxx".}
proc apply*(this: STEPEditEditSDR; form: Handle[IFSelectEditForm];
           ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, importcpp: "Apply", header: "STEPEdit_EditSDR.hxx".}
proc load*(this: STEPEditEditSDR; form: Handle[IFSelectEditForm];
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, importcpp: "Load", header: "STEPEdit_EditSDR.hxx".}
type
  STEPEditEditSDRbaseType* = IFSelectEditor

proc getTypeName*(): cstring {.importcpp: "STEPEdit_EditSDR::get_type_name(@)",
                            header: "STEPEdit_EditSDR.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPEdit_EditSDR::get_type_descriptor(@)",
    header: "STEPEdit_EditSDR.hxx".}
proc dynamicType*(this: STEPEditEditSDR): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "STEPEdit_EditSDR.hxx".}

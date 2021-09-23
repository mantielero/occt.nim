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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../IFSelect/IFSelect_Editor,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of STEPEdit_EditSDR"
discard "forward decl of STEPEdit_EditSDR"
type
  Handle_STEPEdit_EditSDR* = handle[STEPEdit_EditSDR]

## ! EditSDR is an Editor fit for a Shape Definition Representation
## ! which designates a Product Definition

type
  STEPEdit_EditSDR* {.importcpp: "STEPEdit_EditSDR",
                     header: "STEPEdit_EditSDR.hxx", bycopy.} = object of IFSelect_Editor


proc constructSTEPEdit_EditSDR*(): STEPEdit_EditSDR {.constructor,
    importcpp: "STEPEdit_EditSDR(@)", header: "STEPEdit_EditSDR.hxx".}
proc Label*(this: STEPEdit_EditSDR): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "STEPEdit_EditSDR.hxx".}
proc Recognize*(this: STEPEdit_EditSDR; form: handle[IFSelect_EditForm]): Standard_Boolean {.
    noSideEffect, importcpp: "Recognize", header: "STEPEdit_EditSDR.hxx".}
proc StringValue*(this: STEPEdit_EditSDR; form: handle[IFSelect_EditForm];
                 num: Standard_Integer): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "StringValue", header: "STEPEdit_EditSDR.hxx".}
proc Apply*(this: STEPEdit_EditSDR; form: handle[IFSelect_EditForm];
           ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Apply", header: "STEPEdit_EditSDR.hxx".}
proc Load*(this: STEPEdit_EditSDR; form: handle[IFSelect_EditForm];
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Load", header: "STEPEdit_EditSDR.hxx".}
type
  STEPEdit_EditSDRbase_type* = IFSelect_Editor

proc get_type_name*(): cstring {.importcpp: "STEPEdit_EditSDR::get_type_name(@)",
                              header: "STEPEdit_EditSDR.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "STEPEdit_EditSDR::get_type_descriptor(@)",
    header: "STEPEdit_EditSDR.hxx".}
proc DynamicType*(this: STEPEdit_EditSDR): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "STEPEdit_EditSDR.hxx".}
##  Created on: 1994-05-31
##  Created by: Modelistation
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
# when defined(SetForm):
#   discard
discard "forward decl of IGESSelect_IGESTypeForm"
discard "forward decl of IGESSelect_IGESTypeForm"
type
  HandleIGESSelectIGESTypeForm* = Handle[IGESSelectIGESTypeForm]

## ! IGESTypeForm is a Signature specific to the IGES Norm :
## ! it gives the signature under two possible forms :
## ! - as "mmm nnn", with "mmm" as IGES Type Number, and "nnn"
## ! as IGES From Number (even if = 0)  [Default]
## ! - as "mmm" alone, which gives only the IGES Type Number

type
  IGESSelectIGESTypeForm* {.importcpp: "IGESSelect_IGESTypeForm",
                           header: "IGESSelect_IGESTypeForm.hxx", bycopy.} = object of IFSelectSignature ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## Signature
                                                                                                  ## for
                                                                                                  ## IGES
                                                                                                  ## Type
                                                                                                  ## &
                                                                                                  ## Form
                                                                                                  ## Numbers
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## <withform>
                                                                                                  ## is
                                                                                                  ## False,
                                                                                                  ## for
                                                                                                  ## IGES
                                                                                                  ## Type
                                                                                                  ## Number
                                                                                                  ## only


proc constructIGESSelectIGESTypeForm*(withform: bool = true): IGESSelectIGESTypeForm {.
    constructor, importcpp: "IGESSelect_IGESTypeForm(@)",
    header: "IGESSelect_IGESTypeForm.hxx".}
proc setForm*(this: var IGESSelectIGESTypeForm; withform: bool) {.
    importcpp: "SetForm", header: "IGESSelect_IGESTypeForm.hxx".}
proc value*(this: IGESSelectIGESTypeForm; ent: Handle[StandardTransient];
           model: Handle[InterfaceInterfaceModel]): StandardCString {.noSideEffect,
    importcpp: "Value", header: "IGESSelect_IGESTypeForm.hxx".}
type
  IGESSelectIGESTypeFormbaseType* = IFSelectSignature

proc getTypeName*(): cstring {.importcpp: "IGESSelect_IGESTypeForm::get_type_name(@)",
                            header: "IGESSelect_IGESTypeForm.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_IGESTypeForm::get_type_descriptor(@)",
    header: "IGESSelect_IGESTypeForm.hxx".}
proc dynamicType*(this: IGESSelectIGESTypeForm): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_IGESTypeForm.hxx".}

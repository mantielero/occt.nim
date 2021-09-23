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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../IFSelect/IFSelect_Signature, ../Standard/Standard_CString

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
when defined(SetForm):
  discard
discard "forward decl of IGESSelect_IGESTypeForm"
discard "forward decl of IGESSelect_IGESTypeForm"
type
  Handle_IGESSelect_IGESTypeForm* = handle[IGESSelect_IGESTypeForm]

## ! IGESTypeForm is a Signature specific to the IGES Norm :
## ! it gives the signature under two possible forms :
## ! - as "mmm nnn", with "mmm" as IGES Type Number, and "nnn"
## ! as IGES From Number (even if = 0)  [Default]
## ! - as "mmm" alone, which gives only the IGES Type Number

type
  IGESSelect_IGESTypeForm* {.importcpp: "IGESSelect_IGESTypeForm",
                            header: "IGESSelect_IGESTypeForm.hxx", bycopy.} = object of IFSelect_Signature ##
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


proc constructIGESSelect_IGESTypeForm*(withform: Standard_Boolean = Standard_True): IGESSelect_IGESTypeForm {.
    constructor, importcpp: "IGESSelect_IGESTypeForm(@)",
    header: "IGESSelect_IGESTypeForm.hxx".}
proc SetForm*(this: var IGESSelect_IGESTypeForm; withform: Standard_Boolean) {.
    importcpp: "SetForm", header: "IGESSelect_IGESTypeForm.hxx".}
proc Value*(this: IGESSelect_IGESTypeForm; ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_CString {.
    noSideEffect, importcpp: "Value", header: "IGESSelect_IGESTypeForm.hxx".}
type
  IGESSelect_IGESTypeFormbase_type* = IFSelect_Signature

proc get_type_name*(): cstring {.importcpp: "IGESSelect_IGESTypeForm::get_type_name(@)",
                              header: "IGESSelect_IGESTypeForm.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_IGESTypeForm::get_type_descriptor(@)",
    header: "IGESSelect_IGESTypeForm.hxx".}
proc DynamicType*(this: IGESSelect_IGESTypeForm): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_IGESTypeForm.hxx".}
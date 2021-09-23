##  Created on: 1996-01-29
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
  IFSelect_Signature, ../Standard/Standard_CString

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_SignType"
discard "forward decl of IFSelect_SignType"
type
  Handle_IFSelect_SignType* = handle[IFSelect_SignType]

## ! This Signature returns the cdl Type of an entity, under two
## ! forms :
## ! - complete dynamic type (package and class)
## ! - class type, without package name

type
  IFSelect_SignType* {.importcpp: "IFSelect_SignType",
                      header: "IFSelect_SignType.hxx", bycopy.} = object of IFSelect_Signature ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## SignType
                                                                                        ##
                                                                                        ## !
                                                                                        ## <nopk>
                                                                                        ## false
                                                                                        ## (D)
                                                                                        ## :
                                                                                        ## complete
                                                                                        ## dynamic
                                                                                        ## type
                                                                                        ## (name
                                                                                        ## =
                                                                                        ## Dynamic
                                                                                        ## Type)
                                                                                        ##
                                                                                        ## !
                                                                                        ## <nopk>
                                                                                        ## true
                                                                                        ## :
                                                                                        ## class
                                                                                        ## type
                                                                                        ## without
                                                                                        ## pk
                                                                                        ## (name
                                                                                        ## =
                                                                                        ## Class
                                                                                        ## Type)


proc constructIFSelect_SignType*(nopk: Standard_Boolean = Standard_False): IFSelect_SignType {.
    constructor, importcpp: "IFSelect_SignType(@)", header: "IFSelect_SignType.hxx".}
proc Value*(this: IFSelect_SignType; ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_CString {.
    noSideEffect, importcpp: "Value", header: "IFSelect_SignType.hxx".}
type
  IFSelect_SignTypebase_type* = IFSelect_Signature

proc get_type_name*(): cstring {.importcpp: "IFSelect_SignType::get_type_name(@)",
                              header: "IFSelect_SignType.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SignType::get_type_descriptor(@)",
    header: "IFSelect_SignType.hxx".}
proc DynamicType*(this: IFSelect_SignType): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SignType.hxx".}
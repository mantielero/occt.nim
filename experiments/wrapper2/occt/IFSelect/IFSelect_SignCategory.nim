##  Created on: 1996-01-26
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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_SignCategory"
discard "forward decl of IFSelect_SignCategory"
type
  HandleC1C1* = Handle[IFSelectSignCategory]

## ! This Signature returns the Category of an entity, as recorded
## ! in the model

type
  IFSelectSignCategory* {.importcpp: "IFSelect_SignCategory",
                         header: "IFSelect_SignCategory.hxx", bycopy.} = object of IFSelectSignature ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## SignCategory


proc constructIFSelectSignCategory*(): IFSelectSignCategory {.constructor,
    importcpp: "IFSelect_SignCategory(@)", header: "IFSelect_SignCategory.hxx".}
proc value*(this: IFSelectSignCategory; ent: Handle[StandardTransient];
           model: Handle[InterfaceInterfaceModel]): StandardCString {.noSideEffect,
    importcpp: "Value", header: "IFSelect_SignCategory.hxx".}
type
  IFSelectSignCategorybaseType* = IFSelectSignature

proc getTypeName*(): cstring {.importcpp: "IFSelect_SignCategory::get_type_name(@)",
                            header: "IFSelect_SignCategory.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SignCategory::get_type_descriptor(@)",
    header: "IFSelect_SignCategory.hxx".}
proc dynamicType*(this: IFSelectSignCategory): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SignCategory.hxx".}


























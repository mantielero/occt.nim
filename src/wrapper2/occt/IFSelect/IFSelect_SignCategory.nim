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

import
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_Signature,
  ../Standard/Standard_CString

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_SignCategory"
discard "forward decl of IFSelect_SignCategory"
type
  Handle_IFSelect_SignCategory* = handle[IFSelect_SignCategory]

## ! This Signature returns the Category of an entity, as recorded
## ! in the model

type
  IFSelect_SignCategory* {.importcpp: "IFSelect_SignCategory",
                          header: "IFSelect_SignCategory.hxx", bycopy.} = object of IFSelect_Signature ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## SignCategory


proc constructIFSelect_SignCategory*(): IFSelect_SignCategory {.constructor,
    importcpp: "IFSelect_SignCategory(@)", header: "IFSelect_SignCategory.hxx".}
proc Value*(this: IFSelect_SignCategory; ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_CString {.
    noSideEffect, importcpp: "Value", header: "IFSelect_SignCategory.hxx".}
type
  IFSelect_SignCategorybase_type* = IFSelect_Signature

proc get_type_name*(): cstring {.importcpp: "IFSelect_SignCategory::get_type_name(@)",
                              header: "IFSelect_SignCategory.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SignCategory::get_type_descriptor(@)",
    header: "IFSelect_SignCategory.hxx".}
proc DynamicType*(this: IFSelect_SignCategory): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SignCategory.hxx".}
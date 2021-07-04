##  Created on: 1994-12-21
##  Created by: Christian CAILLET
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
  ../Standard/Standard, ../Standard/Standard_Type, ../IFSelect/IFSelect_Signature,
  ../Standard/Standard_CString

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IGESSelect_IGESName"
discard "forward decl of IGESSelect_IGESName"
type
  Handle_IGESSelect_IGESName* = handle[IGESSelect_IGESName]

## ! IGESName is a Signature specific to IGESNorm :
## ! it considers the Name of an IGESEntity as being its ShortLabel
## ! (some sending systems use name, not to identify entities, but
## ! ratjer to classify them)

type
  IGESSelect_IGESName* {.importcpp: "IGESSelect_IGESName",
                        header: "IGESSelect_IGESName.hxx", bycopy.} = object of IFSelect_Signature ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## Signature
                                                                                            ## for
                                                                                            ## IGES
                                                                                            ## Name
                                                                                            ## (reduced
                                                                                            ## to
                                                                                            ## ShortLabel,
                                                                                            ##
                                                                                            ## !
                                                                                            ## without
                                                                                            ## SubscriptLabel
                                                                                            ## or
                                                                                            ## Long
                                                                                            ## Name)


proc constructIGESSelect_IGESName*(): IGESSelect_IGESName {.constructor,
    importcpp: "IGESSelect_IGESName(@)", header: "IGESSelect_IGESName.hxx".}
proc Value*(this: IGESSelect_IGESName; ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_CString {.
    noSideEffect, importcpp: "Value", header: "IGESSelect_IGESName.hxx".}
type
  IGESSelect_IGESNamebase_type* = IFSelect_Signature

proc get_type_name*(): cstring {.importcpp: "IGESSelect_IGESName::get_type_name(@)",
                              header: "IGESSelect_IGESName.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_IGESName::get_type_descriptor(@)",
    header: "IGESSelect_IGESName.hxx".}
proc DynamicType*(this: IGESSelect_IGESName): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_IGESName.hxx".}
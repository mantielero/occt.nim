import ifselect_types

##  Created on: 1998-01-28
##  Created by: Christian CAILLET
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

discard "forward decl of IFSelect_Signature"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SignMultiple"




proc newIFSelectSignMultiple*(name: cstring): IFSelectSignMultiple {.cdecl,
    constructor, importcpp: "IFSelect_SignMultiple(@)", header: "IFSelect_SignMultiple.hxx".}
proc add*(this: var IFSelectSignMultiple; subsign: Handle[IFSelectSignature];
         width: cint = 0; maxi: bool = false) {.cdecl, importcpp: "Add", header: "IFSelect_SignMultiple.hxx".}
proc value*(this: IFSelectSignMultiple; ent: Handle[StandardTransient];
           model: Handle[InterfaceInterfaceModel]): cstring {.noSideEffect, cdecl,
    importcpp: "Value", header: "IFSelect_SignMultiple.hxx".}
proc matches*(this: IFSelectSignMultiple; ent: Handle[StandardTransient];
             model: Handle[InterfaceInterfaceModel]; text: TCollectionAsciiString;
             exact: bool): bool {.noSideEffect, cdecl, importcpp: "Matches",
                               header: "IFSelect_SignMultiple.hxx".}

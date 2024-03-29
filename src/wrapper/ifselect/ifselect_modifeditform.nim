import ../tcollection/tcollection_types
import ../standard/standard_types
import ifselect_types
import "../interface/interface_types"




##  Created on: 1998-02-27
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





proc newIFSelectModifEditForm*(editform: Handle[IFSelectEditForm]): IFSelectModifEditForm {.
    cdecl, constructor, importcpp: "IFSelect_ModifEditForm(@)", header: "IFSelect_ModifEditForm.hxx".}
proc editForm*(this: IFSelectModifEditForm): Handle[IFSelectEditForm] {.
    noSideEffect, cdecl, importcpp: "EditForm", header: "IFSelect_ModifEditForm.hxx".}
proc perform*(this: IFSelectModifEditForm; ctx: var IFSelectContextModif;
             target: Handle[InterfaceInterfaceModel];
             protocol: Handle[InterfaceProtocol]; tc: var InterfaceCopyTool) {.
    noSideEffect, cdecl, importcpp: "Perform", header: "IFSelect_ModifEditForm.hxx".}
proc label*(this: IFSelectModifEditForm): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Label", header: "IFSelect_ModifEditForm.hxx".}



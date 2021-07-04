##  Created on: 2000-08-11
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, XCAFPrs_IndexedDataMapOfShapeStyle,
  ../Standard/Standard_Boolean

discard "forward decl of TDF_Label"
discard "forward decl of TopLoc_Location"
discard "forward decl of XCAFPrs_Driver"
discard "forward decl of XCAFPrs_Style"
type
  XCAFPrs* {.importcpp: "XCAFPrs", header: "XCAFPrs.hxx", bycopy.} = object ## ! Collect styles defined for shape on label L
                                                                    ## ! and its components and subshapes and fills a map of
                                                                    ## ! shape - style
                                                                    ## correspondence
                                                                    ## ! The location <loc> is for internal use, it
                                                                    ## ! should be Null location for external call


proc CollectStyleSettings*(L: TDF_Label; loc: TopLoc_Location;
                          settings: var XCAFPrs_IndexedDataMapOfShapeStyle;
    theLayerColor: Quantity_ColorRGBA = Quantity_ColorRGBA(Quantity_NOC_WHITE)) {.
    importcpp: "XCAFPrs::CollectStyleSettings(@)", header: "XCAFPrs.hxx".}
proc SetViewNameMode*(viewNameMode: Standard_Boolean) {.
    importcpp: "XCAFPrs::SetViewNameMode(@)", header: "XCAFPrs.hxx".}
proc GetViewNameMode*(): Standard_Boolean {.
    importcpp: "XCAFPrs::GetViewNameMode(@)", header: "XCAFPrs.hxx".}
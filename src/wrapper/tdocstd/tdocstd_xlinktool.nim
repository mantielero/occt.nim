import ../tdf/tdf_types
import tdocstd_types
import ../standard/standard_types



##  Created on: 1998-05-12
##  Created by: Isabelle GRIGNON
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



proc newTDocStdXLinkTool*(): TDocStdXLinkTool {.cdecl, constructor,
    importcpp: "TDocStd_XLinkTool(@)", header: "TDocStd_XLinkTool.hxx".}
proc copyWithLink*(this: var TDocStdXLinkTool; intarget: TDF_Label;
                  fromsource: TDF_Label) {.cdecl, importcpp: "CopyWithLink",
    header: "TDocStd_XLinkTool.hxx".}
proc updateLink*(this: var TDocStdXLinkTool; L: TDF_Label) {.cdecl,
    importcpp: "UpdateLink", header: "TDocStd_XLinkTool.hxx".}
proc copy*(this: var TDocStdXLinkTool; intarget: TDF_Label; fromsource: TDF_Label) {.
    cdecl, importcpp: "Copy", header: "TDocStd_XLinkTool.hxx".}
proc isDone*(this: TDocStdXLinkTool): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    header: "TDocStd_XLinkTool.hxx".}
proc dataSet*(this: TDocStdXLinkTool): Handle[TDF_DataSet] {.noSideEffect, cdecl,
    importcpp: "DataSet", header: "TDocStd_XLinkTool.hxx".}
proc relocationTable*(this: TDocStdXLinkTool): Handle[TDF_RelocationTable] {.
    noSideEffect, cdecl, importcpp: "RelocationTable",
    header: "TDocStd_XLinkTool.hxx".}


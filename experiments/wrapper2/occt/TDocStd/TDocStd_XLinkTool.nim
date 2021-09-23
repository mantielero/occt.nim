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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean

discard "forward decl of TDF_DataSet"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_Label"
type
  TDocStd_XLinkTool* {.importcpp: "TDocStd_XLinkTool",
                      header: "TDocStd_XLinkTool.hxx", bycopy.} = object


proc constructTDocStd_XLinkTool*(): TDocStd_XLinkTool {.constructor,
    importcpp: "TDocStd_XLinkTool(@)", header: "TDocStd_XLinkTool.hxx".}
proc CopyWithLink*(this: var TDocStd_XLinkTool; intarget: TDF_Label;
                  fromsource: TDF_Label) {.importcpp: "CopyWithLink",
    header: "TDocStd_XLinkTool.hxx".}
proc UpdateLink*(this: var TDocStd_XLinkTool; L: TDF_Label) {.importcpp: "UpdateLink",
    header: "TDocStd_XLinkTool.hxx".}
proc Copy*(this: var TDocStd_XLinkTool; intarget: TDF_Label; fromsource: TDF_Label) {.
    importcpp: "Copy", header: "TDocStd_XLinkTool.hxx".}
proc IsDone*(this: TDocStd_XLinkTool): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "TDocStd_XLinkTool.hxx".}
proc DataSet*(this: TDocStd_XLinkTool): handle[TDF_DataSet] {.noSideEffect,
    importcpp: "DataSet", header: "TDocStd_XLinkTool.hxx".}
proc RelocationTable*(this: TDocStd_XLinkTool): handle[TDF_RelocationTable] {.
    noSideEffect, importcpp: "RelocationTable", header: "TDocStd_XLinkTool.hxx".}
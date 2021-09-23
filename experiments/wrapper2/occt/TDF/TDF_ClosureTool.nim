##  Created by: DAUTRY Philippe
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
  ../Standard/Standard_Handle, TDF_LabelMap, TDF_AttributeMap

discard "forward decl of TDF_DataSet"
discard "forward decl of TDF_IDFilter"
discard "forward decl of TDF_ClosureMode"
discard "forward decl of TDF_Label"
type
  TDF_ClosureTool* {.importcpp: "TDF_ClosureTool", header: "TDF_ClosureTool.hxx",
                    bycopy.} = object ## ! Builds the transitive closure of label and
                                   ## ! attribute sets into <aDataSet>.
                                   ## ! Adds label attributes and dependences.


proc Closure*(aDataSet: handle[TDF_DataSet]) {.
    importcpp: "TDF_ClosureTool::Closure(@)", header: "TDF_ClosureTool.hxx".}
proc Closure*(aDataSet: handle[TDF_DataSet]; aFilter: TDF_IDFilter;
             aMode: TDF_ClosureMode) {.importcpp: "TDF_ClosureTool::Closure(@)",
                                     header: "TDF_ClosureTool.hxx".}
proc Closure*(aLabel: TDF_Label; aLabMap: var TDF_LabelMap;
             anAttMap: var TDF_AttributeMap; aFilter: TDF_IDFilter;
             aMode: TDF_ClosureMode) {.importcpp: "TDF_ClosureTool::Closure(@)",
                                     header: "TDF_ClosureTool.hxx".}
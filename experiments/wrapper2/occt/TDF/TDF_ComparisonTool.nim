##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of TDF_DataSet"
discard "forward decl of TDF_IDFilter"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_Label"
type
  TDF_ComparisonTool* {.importcpp: "TDF_ComparisonTool",
                       header: "TDF_ComparisonTool.hxx", bycopy.} = object ## ! Compares
                                                                      ## <aSourceDataSet> with
                                                                      ## <aTargetDataSet>,
                                                                      ## ! updating
                                                                      ## <aRelocationTable> with labels and
                                                                      ## ! attributes found in both sets.
                                                                      ## ! Internal comparison method used by
                                                                      ## Compare(...).


proc Compare*(aSourceDataSet: handle[TDF_DataSet];
             aTargetDataSet: handle[TDF_DataSet]; aFilter: TDF_IDFilter;
             aRelocationTable: handle[TDF_RelocationTable]) {.
    importcpp: "TDF_ComparisonTool::Compare(@)", header: "TDF_ComparisonTool.hxx".}
proc SourceUnbound*(aRefDataSet: handle[TDF_DataSet];
                   aRelocationTable: handle[TDF_RelocationTable];
                   aFilter: TDF_IDFilter; aDiffDataSet: handle[TDF_DataSet];
                   anOption: Standard_Integer = 2): Standard_Boolean {.
    importcpp: "TDF_ComparisonTool::SourceUnbound(@)",
    header: "TDF_ComparisonTool.hxx".}
proc TargetUnbound*(aRefDataSet: handle[TDF_DataSet];
                   aRelocationTable: handle[TDF_RelocationTable];
                   aFilter: TDF_IDFilter; aDiffDataSet: handle[TDF_DataSet];
                   anOption: Standard_Integer = 2): Standard_Boolean {.
    importcpp: "TDF_ComparisonTool::TargetUnbound(@)",
    header: "TDF_ComparisonTool.hxx".}
proc Cut*(aDataSet: handle[TDF_DataSet]) {.importcpp: "TDF_ComparisonTool::Cut(@)",
                                        header: "TDF_ComparisonTool.hxx".}
proc IsSelfContained*(aLabel: TDF_Label; aDataSet: handle[TDF_DataSet]): Standard_Boolean {.
    importcpp: "TDF_ComparisonTool::IsSelfContained(@)",
    header: "TDF_ComparisonTool.hxx".}
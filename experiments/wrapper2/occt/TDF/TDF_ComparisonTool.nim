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


proc compare*(aSourceDataSet: Handle[TDF_DataSet];
             aTargetDataSet: Handle[TDF_DataSet]; aFilter: TDF_IDFilter;
             aRelocationTable: Handle[TDF_RelocationTable]) {.
    importcpp: "TDF_ComparisonTool::Compare(@)", header: "TDF_ComparisonTool.hxx".}
proc sourceUnbound*(aRefDataSet: Handle[TDF_DataSet];
                   aRelocationTable: Handle[TDF_RelocationTable];
                   aFilter: TDF_IDFilter; aDiffDataSet: Handle[TDF_DataSet];
                   anOption: cint = 2): bool {.
    importcpp: "TDF_ComparisonTool::SourceUnbound(@)",
    header: "TDF_ComparisonTool.hxx".}
proc targetUnbound*(aRefDataSet: Handle[TDF_DataSet];
                   aRelocationTable: Handle[TDF_RelocationTable];
                   aFilter: TDF_IDFilter; aDiffDataSet: Handle[TDF_DataSet];
                   anOption: cint = 2): bool {.
    importcpp: "TDF_ComparisonTool::TargetUnbound(@)",
    header: "TDF_ComparisonTool.hxx".}
proc cut*(aDataSet: Handle[TDF_DataSet]) {.importcpp: "TDF_ComparisonTool::Cut(@)",
                                        header: "TDF_ComparisonTool.hxx".}
proc isSelfContained*(aLabel: TDF_Label; aDataSet: Handle[TDF_DataSet]): bool {.
    importcpp: "TDF_ComparisonTool::IsSelfContained(@)",
    header: "TDF_ComparisonTool.hxx".}


























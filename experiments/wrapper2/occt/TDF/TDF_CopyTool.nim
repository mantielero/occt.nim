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
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_IDFilter"
discard "forward decl of TDF_Label"
type
  TDF_CopyTool* {.importcpp: "TDF_CopyTool", header: "TDF_CopyTool.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Copy
                                                                                   ## <aSourceDataSet>
                                                                                   ## with
                                                                                   ## using
                                                                                   ## and
                                                                                   ## updating
                                                                                   ##
                                                                                   ## !
                                                                                   ## <aRelocationTable>.
                                                                                   ## This
                                                                                   ## method
                                                                                   ## ignores
                                                                                   ## target
                                                                                   ##
                                                                                   ## !
                                                                                   ## attributes
                                                                                   ## privilege
                                                                                   ## over
                                                                                   ## source
                                                                                   ## ones.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Internal
                                                                                   ## root
                                                                                   ## label
                                                                                   ## copy
                                                                                   ## recursive
                                                                                   ## method.


proc copy*(aSourceDataSet: Handle[TDF_DataSet];
          aRelocationTable: Handle[TDF_RelocationTable]) {.
    importcpp: "TDF_CopyTool::Copy(@)", header: "TDF_CopyTool.hxx".}
proc copy*(aSourceDataSet: Handle[TDF_DataSet];
          aRelocationTable: Handle[TDF_RelocationTable];
          aPrivilegeFilter: TDF_IDFilter) {.importcpp: "TDF_CopyTool::Copy(@)",
    header: "TDF_CopyTool.hxx".}
proc copy*(aSourceDataSet: Handle[TDF_DataSet];
          aRelocationTable: Handle[TDF_RelocationTable];
          aPrivilegeFilter: TDF_IDFilter; aRefFilter: TDF_IDFilter;
          setSelfContained: bool) {.importcpp: "TDF_CopyTool::Copy(@)",
                                  header: "TDF_CopyTool.hxx".}


























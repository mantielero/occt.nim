##  Created on: 1999-06-24
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_IDFilter"
discard "forward decl of TDF_DataSet"
type
  TDF_CopyLabel* {.importcpp: "TDF_CopyLabel", header: "TDF_CopyLabel.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor


proc constructTDF_CopyLabel*(): TDF_CopyLabel {.constructor,
    importcpp: "TDF_CopyLabel(@)", header: "TDF_CopyLabel.hxx".}
proc constructTDF_CopyLabel*(aSource: TDF_Label; aTarget: TDF_Label): TDF_CopyLabel {.
    constructor, importcpp: "TDF_CopyLabel(@)", header: "TDF_CopyLabel.hxx".}
proc load*(this: var TDF_CopyLabel; aSource: TDF_Label; aTarget: TDF_Label) {.
    importcpp: "Load", header: "TDF_CopyLabel.hxx".}
proc useFilter*(this: var TDF_CopyLabel; aFilter: TDF_IDFilter) {.
    importcpp: "UseFilter", header: "TDF_CopyLabel.hxx".}
proc externalReferences*(lab: TDF_Label; aExternals: var TDF_AttributeMap;
                        aFilter: TDF_IDFilter): bool {.
    importcpp: "TDF_CopyLabel::ExternalReferences(@)", header: "TDF_CopyLabel.hxx".}
proc externalReferences*(aRefLab: TDF_Label; lab: TDF_Label;
                        aExternals: var TDF_AttributeMap; aFilter: TDF_IDFilter;
                        aDataSet: var Handle[TDF_DataSet]) {.
    importcpp: "TDF_CopyLabel::ExternalReferences(@)", header: "TDF_CopyLabel.hxx".}
proc perform*(this: var TDF_CopyLabel) {.importcpp: "Perform",
                                     header: "TDF_CopyLabel.hxx".}
proc isDone*(this: TDF_CopyLabel): bool {.noSideEffect, importcpp: "IsDone",
                                      header: "TDF_CopyLabel.hxx".}
proc relocationTable*(this: TDF_CopyLabel): Handle[TDF_RelocationTable] {.
    noSideEffect, importcpp: "RelocationTable", header: "TDF_CopyLabel.hxx".}


























##  Created on: 1993-10-29
##  Created by: Christophe MARION
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfTransient, ../TColStd/TColStd_HArray1OfTransient,
  HLRAlgo_ListOfBPoint, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean

discard "forward decl of HLRAlgo_PolyShellData"
discard "forward decl of HLRAlgo_PolyShellData"
type
  Handle_HLRAlgo_PolyShellData* = handle[HLRAlgo_PolyShellData]

## ! All the PolyData of a Shell

type
  HLRAlgo_PolyShellData* {.importcpp: "HLRAlgo_PolyShellData",
                          header: "HLRAlgo_PolyShellData.hxx", bycopy.} = object of Standard_Transient

  HLRAlgo_PolyShellDataShellIndices* {.importcpp: "HLRAlgo_PolyShellData::ShellIndices",
                                      header: "HLRAlgo_PolyShellData.hxx", bycopy.} = object
    Min* {.importc: "Min".}: Standard_Integer
    Max* {.importc: "Max".}: Standard_Integer


proc constructHLRAlgo_PolyShellData*(nbFace: Standard_Integer): HLRAlgo_PolyShellData {.
    constructor, importcpp: "HLRAlgo_PolyShellData(@)",
    header: "HLRAlgo_PolyShellData.hxx".}
proc UpdateGlobalMinMax*(this: var HLRAlgo_PolyShellData; theBox: var Box) {.
    importcpp: "UpdateGlobalMinMax", header: "HLRAlgo_PolyShellData.hxx".}
proc UpdateHiding*(this: var HLRAlgo_PolyShellData; nbHiding: Standard_Integer) {.
    importcpp: "UpdateHiding", header: "HLRAlgo_PolyShellData.hxx".}
proc Hiding*(this: HLRAlgo_PolyShellData): Standard_Boolean {.noSideEffect,
    importcpp: "Hiding", header: "HLRAlgo_PolyShellData.hxx".}
proc PolyData*(this: var HLRAlgo_PolyShellData): var TColStd_Array1OfTransient {.
    importcpp: "PolyData", header: "HLRAlgo_PolyShellData.hxx".}
proc HidingPolyData*(this: var HLRAlgo_PolyShellData): var TColStd_Array1OfTransient {.
    importcpp: "HidingPolyData", header: "HLRAlgo_PolyShellData.hxx".}
proc Edges*(this: var HLRAlgo_PolyShellData): var HLRAlgo_ListOfBPoint {.
    importcpp: "Edges", header: "HLRAlgo_PolyShellData.hxx".}
proc Indices*(this: var HLRAlgo_PolyShellData): var HLRAlgo_PolyShellDataShellIndices {.
    importcpp: "Indices", header: "HLRAlgo_PolyShellData.hxx".}
type
  HLRAlgo_PolyShellDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRAlgo_PolyShellData::get_type_name(@)",
                              header: "HLRAlgo_PolyShellData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRAlgo_PolyShellData::get_type_descriptor(@)",
    header: "HLRAlgo_PolyShellData.hxx".}
proc DynamicType*(this: HLRAlgo_PolyShellData): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "HLRAlgo_PolyShellData.hxx".}
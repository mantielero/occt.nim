##  Created on: 2005-01-21
##  Created by: Alexander SOLOVYOV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  MeshVS_DataMapOfHArray1OfSequenceOfInteger, MeshVS_DataSource,
  MeshVS_HArray1OfSequenceOfInteger, ../Standard/Standard_Integer

discard "forward decl of MeshVS_DataSource3D"
discard "forward decl of MeshVS_DataSource3D"
type
  Handle_MeshVS_DataSource3D* = handle[MeshVS_DataSource3D]
  MeshVS_DataSource3D* {.importcpp: "MeshVS_DataSource3D",
                        header: "MeshVS_DataSource3D.hxx", bycopy.} = object of MeshVS_DataSource


proc GetPrismTopology*(this: MeshVS_DataSource3D; BasePoints: Standard_Integer): handle[
    MeshVS_HArray1OfSequenceOfInteger] {.noSideEffect,
                                        importcpp: "GetPrismTopology",
                                        header: "MeshVS_DataSource3D.hxx".}
proc GetPyramidTopology*(this: MeshVS_DataSource3D; BasePoints: Standard_Integer): handle[
    MeshVS_HArray1OfSequenceOfInteger] {.noSideEffect,
                                        importcpp: "GetPyramidTopology",
                                        header: "MeshVS_DataSource3D.hxx".}
proc CreatePrismTopology*(BasePoints: Standard_Integer): handle[
    MeshVS_HArray1OfSequenceOfInteger] {.importcpp: "MeshVS_DataSource3D::CreatePrismTopology(@)",
                                        header: "MeshVS_DataSource3D.hxx".}
proc CreatePyramidTopology*(BasePoints: Standard_Integer): handle[
    MeshVS_HArray1OfSequenceOfInteger] {.importcpp: "MeshVS_DataSource3D::CreatePyramidTopology(@)",
                                        header: "MeshVS_DataSource3D.hxx".}
type
  MeshVS_DataSource3Dbase_type* = MeshVS_DataSource

proc get_type_name*(): cstring {.importcpp: "MeshVS_DataSource3D::get_type_name(@)",
                              header: "MeshVS_DataSource3D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_DataSource3D::get_type_descriptor(@)",
    header: "MeshVS_DataSource3D.hxx".}
proc DynamicType*(this: MeshVS_DataSource3D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_DataSource3D.hxx".}
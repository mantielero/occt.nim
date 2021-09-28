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

discard "forward decl of MeshVS_DataSource3D"
discard "forward decl of MeshVS_DataSource3D"
type
  HandleC1C1* = Handle[MeshVS_DataSource3D]
  MeshVS_DataSource3D* {.importcpp: "MeshVS_DataSource3D",
                        header: "MeshVS_DataSource3D.hxx", bycopy.} = object of MeshVS_DataSource


proc getPrismTopology*(this: MeshVS_DataSource3D; basePoints: cint): Handle[
    MeshVS_HArray1OfSequenceOfInteger] {.noSideEffect,
                                        importcpp: "GetPrismTopology",
                                        header: "MeshVS_DataSource3D.hxx".}
proc getPyramidTopology*(this: MeshVS_DataSource3D; basePoints: cint): Handle[
    MeshVS_HArray1OfSequenceOfInteger] {.noSideEffect,
                                        importcpp: "GetPyramidTopology",
                                        header: "MeshVS_DataSource3D.hxx".}
proc createPrismTopology*(basePoints: cint): Handle[
    MeshVS_HArray1OfSequenceOfInteger] {.importcpp: "MeshVS_DataSource3D::CreatePrismTopology(@)",
                                        header: "MeshVS_DataSource3D.hxx".}
proc createPyramidTopology*(basePoints: cint): Handle[
    MeshVS_HArray1OfSequenceOfInteger] {.importcpp: "MeshVS_DataSource3D::CreatePyramidTopology(@)",
                                        header: "MeshVS_DataSource3D.hxx".}
type
  MeshVS_DataSource3DbaseType* = MeshVS_DataSource

proc getTypeName*(): cstring {.importcpp: "MeshVS_DataSource3D::get_type_name(@)",
                            header: "MeshVS_DataSource3D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_DataSource3D::get_type_descriptor(@)",
    header: "MeshVS_DataSource3D.hxx".}
proc dynamicType*(this: MeshVS_DataSource3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MeshVS_DataSource3D.hxx".}


























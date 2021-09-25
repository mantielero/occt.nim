##  Created on: 2016-11-10
##  Created by: Anton KOZULIN
##  Copyright (c) 2016 OPEN CASCADE SAS
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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataXtd_Triangulation"
discard "forward decl of TDataXtd_Triangulation"
type
  HandleTDataXtdTriangulation* = Handle[TDataXtdTriangulation]

## ! An Ocaf attribute containing a mesh (Poly_Triangulation).
## ! It duplicates all methods from Poly_Triangulation.
## ! It is highly recommended to modify the mesh through the methods of this attribute,
## ! but not directly via the underlying Poly_Triangulation object.
## ! In this case Undo/Redo will work fine and robust.

type
  TDataXtdTriangulation* {.importcpp: "TDataXtd_Triangulation",
                          header: "TDataXtd_Triangulation.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                            ## !
                                                                                            ## Static
                                                                                            ## methods
                                                                                            ##
                                                                                            ## ==============
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## the
                                                                                            ## ID
                                                                                            ## of
                                                                                            ## the
                                                                                            ## triangulation
                                                                                            ## attribute.


proc getID*(): StandardGUID {.importcpp: "TDataXtd_Triangulation::GetID(@)",
                           header: "TDataXtd_Triangulation.hxx".}
proc set*(theLabel: TDF_Label): Handle[TDataXtdTriangulation] {.
    importcpp: "TDataXtd_Triangulation::Set(@)",
    header: "TDataXtd_Triangulation.hxx".}
proc set*(theLabel: TDF_Label; theTriangulation: Handle[PolyTriangulation]): Handle[
    TDataXtdTriangulation] {.importcpp: "TDataXtd_Triangulation::Set(@)",
                            header: "TDataXtd_Triangulation.hxx".}
proc constructTDataXtdTriangulation*(): TDataXtdTriangulation {.constructor,
    importcpp: "TDataXtd_Triangulation(@)", header: "TDataXtd_Triangulation.hxx".}
proc set*(this: var TDataXtdTriangulation;
         theTriangulation: Handle[PolyTriangulation]) {.importcpp: "Set",
    header: "TDataXtd_Triangulation.hxx".}
proc get*(this: TDataXtdTriangulation): Handle[PolyTriangulation] {.noSideEffect,
    importcpp: "Get", header: "TDataXtd_Triangulation.hxx".}
proc deflection*(this: TDataXtdTriangulation): float {.noSideEffect,
    importcpp: "Deflection", header: "TDataXtd_Triangulation.hxx".}
proc deflection*(this: var TDataXtdTriangulation; theDeflection: float) {.
    importcpp: "Deflection", header: "TDataXtd_Triangulation.hxx".}
proc removeUVNodes*(this: var TDataXtdTriangulation) {.importcpp: "RemoveUVNodes",
    header: "TDataXtd_Triangulation.hxx".}
proc nbNodes*(this: TDataXtdTriangulation): int {.noSideEffect, importcpp: "NbNodes",
    header: "TDataXtd_Triangulation.hxx".}
proc nbTriangles*(this: TDataXtdTriangulation): int {.noSideEffect,
    importcpp: "NbTriangles", header: "TDataXtd_Triangulation.hxx".}
proc hasUVNodes*(this: TDataXtdTriangulation): bool {.noSideEffect,
    importcpp: "HasUVNodes", header: "TDataXtd_Triangulation.hxx".}
proc node*(this: TDataXtdTriangulation; theIndex: int): Pnt {.noSideEffect,
    importcpp: "Node", header: "TDataXtd_Triangulation.hxx".}
proc setNode*(this: var TDataXtdTriangulation; theIndex: int; theNode: Pnt) {.
    importcpp: "SetNode", header: "TDataXtd_Triangulation.hxx".}
proc uVNode*(this: TDataXtdTriangulation; theIndex: int): Pnt2d {.noSideEffect,
    importcpp: "UVNode", header: "TDataXtd_Triangulation.hxx".}
proc setUVNode*(this: var TDataXtdTriangulation; theIndex: int; theUVNode: Pnt2d) {.
    importcpp: "SetUVNode", header: "TDataXtd_Triangulation.hxx".}
proc triangle*(this: TDataXtdTriangulation; theIndex: int): PolyTriangle {.
    noSideEffect, importcpp: "Triangle", header: "TDataXtd_Triangulation.hxx".}
proc setTriangle*(this: var TDataXtdTriangulation; theIndex: int;
                 theTriangle: PolyTriangle) {.importcpp: "SetTriangle",
    header: "TDataXtd_Triangulation.hxx".}
proc setNormals*(this: var TDataXtdTriangulation;
                theNormals: Handle[TShortHArray1OfShortReal]) {.
    importcpp: "SetNormals", header: "TDataXtd_Triangulation.hxx".}
proc setNormal*(this: var TDataXtdTriangulation; theIndex: int; theNormal: Dir) {.
    importcpp: "SetNormal", header: "TDataXtd_Triangulation.hxx".}
proc hasNormals*(this: TDataXtdTriangulation): bool {.noSideEffect,
    importcpp: "HasNormals", header: "TDataXtd_Triangulation.hxx".}
proc normal*(this: TDataXtdTriangulation; theIndex: int): Dir {.noSideEffect,
    importcpp: "Normal", header: "TDataXtd_Triangulation.hxx".}
proc id*(this: TDataXtdTriangulation): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Triangulation.hxx".}
proc restore*(this: var TDataXtdTriangulation; theAttribute: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataXtd_Triangulation.hxx".}
proc newEmpty*(this: TDataXtdTriangulation): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataXtd_Triangulation.hxx".}
proc paste*(this: TDataXtdTriangulation; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataXtd_Triangulation.hxx".}
proc dump*(this: TDataXtdTriangulation; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Triangulation.hxx".}
type
  TDataXtdTriangulationbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataXtd_Triangulation::get_type_name(@)",
                            header: "TDataXtd_Triangulation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataXtd_Triangulation::get_type_descriptor(@)",
    header: "TDataXtd_Triangulation.hxx".}
proc dynamicType*(this: TDataXtdTriangulation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_Triangulation.hxx".}

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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Poly/Poly_Triangulation,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataXtd_Triangulation"
discard "forward decl of TDataXtd_Triangulation"
type
  Handle_TDataXtd_Triangulation* = handle[TDataXtd_Triangulation]

## ! An Ocaf attribute containing a mesh (Poly_Triangulation).
## ! It duplicates all methods from Poly_Triangulation.
## ! It is highly recommended to modify the mesh through the methods of this attribute,
## ! but not directly via the underlying Poly_Triangulation object.
## ! In this case Undo/Redo will work fine and robust.

type
  TDataXtd_Triangulation* {.importcpp: "TDataXtd_Triangulation",
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


proc GetID*(): Standard_GUID {.importcpp: "TDataXtd_Triangulation::GetID(@)",
                            header: "TDataXtd_Triangulation.hxx".}
proc Set*(theLabel: TDF_Label): handle[TDataXtd_Triangulation] {.
    importcpp: "TDataXtd_Triangulation::Set(@)",
    header: "TDataXtd_Triangulation.hxx".}
proc Set*(theLabel: TDF_Label; theTriangulation: handle[Poly_Triangulation]): handle[
    TDataXtd_Triangulation] {.importcpp: "TDataXtd_Triangulation::Set(@)",
                             header: "TDataXtd_Triangulation.hxx".}
proc constructTDataXtd_Triangulation*(): TDataXtd_Triangulation {.constructor,
    importcpp: "TDataXtd_Triangulation(@)", header: "TDataXtd_Triangulation.hxx".}
proc Set*(this: var TDataXtd_Triangulation;
         theTriangulation: handle[Poly_Triangulation]) {.importcpp: "Set",
    header: "TDataXtd_Triangulation.hxx".}
proc Get*(this: TDataXtd_Triangulation): handle[Poly_Triangulation] {.noSideEffect,
    importcpp: "Get", header: "TDataXtd_Triangulation.hxx".}
proc Deflection*(this: TDataXtd_Triangulation): Standard_Real {.noSideEffect,
    importcpp: "Deflection", header: "TDataXtd_Triangulation.hxx".}
proc Deflection*(this: var TDataXtd_Triangulation; theDeflection: Standard_Real) {.
    importcpp: "Deflection", header: "TDataXtd_Triangulation.hxx".}
proc RemoveUVNodes*(this: var TDataXtd_Triangulation) {.importcpp: "RemoveUVNodes",
    header: "TDataXtd_Triangulation.hxx".}
proc NbNodes*(this: TDataXtd_Triangulation): Standard_Integer {.noSideEffect,
    importcpp: "NbNodes", header: "TDataXtd_Triangulation.hxx".}
proc NbTriangles*(this: TDataXtd_Triangulation): Standard_Integer {.noSideEffect,
    importcpp: "NbTriangles", header: "TDataXtd_Triangulation.hxx".}
proc HasUVNodes*(this: TDataXtd_Triangulation): Standard_Boolean {.noSideEffect,
    importcpp: "HasUVNodes", header: "TDataXtd_Triangulation.hxx".}
proc Node*(this: TDataXtd_Triangulation; theIndex: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Node", header: "TDataXtd_Triangulation.hxx".}
proc SetNode*(this: var TDataXtd_Triangulation; theIndex: Standard_Integer;
             theNode: gp_Pnt) {.importcpp: "SetNode",
                              header: "TDataXtd_Triangulation.hxx".}
proc UVNode*(this: TDataXtd_Triangulation; theIndex: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "UVNode", header: "TDataXtd_Triangulation.hxx".}
proc SetUVNode*(this: var TDataXtd_Triangulation; theIndex: Standard_Integer;
               theUVNode: gp_Pnt2d) {.importcpp: "SetUVNode",
                                    header: "TDataXtd_Triangulation.hxx".}
proc Triangle*(this: TDataXtd_Triangulation; theIndex: Standard_Integer): Poly_Triangle {.
    noSideEffect, importcpp: "Triangle", header: "TDataXtd_Triangulation.hxx".}
proc SetTriangle*(this: var TDataXtd_Triangulation; theIndex: Standard_Integer;
                 theTriangle: Poly_Triangle) {.importcpp: "SetTriangle",
    header: "TDataXtd_Triangulation.hxx".}
proc SetNormals*(this: var TDataXtd_Triangulation;
                theNormals: handle[TShort_HArray1OfShortReal]) {.
    importcpp: "SetNormals", header: "TDataXtd_Triangulation.hxx".}
proc SetNormal*(this: var TDataXtd_Triangulation; theIndex: Standard_Integer;
               theNormal: gp_Dir) {.importcpp: "SetNormal",
                                  header: "TDataXtd_Triangulation.hxx".}
proc HasNormals*(this: TDataXtd_Triangulation): Standard_Boolean {.noSideEffect,
    importcpp: "HasNormals", header: "TDataXtd_Triangulation.hxx".}
proc Normal*(this: TDataXtd_Triangulation; theIndex: Standard_Integer): gp_Dir {.
    noSideEffect, importcpp: "Normal", header: "TDataXtd_Triangulation.hxx".}
proc ID*(this: TDataXtd_Triangulation): Standard_GUID {.noSideEffect,
    importcpp: "ID", header: "TDataXtd_Triangulation.hxx".}
proc Restore*(this: var TDataXtd_Triangulation; theAttribute: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataXtd_Triangulation.hxx".}
proc NewEmpty*(this: TDataXtd_Triangulation): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataXtd_Triangulation.hxx".}
proc Paste*(this: TDataXtd_Triangulation; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataXtd_Triangulation.hxx".}
proc Dump*(this: TDataXtd_Triangulation; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataXtd_Triangulation.hxx".}
type
  TDataXtd_Triangulationbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataXtd_Triangulation::get_type_name(@)",
                              header: "TDataXtd_Triangulation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataXtd_Triangulation::get_type_descriptor(@)",
    header: "TDataXtd_Triangulation.hxx".}
proc DynamicType*(this: TDataXtd_Triangulation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataXtd_Triangulation.hxx".}
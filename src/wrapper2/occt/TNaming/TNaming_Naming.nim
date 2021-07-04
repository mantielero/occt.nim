##  Created on: 1997-09-08
##  Created by: Yves FRICAUD
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
  ../Standard/Standard, ../Standard/Standard_Type, TNaming_Name,
  ../TDF/TDF_Attribute, ../Standard/Standard_Boolean, ../TDF/TDF_LabelMap,
  ../Standard/Standard_OStream, ../TDF/TDF_AttributeIndexedMap

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_Name"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDF_IDFilter"
discard "forward decl of TNaming_Naming"
discard "forward decl of TNaming_Naming"
type
  Handle_TNaming_Naming* = handle[TNaming_Naming]

## ! This attribute  store the  topological  naming of any
## ! selected   shape,  when this  shape  is  not  already
## ! attached to a specific label. This class is also used
## ! to solve  it when  the argumentsof the  toipological
## ! naming are modified.

type
  TNaming_Naming* {.importcpp: "TNaming_Naming", header: "TNaming_Naming.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                                        ## !
                                                                                                        ## following
                                                                                                        ## code
                                                                                                        ## from
                                                                                                        ## TDesignStd
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## ==============================


proc GetID*(): Standard_GUID {.importcpp: "TNaming_Naming::GetID(@)",
                            header: "TNaming_Naming.hxx".}
proc Insert*(under: TDF_Label): handle[TNaming_Naming] {.
    importcpp: "TNaming_Naming::Insert(@)", header: "TNaming_Naming.hxx".}
proc Name*(where: TDF_Label; Selection: TopoDS_Shape; Context: TopoDS_Shape;
          Geometry: Standard_Boolean = Standard_False;
          KeepOrientation: Standard_Boolean = Standard_False;
          BNproblem: Standard_Boolean = Standard_False): handle[TNaming_NamedShape] {.
    importcpp: "TNaming_Naming::Name(@)", header: "TNaming_Naming.hxx".}
proc constructTNaming_Naming*(): TNaming_Naming {.constructor,
    importcpp: "TNaming_Naming(@)", header: "TNaming_Naming.hxx".}
proc IsDefined*(this: TNaming_Naming): Standard_Boolean {.noSideEffect,
    importcpp: "IsDefined", header: "TNaming_Naming.hxx".}
proc GetName*(this: TNaming_Naming): TNaming_Name {.noSideEffect,
    importcpp: "GetName", header: "TNaming_Naming.hxx".}
proc ChangeName*(this: var TNaming_Naming): var TNaming_Name {.
    importcpp: "ChangeName", header: "TNaming_Naming.hxx".}
proc Regenerate*(this: var TNaming_Naming; scope: var TDF_LabelMap): Standard_Boolean {.
    importcpp: "Regenerate", header: "TNaming_Naming.hxx".}
proc Solve*(this: var TNaming_Naming; scope: var TDF_LabelMap): Standard_Boolean {.
    importcpp: "Solve", header: "TNaming_Naming.hxx".}
proc ID*(this: TNaming_Naming): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TNaming_Naming.hxx".}
proc NewEmpty*(this: TNaming_Naming): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TNaming_Naming.hxx".}
proc Restore*(this: var TNaming_Naming; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TNaming_Naming.hxx".}
proc Paste*(this: TNaming_Naming; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TNaming_Naming.hxx".}
proc References*(this: TNaming_Naming; aDataSet: handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TNaming_Naming.hxx".}
proc Dump*(this: TNaming_Naming; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TNaming_Naming.hxx".}
proc ExtendedDump*(this: TNaming_Naming; anOS: var Standard_OStream;
                  aFilter: TDF_IDFilter; aMap: var TDF_AttributeIndexedMap) {.
    noSideEffect, importcpp: "ExtendedDump", header: "TNaming_Naming.hxx".}
proc DumpJson*(this: TNaming_Naming; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TNaming_Naming.hxx".}
type
  TNaming_Namingbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TNaming_Naming::get_type_name(@)",
                              header: "TNaming_Naming.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TNaming_Naming::get_type_descriptor(@)",
    header: "TNaming_Naming.hxx".}
proc DynamicType*(this: TNaming_Naming): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TNaming_Naming.hxx".}
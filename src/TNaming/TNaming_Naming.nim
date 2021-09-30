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
  HandleC1C1* = Handle[TNamingNaming]

## ! This attribute  store the  topological  naming of any
## ! selected   shape,  when this  shape  is  not  already
## ! attached to a specific label. This class is also used
## ! to solve  it when  the argumentsof the  toipological
## ! naming are modified.

type
  TNamingNaming* {.importcpp: "TNaming_Naming", header: "TNaming_Naming.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                                       ## !
                                                                                                       ## following
                                                                                                       ## code
                                                                                                       ## from
                                                                                                       ## TDesignStd
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## ==============================


proc getID*(): StandardGUID {.importcpp: "TNaming_Naming::GetID(@)",
                           header: "TNaming_Naming.hxx".}
proc insert*(under: TDF_Label): Handle[TNamingNaming] {.
    importcpp: "TNaming_Naming::Insert(@)", header: "TNaming_Naming.hxx".}
proc name*(where: TDF_Label; selection: TopoDS_Shape; context: TopoDS_Shape;
          geometry: bool = false; keepOrientation: bool = false; bNproblem: bool = false): Handle[
    TNamingNamedShape] {.importcpp: "TNaming_Naming::Name(@)",
                        header: "TNaming_Naming.hxx".}
proc constructTNamingNaming*(): TNamingNaming {.constructor,
    importcpp: "TNaming_Naming(@)", header: "TNaming_Naming.hxx".}
proc isDefined*(this: TNamingNaming): bool {.noSideEffect, importcpp: "IsDefined",
    header: "TNaming_Naming.hxx".}
proc getName*(this: TNamingNaming): TNamingName {.noSideEffect, importcpp: "GetName",
    header: "TNaming_Naming.hxx".}
proc changeName*(this: var TNamingNaming): var TNamingName {.importcpp: "ChangeName",
    header: "TNaming_Naming.hxx".}
proc regenerate*(this: var TNamingNaming; scope: var TDF_LabelMap): bool {.
    importcpp: "Regenerate", header: "TNaming_Naming.hxx".}
proc solve*(this: var TNamingNaming; scope: var TDF_LabelMap): bool {.
    importcpp: "Solve", header: "TNaming_Naming.hxx".}
proc id*(this: TNamingNaming): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TNaming_Naming.hxx".}
proc newEmpty*(this: TNamingNaming): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TNaming_Naming.hxx".}
proc restore*(this: var TNamingNaming; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TNaming_Naming.hxx".}
proc paste*(this: TNamingNaming; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TNaming_Naming.hxx".}
proc references*(this: TNamingNaming; aDataSet: Handle[TDF_DataSet]) {.noSideEffect,
    importcpp: "References", header: "TNaming_Naming.hxx".}
proc dump*(this: TNamingNaming; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TNaming_Naming.hxx".}
proc extendedDump*(this: TNamingNaming; anOS: var StandardOStream;
                  aFilter: TDF_IDFilter; aMap: var TDF_AttributeIndexedMap) {.
    noSideEffect, importcpp: "ExtendedDump", header: "TNaming_Naming.hxx".}
proc dumpJson*(this: TNamingNaming; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TNaming_Naming.hxx".}
type
  TNamingNamingbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TNaming_Naming::get_type_name(@)",
                            header: "TNaming_Naming.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TNaming_Naming::get_type_descriptor(@)",
    header: "TNaming_Naming.hxx".}
proc dynamicType*(this: TNamingNaming): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TNaming_Naming.hxx".}


























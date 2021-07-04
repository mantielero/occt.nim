##  Created on: 1994-05-31
##  Created by: Modelistation
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../TColStd/TColStd_HArray1OfInteger, ../IFSelect/IFSelect_SignCounter,
  ../TColStd/TColStd_HSequenceOfInteger

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESSelect_CounterOfLevelNumber"
discard "forward decl of IGESSelect_CounterOfLevelNumber"
type
  Handle_IGESSelect_CounterOfLevelNumber* = handle[IGESSelect_CounterOfLevelNumber]

## ! This class gives information about Level Number. It counts
## ! entities according level number, considering also the
## ! multiple level (see the class LevelList) for which an entity
## ! is attached to each of the listed levels.
## !
## ! Data are available, as level number, or as their alphanumeric
## ! counterparts ("LEVEL nnnnnnn", " NO LEVEL", " LEVEL LIST")

type
  IGESSelect_CounterOfLevelNumber* {.importcpp: "IGESSelect_CounterOfLevelNumber", header: "IGESSelect_CounterOfLevelNumber.hxx",
                                    bycopy.} = object of IFSelect_SignCounter ## ! Creates a
                                                                         ## CounterOfLevelNumber, clear, ready to work
                                                                         ## !
                                                                         ## <withmap> and
                                                                         ## <withlist> are
                                                                         ## transmitted to
                                                                         ## SignCounter


proc constructIGESSelect_CounterOfLevelNumber*(
    withmap: Standard_Boolean = Standard_True;
    withlist: Standard_Boolean = Standard_False): IGESSelect_CounterOfLevelNumber {.
    constructor, importcpp: "IGESSelect_CounterOfLevelNumber(@)",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc Clear*(this: var IGESSelect_CounterOfLevelNumber) {.importcpp: "Clear",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc AddSign*(this: var IGESSelect_CounterOfLevelNumber;
             ent: handle[Standard_Transient];
             model: handle[Interface_InterfaceModel]) {.importcpp: "AddSign",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc AddLevel*(this: var IGESSelect_CounterOfLevelNumber;
              ent: handle[Standard_Transient]; level: Standard_Integer) {.
    importcpp: "AddLevel", header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc HighestLevel*(this: IGESSelect_CounterOfLevelNumber): Standard_Integer {.
    noSideEffect, importcpp: "HighestLevel",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc NbTimesLevel*(this: IGESSelect_CounterOfLevelNumber; level: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbTimesLevel",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc Levels*(this: IGESSelect_CounterOfLevelNumber): handle[
    TColStd_HSequenceOfInteger] {.noSideEffect, importcpp: "Levels",
                                 header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc Sign*(this: IGESSelect_CounterOfLevelNumber; ent: handle[Standard_Transient];
          model: handle[Interface_InterfaceModel]): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Sign",
                               header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc PrintCount*(this: IGESSelect_CounterOfLevelNumber; S: var Standard_OStream) {.
    noSideEffect, importcpp: "PrintCount",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
type
  IGESSelect_CounterOfLevelNumberbase_type* = IFSelect_SignCounter

proc get_type_name*(): cstring {.importcpp: "IGESSelect_CounterOfLevelNumber::get_type_name(@)",
                              header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_CounterOfLevelNumber::get_type_descriptor(@)",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
proc DynamicType*(this: IGESSelect_CounterOfLevelNumber): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_CounterOfLevelNumber.hxx".}
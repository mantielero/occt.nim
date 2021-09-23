##  Created on: 1994-04-21
##  Created by: Christian CAILLET
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HSequenceOfAsciiString,
  ../TCollection/TCollection_AsciiString, ../Interface/Interface_SignType,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_Signature"
discard "forward decl of IFSelect_Signature"
type
  Handle_IFSelect_Signature* = handle[IFSelect_Signature]

## ! Signature provides the basic service used by the classes
## ! SelectSignature and Counter (i.e. Name, Value), which is :
## ! - for an entity in a model, give a characteristic string, its
## ! signature
## ! This string has not to be unique in the model, but gives a
## ! value for such or such important feature.
## ! Exemples : Dynamic Type; Category; etc

type
  IFSelect_Signature* {.importcpp: "IFSelect_Signature",
                       header: "IFSelect_Signature.hxx", bycopy.} = object of Interface_SignType ##
                                                                                          ## !
                                                                                          ## Sets
                                                                                          ## the
                                                                                          ## information
                                                                                          ## data
                                                                                          ## to
                                                                                          ## tell
                                                                                          ## "integer
                                                                                          ## cases"
                                                                                          ## with
                                                                                          ##
                                                                                          ## !
                                                                                          ## possible
                                                                                          ## min
                                                                                          ## and
                                                                                          ## max
                                                                                          ## values
                                                                                          ##
                                                                                          ## !
                                                                                          ## To
                                                                                          ## be
                                                                                          ## called
                                                                                          ## when
                                                                                          ## creating
                                                                                          ##
                                                                                          ## !
                                                                                          ## Initializes
                                                                                          ## a
                                                                                          ## Signature
                                                                                          ## with
                                                                                          ## its
                                                                                          ## name


proc SetIntCase*(this: var IFSelect_Signature; hasmin: Standard_Boolean;
                valmin: Standard_Integer; hasmax: Standard_Boolean;
                valmax: Standard_Integer) {.importcpp: "SetIntCase",
    header: "IFSelect_Signature.hxx".}
proc IsIntCase*(this: IFSelect_Signature; hasmin: var Standard_Boolean;
               valmin: var Standard_Integer; hasmax: var Standard_Boolean;
               valmax: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsIntCase", header: "IFSelect_Signature.hxx".}
proc AddCase*(this: var IFSelect_Signature; acase: Standard_CString) {.
    importcpp: "AddCase", header: "IFSelect_Signature.hxx".}
proc CaseList*(this: IFSelect_Signature): handle[TColStd_HSequenceOfAsciiString] {.
    noSideEffect, importcpp: "CaseList", header: "IFSelect_Signature.hxx".}
proc Name*(this: IFSelect_Signature): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "IFSelect_Signature.hxx".}
proc Label*(this: IFSelect_Signature): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_Signature.hxx".}
proc Matches*(this: IFSelect_Signature; ent: handle[Standard_Transient];
             model: handle[Interface_InterfaceModel];
             text: TCollection_AsciiString; exact: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "IFSelect_Signature.hxx".}
proc MatchValue*(val: Standard_CString; text: TCollection_AsciiString;
                exact: Standard_Boolean): Standard_Boolean {.
    importcpp: "IFSelect_Signature::MatchValue(@)",
    header: "IFSelect_Signature.hxx".}
proc IntValue*(val: Standard_Integer): Standard_CString {.
    importcpp: "IFSelect_Signature::IntValue(@)", header: "IFSelect_Signature.hxx".}
type
  IFSelect_Signaturebase_type* = Interface_SignType

proc get_type_name*(): cstring {.importcpp: "IFSelect_Signature::get_type_name(@)",
                              header: "IFSelect_Signature.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_Signature::get_type_descriptor(@)",
    header: "IFSelect_Signature.hxx".}
proc DynamicType*(this: IFSelect_Signature): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_Signature.hxx".}
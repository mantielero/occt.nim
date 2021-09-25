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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_Signature"
discard "forward decl of IFSelect_Signature"
type
  HandleIFSelectSignature* = Handle[IFSelectSignature]

## ! Signature provides the basic service used by the classes
## ! SelectSignature and Counter (i.e. Name, Value), which is :
## ! - for an entity in a model, give a characteristic string, its
## ! signature
## ! This string has not to be unique in the model, but gives a
## ! value for such or such important feature.
## ! Exemples : Dynamic Type; Category; etc

type
  IFSelectSignature* {.importcpp: "IFSelect_Signature",
                      header: "IFSelect_Signature.hxx", bycopy.} = object of InterfaceSignType ##
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


proc setIntCase*(this: var IFSelectSignature; hasmin: bool; valmin: int; hasmax: bool;
                valmax: int) {.importcpp: "SetIntCase",
                             header: "IFSelect_Signature.hxx".}
proc isIntCase*(this: IFSelectSignature; hasmin: var bool; valmin: var int;
               hasmax: var bool; valmax: var int): bool {.noSideEffect,
    importcpp: "IsIntCase", header: "IFSelect_Signature.hxx".}
proc addCase*(this: var IFSelectSignature; acase: StandardCString) {.
    importcpp: "AddCase", header: "IFSelect_Signature.hxx".}
proc caseList*(this: IFSelectSignature): Handle[TColStdHSequenceOfAsciiString] {.
    noSideEffect, importcpp: "CaseList", header: "IFSelect_Signature.hxx".}
proc name*(this: IFSelectSignature): StandardCString {.noSideEffect,
    importcpp: "Name", header: "IFSelect_Signature.hxx".}
proc label*(this: IFSelectSignature): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_Signature.hxx".}
proc matches*(this: IFSelectSignature; ent: Handle[StandardTransient];
             model: Handle[InterfaceInterfaceModel]; text: TCollectionAsciiString;
             exact: bool): bool {.noSideEffect, importcpp: "Matches",
                               header: "IFSelect_Signature.hxx".}
proc matchValue*(val: StandardCString; text: TCollectionAsciiString; exact: bool): bool {.
    importcpp: "IFSelect_Signature::MatchValue(@)",
    header: "IFSelect_Signature.hxx".}
proc intValue*(val: int): StandardCString {.importcpp: "IFSelect_Signature::IntValue(@)",
                                        header: "IFSelect_Signature.hxx".}
type
  IFSelectSignaturebaseType* = InterfaceSignType

proc getTypeName*(): cstring {.importcpp: "IFSelect_Signature::get_type_name(@)",
                            header: "IFSelect_Signature.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_Signature::get_type_descriptor(@)",
    header: "IFSelect_Signature.hxx".}
proc dynamicType*(this: IFSelectSignature): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_Signature.hxx".}

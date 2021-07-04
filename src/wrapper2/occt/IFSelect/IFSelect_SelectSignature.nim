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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Integer,
  ../TColStd/TColStd_SequenceOfAsciiString, ../TColStd/TColStd_SequenceOfInteger,
  IFSelect_SelectExtract, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean

discard "forward decl of IFSelect_Signature"
discard "forward decl of IFSelect_SignCounter"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_SelectSignature"
discard "forward decl of IFSelect_SelectSignature"
type
  Handle_IFSelect_SelectSignature* = handle[IFSelect_SelectSignature]

## ! A SelectSignature sorts the Entities on a Signature Matching.
## ! The signature to match is given at creation time. Also, the
## ! required match is given at creation time : exact (IsEqual) or
## ! contains (the Type's Name must contain the criterium Text)
## !
## ! Remark that no more interpretation is done, it is an
## ! alpha-numeric signature : for instance, DynamicType is matched
## ! as such, super-types are not considered
## !
## ! Also, numeric (integer) comparisons are supported : an item
## ! can be <val ou <=val or >val or >=val , val being an Integer
## !
## ! A SelectSignature may also be created from a SignCounter,
## ! which then just gives its LastValue as SignatureValue

type
  IFSelect_SelectSignature* {.importcpp: "IFSelect_SelectSignature",
                             header: "IFSelect_SelectSignature.hxx", bycopy.} = object of IFSelect_SelectExtract ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## a
                                                                                                          ## SelectSignature
                                                                                                          ## with
                                                                                                          ## its
                                                                                                          ## Signature
                                                                                                          ## and
                                                                                                          ## its
                                                                                                          ## Text
                                                                                                          ## to
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Match.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## <exact>
                                                                                                          ## if
                                                                                                          ## True
                                                                                                          ## requires
                                                                                                          ## exact
                                                                                                          ## match,
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## if
                                                                                                          ## False
                                                                                                          ## requires
                                                                                                          ## <signtext>
                                                                                                          ## to
                                                                                                          ## be
                                                                                                          ## contained
                                                                                                          ## in
                                                                                                          ## the
                                                                                                          ## Signature
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## entity
                                                                                                          ## (default
                                                                                                          ## is
                                                                                                          ## "exact")


proc constructIFSelect_SelectSignature*(matcher: handle[IFSelect_Signature];
                                       signtext: Standard_CString;
                                       exact: Standard_Boolean = Standard_True): IFSelect_SelectSignature {.
    constructor, importcpp: "IFSelect_SelectSignature(@)",
    header: "IFSelect_SelectSignature.hxx".}
proc constructIFSelect_SelectSignature*(matcher: handle[IFSelect_Signature];
                                       signtext: TCollection_AsciiString;
                                       exact: Standard_Boolean = Standard_True): IFSelect_SelectSignature {.
    constructor, importcpp: "IFSelect_SelectSignature(@)",
    header: "IFSelect_SelectSignature.hxx".}
proc constructIFSelect_SelectSignature*(matcher: handle[IFSelect_SignCounter];
                                       signtext: Standard_CString;
                                       exact: Standard_Boolean = Standard_True): IFSelect_SelectSignature {.
    constructor, importcpp: "IFSelect_SelectSignature(@)",
    header: "IFSelect_SelectSignature.hxx".}
proc Signature*(this: IFSelect_SelectSignature): handle[IFSelect_Signature] {.
    noSideEffect, importcpp: "Signature", header: "IFSelect_SelectSignature.hxx".}
proc Counter*(this: IFSelect_SelectSignature): handle[IFSelect_SignCounter] {.
    noSideEffect, importcpp: "Counter", header: "IFSelect_SelectSignature.hxx".}
proc SortInGraph*(this: IFSelect_SelectSignature; rank: Standard_Integer;
                 ent: handle[Standard_Transient]; G: Interface_Graph): Standard_Boolean {.
    noSideEffect, importcpp: "SortInGraph", header: "IFSelect_SelectSignature.hxx".}
proc Sort*(this: IFSelect_SelectSignature; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "IFSelect_SelectSignature.hxx".}
proc SignatureText*(this: IFSelect_SelectSignature): TCollection_AsciiString {.
    noSideEffect, importcpp: "SignatureText",
    header: "IFSelect_SelectSignature.hxx".}
proc IsExact*(this: IFSelect_SelectSignature): Standard_Boolean {.noSideEffect,
    importcpp: "IsExact", header: "IFSelect_SelectSignature.hxx".}
proc ExtractLabel*(this: IFSelect_SelectSignature): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel", header: "IFSelect_SelectSignature.hxx".}
type
  IFSelect_SelectSignaturebase_type* = IFSelect_SelectExtract

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectSignature::get_type_name(@)",
                              header: "IFSelect_SelectSignature.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectSignature::get_type_descriptor(@)",
    header: "IFSelect_SelectSignature.hxx".}
proc DynamicType*(this: IFSelect_SelectSignature): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectSignature.hxx".}
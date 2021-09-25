##  Created on: 1997-03-04
##  Created by: Robert COUBLANC
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

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of AIS_SignatureFilter"
discard "forward decl of AIS_SignatureFilter"
type
  HandleAIS_SignatureFilter* = Handle[AIS_SignatureFilter]

## ! Selects Interactive Objects through their signatures
## ! and types. The signature provides an
## ! additional   characterization of an object's type, and
## ! takes the form of an index. The filter questions each
## ! Interactive Object in local context to determine
## ! whether it has an non-null owner, and if so, whether
## ! it has the desired signature. If the object returns true
## ! in each case, it is kept. If not, it is rejected.
## ! By default, the   interactive object has a None   type
## ! and a signature of 0. If you want to give a particular
## ! type and signature to your Interactive Object, you
## ! must redefine two virtual methods:   Type and Signature.
## ! This filter is only used in an open local contexts.
## ! In the Collector viewer, you can only locate
## ! Interactive Objects which answer positively to the
## ! positioned filters when a local context is open.
## ! Warning
## ! Some signatures have already been used by standard
## ! objects delivered in AIS. These include:
## ! -   signature 0 - Shape
## ! -   signature 1 - Point
## ! -   signature 2 - Axis
## ! -   signature 3 - Trihedron
## ! -   signature 4 - PlaneTrihedron
## ! -   signature 5 - Line
## ! -   signature 6 - Circle
## ! -   signature 7 - Plane

type
  AIS_SignatureFilter* {.importcpp: "AIS_SignatureFilter",
                        header: "AIS_SignatureFilter.hxx", bycopy.} = object of AIS_TypeFilter ##
                                                                                        ## !
                                                                                        ## Initializes
                                                                                        ## the
                                                                                        ## signature
                                                                                        ## filter,
                                                                                        ## adding
                                                                                        ## the
                                                                                        ## signature
                                                                                        ##
                                                                                        ## !
                                                                                        ## specification,
                                                                                        ## aGivenSignature,
                                                                                        ## to
                                                                                        ## that
                                                                                        ## for
                                                                                        ## type,
                                                                                        ##
                                                                                        ## !
                                                                                        ## aGivenKind,
                                                                                        ## in
                                                                                        ## AIS_TypeFilter.


proc constructAIS_SignatureFilter*(aGivenKind: AIS_KindOfInteractive;
                                  aGivenSignature: int): AIS_SignatureFilter {.
    constructor, importcpp: "AIS_SignatureFilter(@)",
    header: "AIS_SignatureFilter.hxx".}
proc isOk*(this: AIS_SignatureFilter; anobj: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, importcpp: "IsOk", header: "AIS_SignatureFilter.hxx".}
type
  AIS_SignatureFilterbaseType* = AIS_TypeFilter

proc getTypeName*(): cstring {.importcpp: "AIS_SignatureFilter::get_type_name(@)",
                            header: "AIS_SignatureFilter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_SignatureFilter::get_type_descriptor(@)",
    header: "AIS_SignatureFilter.hxx".}
proc dynamicType*(this: AIS_SignatureFilter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_SignatureFilter.hxx".}

##  Created on: 1994-06-02
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../IFSelect/IFSelect_Transformer

discard "forward decl of Interface_CopyControl"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SplineToBSpline"
discard "forward decl of IGESSelect_SplineToBSpline"
type
  Handle_IGESSelect_SplineToBSpline* = handle[IGESSelect_SplineToBSpline]

## ! This type of Transformer allows to convert Spline Curves (IGES
## ! type 112) and Surfaces (IGES Type 126) to BSpline Curves (IGES
## ! type 114) and Surfac (IGES Type 128). All other entities are
## ! rebuilt as identical but on the basis of this conversion.
## !
## ! It also gives an option to, either convert as such (i.e. each
## ! starting part of the spline becomes a segment of the bspline,
## ! with continuity C0 between segments), or try to increase
## ! continuity as far as possible to C1 or to C2.
## !
## ! It does nothing if the starting model contains no Spline
## ! Curve (IGES Type 112) or Surface (IGES Type 126). Else,
## ! converting and rebuilding implies copying of entities.

type
  IGESSelect_SplineToBSpline* {.importcpp: "IGESSelect_SplineToBSpline",
                               header: "IGESSelect_SplineToBSpline.hxx", bycopy.} = object of IFSelect_Transformer ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## a
                                                                                                            ## Transformer
                                                                                                            ## SplineToBSpline.
                                                                                                            ## If
                                                                                                            ## <tryC2>
                                                                                                            ## is
                                                                                                            ## True,
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## it
                                                                                                            ## will
                                                                                                            ## in
                                                                                                            ## addition
                                                                                                            ## try
                                                                                                            ## to
                                                                                                            ## upgrade
                                                                                                            ## continuity
                                                                                                            ## up
                                                                                                            ## to
                                                                                                            ## C2.


proc constructIGESSelect_SplineToBSpline*(tryC2: Standard_Boolean): IGESSelect_SplineToBSpline {.
    constructor, importcpp: "IGESSelect_SplineToBSpline(@)",
    header: "IGESSelect_SplineToBSpline.hxx".}
proc OptionTryC2*(this: IGESSelect_SplineToBSpline): Standard_Boolean {.
    noSideEffect, importcpp: "OptionTryC2",
    header: "IGESSelect_SplineToBSpline.hxx".}
proc Perform*(this: var IGESSelect_SplineToBSpline; G: Interface_Graph;
             protocol: handle[Interface_Protocol];
             checks: var Interface_CheckIterator;
             newmod: var handle[Interface_InterfaceModel]): Standard_Boolean {.
    importcpp: "Perform", header: "IGESSelect_SplineToBSpline.hxx".}
proc Updated*(this: IGESSelect_SplineToBSpline;
             entfrom: handle[Standard_Transient];
             entto: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "Updated", header: "IGESSelect_SplineToBSpline.hxx".}
proc Label*(this: IGESSelect_SplineToBSpline): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_SplineToBSpline.hxx".}
type
  IGESSelect_SplineToBSplinebase_type* = IFSelect_Transformer

proc get_type_name*(): cstring {.importcpp: "IGESSelect_SplineToBSpline::get_type_name(@)",
                              header: "IGESSelect_SplineToBSpline.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_SplineToBSpline::get_type_descriptor(@)",
    header: "IGESSelect_SplineToBSpline.hxx".}
proc DynamicType*(this: IGESSelect_SplineToBSpline): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SplineToBSpline.hxx".}
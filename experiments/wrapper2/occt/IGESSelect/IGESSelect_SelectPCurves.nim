##  Created on: 1999-02-26
##  Created by: Christian CAILLET
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SelectPCurves"
discard "forward decl of IGESSelect_SelectPCurves"
type
  HandleIGESSelectSelectPCurves* = Handle[IGESSelectSelectPCurves]

## ! This Selection returns the pcurves which lie on a face
## ! In two modes : global (i.e. a CompositeCurve is not explored)
## ! or basic (all the basic curves are listed)

type
  IGESSelectSelectPCurves* {.importcpp: "IGESSelect_SelectPCurves",
                            header: "IGESSelect_SelectPCurves.hxx", bycopy.} = object of IFSelectSelectExplore ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## SelectPCurves
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## basic
                                                                                                        ## True
                                                                                                        ## :
                                                                                                        ## lists
                                                                                                        ## all
                                                                                                        ## the
                                                                                                        ## components
                                                                                                        ## of
                                                                                                        ## pcurves
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## basic
                                                                                                        ## False
                                                                                                        ## :
                                                                                                        ## lists
                                                                                                        ## the
                                                                                                        ## uppest
                                                                                                        ## level
                                                                                                        ## definitions
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## (i.e.
                                                                                                        ## stops
                                                                                                        ## at
                                                                                                        ## CompositeCurve)


proc constructIGESSelectSelectPCurves*(basic: bool): IGESSelectSelectPCurves {.
    constructor, importcpp: "IGESSelect_SelectPCurves(@)",
    header: "IGESSelect_SelectPCurves.hxx".}
proc explore*(this: IGESSelectSelectPCurves; level: int;
             ent: Handle[StandardTransient]; g: InterfaceGraph;
             explored: var InterfaceEntityIterator): bool {.noSideEffect,
    importcpp: "Explore", header: "IGESSelect_SelectPCurves.hxx".}
proc exploreLabel*(this: IGESSelectSelectPCurves): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExploreLabel", header: "IGESSelect_SelectPCurves.hxx".}
type
  IGESSelectSelectPCurvesbaseType* = IFSelectSelectExplore

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SelectPCurves::get_type_name(@)",
                            header: "IGESSelect_SelectPCurves.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SelectPCurves::get_type_descriptor(@)",
    header: "IGESSelect_SelectPCurves.hxx".}
proc dynamicType*(this: IGESSelectSelectPCurves): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_SelectPCurves.hxx".}

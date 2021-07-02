##  Created on: 1998-04-02
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IGESSelect_SignLevelNumber"
discard "forward decl of IGESSelect_SignLevelNumber"
type
  HandleIGESSelectSignLevelNumber* = Handle[IGESSelectSignLevelNumber]

## ! Gives D.E. Level Number under two possible forms :
## ! * for counter : "LEVEL nnnnnnn", " NO LEVEL", " LEVEL LIST"
## ! * for selection : "/nnn/", "/0/", "/1/2/nnn/"
## !
## ! For matching, giving /nn/ gets any entity attached to level nn
## ! whatever simple or in a level list

type
  IGESSelectSignLevelNumber* {.importcpp: "IGESSelect_SignLevelNumber",
                              header: "IGESSelect_SignLevelNumber.hxx", bycopy.} = object of IFSelectSignature ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## SignLevelNumber
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## <countmode>
                                                                                                        ## True
                                                                                                        ## :
                                                                                                        ## values
                                                                                                        ## are
                                                                                                        ## naturally
                                                                                                        ## displayed
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## <countmode>
                                                                                                        ## False:
                                                                                                        ## values
                                                                                                        ## are
                                                                                                        ## separated
                                                                                                        ## by
                                                                                                        ## slashes
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## in
                                                                                                        ## order
                                                                                                        ## to
                                                                                                        ## allow
                                                                                                        ## selection
                                                                                                        ## by
                                                                                                        ## signature
                                                                                                        ## by
                                                                                                        ## Draw
                                                                                                        ## or
                                                                                                        ## C++


proc constructIGESSelectSignLevelNumber*(countmode: StandardBoolean): IGESSelectSignLevelNumber {.
    constructor, importcpp: "IGESSelect_SignLevelNumber(@)",
    header: "IGESSelect_SignLevelNumber.hxx".}
proc value*(this: IGESSelectSignLevelNumber; ent: Handle[StandardTransient];
           model: Handle[InterfaceInterfaceModel]): StandardCString {.noSideEffect,
    importcpp: "Value", header: "IGESSelect_SignLevelNumber.hxx".}
type
  IGESSelectSignLevelNumberbaseType* = IFSelectSignature

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SignLevelNumber::get_type_name(@)",
                            header: "IGESSelect_SignLevelNumber.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SignLevelNumber::get_type_descriptor(@)",
    header: "IGESSelect_SignLevelNumber.hxx".}
proc dynamicType*(this: IGESSelectSignLevelNumber): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SignLevelNumber.hxx".}


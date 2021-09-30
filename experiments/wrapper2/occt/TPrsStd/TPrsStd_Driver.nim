##  Created on: 1997-08-01
##  Created by: SMO
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

discard "forward decl of TDF_Label"
discard "forward decl of AIS_InteractiveObject"
discard "forward decl of TPrsStd_Driver"
discard "forward decl of TPrsStd_Driver"
type
  HandleC1C1* = Handle[TPrsStdDriver]

## ! Driver for AIS
## ! ==============
## ! An abstract class, which - in classes inheriting
## ! from it - allows you to update an
## ! AIS_InteractiveObject or create one if one does
## ! not already exist.
## ! For both creation and update, the interactive
## ! object is filled with information contained in
## ! attributes. These attributes are those found on
## ! the label given as an argument in the method Update.
## ! true is returned if the interactive object was modified by the update.
## ! This class  provide  an algorithm  to  Build with its  default
## ! values (if Null) or Update (if !Null) an AIS_InteractiveObject
## ! .   Resources are found  in  attributes associated to  a given
## ! label.

type
  TPrsStdDriver* {.importcpp: "TPrsStd_Driver", header: "TPrsStd_Driver.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Updates
                                                                                                           ## the
                                                                                                           ## interactive
                                                                                                           ## object
                                                                                                           ## ais
                                                                                                           ## with
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## information
                                                                                                           ## found
                                                                                                           ## on
                                                                                                           ## the
                                                                                                           ## attributes
                                                                                                           ## associated
                                                                                                           ## with
                                                                                                           ## the
                                                                                                           ## label
                                                                                                           ## L.


proc update*(this: var TPrsStdDriver; L: TDF_Label;
            ais: var Handle[AIS_InteractiveObject]): StandardBoolean {.
    importcpp: "Update", header: "TPrsStd_Driver.hxx".}
type
  TPrsStdDriverbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TPrsStd_Driver::get_type_name(@)",
                            header: "TPrsStd_Driver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TPrsStd_Driver::get_type_descriptor(@)",
    header: "TPrsStd_Driver.hxx".}
proc dynamicType*(this: TPrsStdDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TPrsStd_Driver.hxx".}
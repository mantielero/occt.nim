##  Created by: DAUTRY Philippe
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
##       	-------------------------
##  Version:	0.0
## Version	Date		Purpose
## 		0.0	Feb 16 1998	Creation

##  This class provides a way to iterates on the
##  up-to-date (current) valid attributes of a label.
##
##  This class should not be used for standard attributes workflow.
##  Application allways knows what to search at particular label.
##  So, use IsAttribute and FindAttibute methods of
##  TDF_Label to check and get attributes in usual way.
##  This class may be used for processing of content of labels
##  in generic way, like copy-tool, specific save/restore algorithms,
##  etc.
##
##  Even a forgotten attribute may be found if this
##  option is set. To use this possibility, look at
##  the constructor.

type
  TDF_AttributeIterator* {.importcpp: "TDF_AttributeIterator",
                          header: "TDF_AttributeIterator.hxx", bycopy.} = object ##  Methods PUBLIC
                                                                            ##
                                                                            ##  Methods PROTECTED
                                                                            ##
                                                                            ##  Fields PROTECTED
                                                                            ##
                                                                            ##  Methods PRIVATE
                                                                            ##


proc constructTDF_AttributeIterator*(): TDF_AttributeIterator {.constructor,
    importcpp: "TDF_AttributeIterator(@)", header: "TDF_AttributeIterator.hxx".}
proc constructTDF_AttributeIterator*(aLabel: TDF_Label;
                                    withoutForgotten: bool = true): TDF_AttributeIterator {.
    constructor, importcpp: "TDF_AttributeIterator(@)",
    header: "TDF_AttributeIterator.hxx".}
proc constructTDF_AttributeIterator*(aLabelNode: TDF_LabelNodePtr;
                                    withoutForgotten: bool = true): TDF_AttributeIterator {.
    constructor, importcpp: "TDF_AttributeIterator(@)",
    header: "TDF_AttributeIterator.hxx".}
proc initialize*(this: var TDF_AttributeIterator; aLabel: TDF_Label;
                withoutForgotten: bool = true) {.importcpp: "Initialize",
    header: "TDF_AttributeIterator.hxx".}
proc more*(this: TDF_AttributeIterator): bool {.noSideEffect, importcpp: "More",
    header: "TDF_AttributeIterator.hxx".}
proc next*(this: var TDF_AttributeIterator) {.importcpp: "Next",
    header: "TDF_AttributeIterator.hxx".}
proc value*(this: TDF_AttributeIterator): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "Value", header: "TDF_AttributeIterator.hxx".}
proc ptrValue*(this: TDF_AttributeIterator): ptr TDF_Attribute {.noSideEffect,
    importcpp: "PtrValue", header: "TDF_AttributeIterator.hxx".}
##  other inline functions and methods (like "C++: function call" methods)
##

proc more*(this: TDF_AttributeIterator): bool {.noSideEffect, importcpp: "More",
    header: "TDF_AttributeIterator.hxx".}
proc value*(this: TDF_AttributeIterator): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "Value", header: "TDF_AttributeIterator.hxx".}

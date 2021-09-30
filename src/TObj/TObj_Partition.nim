##  Created on: 2004-11-23
##  Created by: Pavel TELKOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
##  The original implementation Copyright: (C) RINA S.p.A

## *
##  This class privides tool handling one of partitions (the set of
##  homogenious elements) in the OCAF based model`s data structure
##

type
  TObjPartition* {.importcpp: "TObj_Partition", header: "TObj_Partition.hxx", bycopy.} = object of TObjObject ## *
                                                                                                    ##  Constructor
                                                                                                    ##
                                                                                                    ## ! Constructor is protected;
                                                                                                    ## ! static methods are used for creation of this type of objects
                                                                                                    ## *
                                                                                                    ##  Method for create partition
                                                                                                    ##
                                                                                                    ## ! Creates a new partition on given label.
                                                                                                    ## *
                                                                                                    ##  Methods hanling name of the object
                                                                                                    ##
                                                                                                    ## ! Sets name of the object. partition does not check unique of own name
                                                                                                    ## *
                                                                                                    ##  Method for updating object afrer restoring
                                                                                                    ##
                                                                                                    ## ! Preforms updating the links and dependances of the object which are not
                                                                                                    ## ! stored in persistence. Does not register the partition name
                                                                                                    ## *
                                                                                                    ##  Methods handling of the objects in partition
                                                                                                    ##
                                                                                                    ## ! Creates and Returns label for new object in partition.
                                                                                                    ## *
                                                                                                    ##  Methods to define partition by object
                                                                                                    ##
                                                                                                    ## ! Returns the partition in which object is stored. Null partition
                                                                                                    ## ! returned if not found
                                                                                                    ## *
                                                                                                    ##  Methods for updating the object
                                                                                                    ##
                                                                                                    ## ! Does nothing in the partition.
                                                                                                    ## *
                                                                                                    ##  protected redefined methods
                                                                                                    ##
                                                                                                    ## ! Coping the data of me to Target object.
                                                                                                    ## ! return Standard_False is Target object is different type
                                                                                                    ## *
                                                                                                    ##  fields
                                                                                                    ##
                                                                                                    ## ! prefix for naming of objects in the partition
                                                                                                    ## ! Persistence of TObj object


proc create*(theLabel: TDF_Label; theSetName: bool = true): Handle[TObjPartition] {.
    importcpp: "TObj_Partition::Create(@)", header: "TObj_Partition.hxx".}
proc setName*(this: TObjPartition; theName: Handle[TCollectionHExtendedString]): bool {.
    noSideEffect, importcpp: "SetName", header: "TObj_Partition.hxx".}
proc afterRetrieval*(this: var TObjPartition) {.importcpp: "AfterRetrieval",
    header: "TObj_Partition.hxx".}
proc newLabel*(this: TObjPartition): TDF_Label {.noSideEffect, importcpp: "NewLabel",
    header: "TObj_Partition.hxx".}
proc setNamePrefix*(this: var TObjPartition;
                   thePrefix: Handle[TCollectionHExtendedString]) {.
    importcpp: "SetNamePrefix", header: "TObj_Partition.hxx".}
proc getNamePrefix*(this: TObjPartition): Handle[TCollectionHExtendedString] {.
    noSideEffect, importcpp: "GetNamePrefix", header: "TObj_Partition.hxx".}
proc getNewName*(this: var TObjPartition; theIsToChangeCount: bool = true): Handle[
    TCollectionHExtendedString] {.importcpp: "GetNewName",
                                 header: "TObj_Partition.hxx".}
proc getLastIndex*(this: TObjPartition): int {.noSideEffect,
    importcpp: "GetLastIndex", header: "TObj_Partition.hxx".}
proc setLastIndex*(this: var TObjPartition; theIndex: int) {.
    importcpp: "SetLastIndex", header: "TObj_Partition.hxx".}
proc getPartition*(theObject: Handle[TObjObject]): Handle[TObjPartition] {.
    importcpp: "TObj_Partition::GetPartition(@)", header: "TObj_Partition.hxx".}
proc update*(this: var TObjPartition): bool {.importcpp: "Update",
    header: "TObj_Partition.hxx".}
## !!!Ignored construct:  protected : ! Persistence of TObj object DECLARE_TOBJOCAF_PERSISTENCE ( TObj_Partition , TObj_Object ) public : ! CASCADE RTTI public : typedef TObj_Object base_type ;
## Error: token expected: ) but got: ,!!!

## ! Define handle class for TObj_Partition

discard "forward decl of TObj_Partition"
type
  HandleTObjPartition* = Handle[TObjPartition]

# when defined(_MSC_VER):
#   discard















































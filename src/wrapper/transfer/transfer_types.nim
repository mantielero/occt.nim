import ../ncollection/ncollection_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types
import "../interface/interface_types"
type
  TransferStatusExec* {.size: sizeof(cint), importcpp: "Transfer_StatusExec",
                       header: "Transfer_StatusExec.hxx".} = enum
    TransferStatusInitial, TransferStatusRun, TransferStatusDone,
    TransferStatusError, TransferStatusLoop

  TransferStatusResult* {.size: sizeof(cint), importcpp: "Transfer_StatusResult",
                         header: "Transfer_StatusResult.hxx".} = enum
    TransferStatusVoid, TransferStatusDefined, TransferStatusUsed

  TransferDataInfo* {.importcpp: "Transfer_DataInfo",
                     header: "Transfer_DataInfo.hxx", bycopy.} = object 

  TransferTransferInput* {.importcpp: "Transfer_TransferInput",
                          header: "Transfer_TransferInput.hxx", bycopy.} = object 

  TransferTransferIterator* {.importcpp: "Transfer_TransferIterator",
                             header: "Transfer_TransferIterator.hxx", bycopy.} = object of RootObj 

  TransferTransferOutput* {.importcpp: "Transfer_TransferOutput",
                           header: "Transfer_TransferOutput.hxx", bycopy.} = object 

  TransferFindHasher* {.importcpp: "Transfer_FindHasher",
                       header: "Transfer_FindHasher.hxx", bycopy.} = object 

  TransferUndefMode* {.size: sizeof(cint), importcpp: "Transfer_UndefMode",
                      header: "Transfer_UndefMode.hxx".} = enum
    TransferUndefIgnore, TransferUndefFailure, TransferUndefContent,
    TransferUndefUser

  TransferSequenceOfBinder* = NCollectionSequence[Handle[TransferBinder]]

  TransferSequenceOfFinder* = NCollectionSequence[Handle[TransferFinder]]

  TransferTransferMapOfProcessForFinder* = NCollectionIndexedDataMap[
      Handle[TransferFinder], Handle[TransferBinder], TransferFindHasher]

  TransferTransferMapOfProcessForTransient* = NCollectionIndexedDataMap[
      Handle[StandardTransient], Handle[TransferBinder], TColStdMapTransientHasher]

  TransferIteratorOfProcessForFinder* {.importcpp: "Transfer_IteratorOfProcessForFinder", header: "Transfer_IteratorOfProcessForFinder.hxx",
                                       bycopy.} = object of TransferTransferIterator 

  TransferIteratorOfProcessForTransient* {.
      importcpp: "Transfer_IteratorOfProcessForTransient",
      header: "Transfer_IteratorOfProcessForTransient.hxx", bycopy.} = object of TransferTransferIterator 

  TransferActorOfProcessForFinder* {.importcpp: "Transfer_ActorOfProcessForFinder", header: "Transfer_ActorOfProcessForFinder.hxx",
                                    bycopy.} = object of StandardTransient

  HandleTransferActorOfProcessForFinder* = Handle[TransferActorOfProcessForFinder]

  TransferActorOfFinderProcess* {.importcpp: "Transfer_ActorOfFinderProcess",
                                 header: "Transfer_ActorOfFinderProcess.hxx",
                                 bycopy.} = object of TransferActorOfProcessForFinder

  HandleTransferActorOfFinderProcess* = Handle[TransferActorOfFinderProcess]

  TransferActorOfProcessForTransient* {.importcpp: "Transfer_ActorOfProcessForTransient", header: "Transfer_ActorOfProcessForTransient.hxx",
                                       bycopy.} = object of StandardTransient

  HandleTransferActorOfProcessForTransient* = Handle[
      TransferActorOfProcessForTransient]

  TransferActorOfTransientProcess* {.importcpp: "Transfer_ActorOfTransientProcess", header: "Transfer_ActorOfTransientProcess.hxx",
                                    bycopy.} = object of TransferActorOfProcessForTransient

  TransferActorDispatch* {.importcpp: "Transfer_ActorDispatch",
                          header: "Transfer_ActorDispatch.hxx", bycopy.} = object of TransferActorOfTransientProcess 

  HandleTransferActorDispatch* = Handle[TransferActorDispatch]

  HandleTransferActorOfTransientProcess* = Handle[TransferActorOfTransientProcess]

  TransferBinder* {.importcpp: "Transfer_Binder", header: "Transfer_Binder.hxx",
                   bycopy.} = object of StandardTransient 

  HandleTransferBinder* = Handle[TransferBinder]

  TransferDispatchControl* {.importcpp: "Transfer_DispatchControl",
                            header: "Transfer_DispatchControl.hxx", bycopy.} = object of InterfaceCopyControl 

  HandleTransferDispatchControl* = Handle[TransferDispatchControl]

  TransferFinder* {.importcpp: "Transfer_Finder", header: "Transfer_Finder.hxx",
                   bycopy.} = object of StandardTransient 

  HandleTransferFinder* = Handle[TransferFinder]

  TransferHSequenceOfBinder* {.importcpp: "Transfer_HSequenceOfBinder",
                              header: "Transfer_HSequenceOfBinder.hxx", bycopy.} = object of TransferSequenceOfBinder

  TransferHSequenceOfFinder* {.importcpp: "Transfer_HSequenceOfFinder",
                              header: "Transfer_HSequenceOfFinder.hxx", bycopy.} = object of TransferSequenceOfFinder

  TransferMapContainer* {.importcpp: "Transfer_MapContainer",
                         header: "Transfer_MapContainer.hxx", bycopy.} = object of StandardTransient

  HandleTransferMapContainer* = Handle[TransferMapContainer]

  TransferMultipleBinder* {.importcpp: "Transfer_MultipleBinder",
                           header: "Transfer_MultipleBinder.hxx", bycopy.} = object of TransferBinder 

  HandleTransferMultipleBinder* = Handle[TransferMultipleBinder]

  TransferProcessForFinder* {.importcpp: "Transfer_ProcessForFinder",
                             header: "Transfer_ProcessForFinder.hxx", bycopy.} = object of StandardTransient 

  HandleTransferProcessForFinder* = Handle[TransferProcessForFinder]

  TransferFinderProcess* {.importcpp: "Transfer_FinderProcess",
                          header: "Transfer_FinderProcess.hxx", bycopy.} = object of TransferProcessForFinder 

  HandleTransferFinderProcess* = Handle[TransferFinderProcess]

  TransferProcessForTransient* {.importcpp: "Transfer_ProcessForTransient",
                                header: "Transfer_ProcessForTransient.hxx", bycopy.} = object of StandardTransient 

  HandleTransferProcessForTransient* = Handle[TransferProcessForTransient]

  TransferResultFromModel* {.importcpp: "Transfer_ResultFromModel",
                            header: "Transfer_ResultFromModel.hxx", bycopy.} = object of StandardTransient 

  HandleTransferResultFromModel* = Handle[TransferResultFromModel]

  TransferResultFromTransient* {.importcpp: "Transfer_ResultFromTransient",
                                header: "Transfer_ResultFromTransient.hxx", bycopy.} = object of StandardTransient 

  HandleTransferResultFromTransient* = Handle[TransferResultFromTransient]

  TransferSimpleBinderOfTransient* {.importcpp: "Transfer_SimpleBinderOfTransient", header: "Transfer_SimpleBinderOfTransient.hxx",
                                    bycopy.} = object of TransferBinder 

  TransferBinderOfTransientInteger* {.importcpp: "Transfer_BinderOfTransientInteger", header: "Transfer_BinderOfTransientInteger.hxx",
                                     bycopy.} = object of TransferSimpleBinderOfTransient 

  HandleTransferBinderOfTransientInteger* = Handle[
      TransferBinderOfTransientInteger]

  HandleTransferSimpleBinderOfTransient* = Handle[TransferSimpleBinderOfTransient]

  TransferTransferDispatch* {.importcpp: "Transfer_TransferDispatch",
                             header: "Transfer_TransferDispatch.hxx", bycopy.} = object of InterfaceCopyTool 

  TransferTransientListBinder* {.importcpp: "Transfer_TransientListBinder",
                                header: "Transfer_TransientListBinder.hxx", bycopy.} = object of TransferBinder

  HandleTransferTransientListBinder* = Handle[TransferTransientListBinder]

  TransferTransientMapper* {.importcpp: "Transfer_TransientMapper",
                            header: "Transfer_TransientMapper.hxx", bycopy.} = object of TransferFinder 

  HandleTransferTransientMapper* = Handle[TransferTransientMapper]

  TransferTransientProcess* {.importcpp: "Transfer_TransientProcess",
                             header: "Transfer_TransientProcess.hxx", bycopy.} = object of TransferProcessForTransient 

  HandleTransferTransientProcess* = Handle[TransferTransientProcess]

  TransferVoidBinder* {.importcpp: "Transfer_VoidBinder",
                       header: "Transfer_VoidBinder.hxx", bycopy.} = object of TransferBinder 

  HandleTransferVoidBinder* = Handle[TransferVoidBinder]


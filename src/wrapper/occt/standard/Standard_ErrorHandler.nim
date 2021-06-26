# /usr/include/opencascade/Standard_ErrorHandler.hxx --> occt/standard/Standard_ErrorHandler.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandarderrorhandler = "/usr/include/opencascade/Standard_ErrorHandler.hxx"
discard "forward decl of Standard_Failure"
type
  StandardErrorHandler* {.importcpp: "Standard_ErrorHandler",
                         header: headerStandarderrorhandler, bycopy.} = object


proc `new`*(this: var StandardErrorHandler; theSize: csize_t): pointer {.
    importcpp: "Standard_ErrorHandler::operator new",
    header: headerStandarderrorhandler.}
proc `delete`*(this: var StandardErrorHandler; theAddress: pointer) {.
    importcpp: "Standard_ErrorHandler::operator delete",
    header: headerStandarderrorhandler.}
proc `new[]`*(this: var StandardErrorHandler; theSize: csize_t): pointer {.
    importcpp: "Standard_ErrorHandler::operator new[]",
    header: headerStandarderrorhandler.}
proc `delete[]`*(this: var StandardErrorHandler; theAddress: pointer) {.
    importcpp: "Standard_ErrorHandler::operator delete[]",
    header: headerStandarderrorhandler.}
proc `new`*(this: var StandardErrorHandler; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Standard_ErrorHandler::operator new",
    header: headerStandarderrorhandler.}
proc `delete`*(this: var StandardErrorHandler; a2: pointer; a3: pointer) {.
    importcpp: "Standard_ErrorHandler::operator delete",
    header: headerStandarderrorhandler.}
proc constructStandardErrorHandler*(): StandardErrorHandler {.constructor,
    importcpp: "Standard_ErrorHandler(@)", header: headerStandarderrorhandler.}
proc destroy*(this: var StandardErrorHandler) {.importcpp: "Destroy",
    header: headerStandarderrorhandler.}
proc destroyStandardErrorHandler*(this: var StandardErrorHandler) {.
    importcpp: "#.~Standard_ErrorHandler()", header: headerStandarderrorhandler.}
proc unlink*(this: var StandardErrorHandler) {.importcpp: "Unlink",
    header: headerStandarderrorhandler.}
proc catches*(this: var StandardErrorHandler; aType: Handle[StandardType]): StandardBoolean {.
    importcpp: "Catches", header: headerStandarderrorhandler.}
proc label*(this: var StandardErrorHandler): var StandardJmpBuf {.importcpp: "Label",
    header: headerStandarderrorhandler.}
proc error*(this: StandardErrorHandler): Handle[StandardFailure] {.noSideEffect,
    importcpp: "Error", header: headerStandarderrorhandler.}
proc lastCaughtError*(): Handle[StandardFailure] {.
    importcpp: "Standard_ErrorHandler::LastCaughtError(@)",
    header: headerStandarderrorhandler.}
proc isInTryBlock*(): StandardBoolean {.importcpp: "Standard_ErrorHandler::IsInTryBlock(@)",
                                     header: headerStandarderrorhandler.}
type
  StandardErrorHandlerCallback* {.importcpp: "Standard_ErrorHandler::Callback",
                                 header: headerStandarderrorhandler, bycopy.} = object


proc `new`*(this: var StandardErrorHandlerCallback; theSize: csize_t): pointer {.
    importcpp: "Callback::operator new", header: headerStandarderrorhandler.}
proc `delete`*(this: var StandardErrorHandlerCallback; theAddress: pointer) {.
    importcpp: "Callback::operator delete", header: headerStandarderrorhandler.}
proc `new[]`*(this: var StandardErrorHandlerCallback; theSize: csize_t): pointer {.
    importcpp: "Callback::operator new[]", header: headerStandarderrorhandler.}
proc `delete[]`*(this: var StandardErrorHandlerCallback; theAddress: pointer) {.
    importcpp: "Callback::operator delete[]", header: headerStandarderrorhandler.}
proc `new`*(this: var StandardErrorHandlerCallback; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Callback::operator new", header: headerStandarderrorhandler.}
proc `delete`*(this: var StandardErrorHandlerCallback; a2: pointer; a3: pointer) {.
    importcpp: "Callback::operator delete", header: headerStandarderrorhandler.}
proc registerCallback*(this: var StandardErrorHandlerCallback) {.
    importcpp: "RegisterCallback", header: headerStandarderrorhandler.}
proc unregisterCallback*(this: var StandardErrorHandlerCallback) {.
    importcpp: "UnregisterCallback", header: headerStandarderrorhandler.}
proc destroyStandardErrorHandlerCallback*(this: var StandardErrorHandlerCallback) {.
    importcpp: "#.~Callback()", header: headerStandarderrorhandler.}
proc destroyCallback*(this: var StandardErrorHandlerCallback) {.
    importcpp: "DestroyCallback", header: headerStandarderrorhandler.}
## !!!Ignored construct:  inline Standard_ErrorHandler :: Callback :: Callback ( ) : myHandler ( 0 ) , myPrev ( 0 ) , myNext ( 0 ) { } inline Standard_ErrorHandler :: Callback :: ~ Callback ( ) { ( void ) myHandler ; ( void ) myPrev ; } inline void Standard_ErrorHandler :: Callback :: RegisterCallback ( ) { } inline void Standard_ErrorHandler :: Callback :: UnregisterCallback ( ) { } typedef Standard_ErrorHandler :: Callback Standard_ErrorHandlerCallback ;
## Error: identifier expected, but got: )!!!

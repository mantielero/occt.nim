# /usr/include/opencascade/Standard_AbortiveTransaction.hxx --> occt/standard/Standard_AbortiveTransaction.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardabortivetransaction = "/usr/include/opencascade/Standard_AbortiveTransaction.hxx"
discard "forward decl of Standard_AbortiveTransaction"
discard "forward decl of Standard_AbortiveTransaction"
type
  HandleStandardAbortiveTransaction* = Handle[StandardAbortiveTransaction]
  StandardAbortiveTransaction* {.importcpp: "Standard_AbortiveTransaction",
                                header: headerStandardabortivetransaction, bycopy.} = object of StandardFailure


proc constructStandardAbortiveTransaction*(): StandardAbortiveTransaction {.
    constructor, importcpp: "Standard_AbortiveTransaction(@)",
    header: headerStandardabortivetransaction.}
proc constructStandardAbortiveTransaction*(theMessage: StandardCString): StandardAbortiveTransaction {.
    constructor, importcpp: "Standard_AbortiveTransaction(@)",
    header: headerStandardabortivetransaction.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_AbortiveTransaction::Raise(@)",
    header: headerStandardabortivetransaction.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_AbortiveTransaction::Raise(@)",
    header: headerStandardabortivetransaction.}
proc newInstance*(theMessage: StandardCString = ""): Handle[
    StandardAbortiveTransaction] {.importcpp: "Standard_AbortiveTransaction::NewInstance(@)",
                                  header: headerStandardabortivetransaction.}
type
  StandardAbortiveTransactionbaseType* = StandardFailure

proc getTypeName*(): cstring {.importcpp: "Standard_AbortiveTransaction::get_type_name(@)",
                            header: headerStandardabortivetransaction.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_AbortiveTransaction::get_type_descriptor(@)",
    header: headerStandardabortivetransaction.}
proc dynamicType*(this: StandardAbortiveTransaction): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: headerStandardabortivetransaction.}
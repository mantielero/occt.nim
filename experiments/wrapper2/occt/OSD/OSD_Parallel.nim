##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## ! @brief Simple tool for code parallelization.
## !
## ! OSD_Parallel class provides simple interface for parallel processing of
## ! tasks that can be formulated in terms of "for" or "foreach" loops.
## !
## ! To use this tool it is necessary to:
## ! - organize the data to be processed in a collection accessible by
## !   iteration (usually array or vector);
## ! - implement a functor class providing operator () accepting iterator
## !   (or index in array) that does the job;
## ! - call either For() or ForEach() providing begin and end iterators and
## !   a functor object.
## !
## ! Iterators should satisfy requirements of STL forward iterator.
## ! Functor
## !
## ! @code
## ! class Functor
## ! {
## ! public:
## !   void operator() ([proccesing instance]) const
## !   {
## !     //...
## !   }
## ! };
## ! @endcode
## !
## ! The operator () should be implemented in a thread-safe way so that
## ! the same functor object can process different data items in parallel threads.
## !
## ! Iteration by index (For) is expected to be more efficient than using iterators
## ! (ForEach).
## !
## ! Implementation uses TBB if OCCT is built with support of TBB; otherwise it
## ! uses ad-hoc parallelization tool. In general, if TBB is available, it is
## ! more efficient to use it directly instead of using OSD_Parallel.

type
  OSD_Parallel* {.importcpp: "OSD_Parallel", header: "OSD_Parallel.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Interface
                                                                                   ## class
                                                                                   ## defining
                                                                                   ## API
                                                                                   ## for
                                                                                   ## polymorphic
                                                                                   ## wrappers
                                                                                   ## over
                                                                                   ## iterators.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Intended
                                                                                   ## to
                                                                                   ## add
                                                                                   ## polymorphic
                                                                                   ## behaviour
                                                                                   ## to
                                                                                   ## For
                                                                                   ## and
                                                                                   ## ForEach
                                                                                   ## functionality
                                                                                   ##
                                                                                   ## !
                                                                                   ## for
                                                                                   ## arbitrary
                                                                                   ## objects
                                                                                   ## and
                                                                                   ## eliminate
                                                                                   ## dependency
                                                                                   ## on
                                                                                   ## template
                                                                                   ## parameters.
                                                                                   ##
                                                                                   ## Note:
                                                                                   ## UniversalIterator
                                                                                   ## and
                                                                                   ## FunctorInterface
                                                                                   ## are
                                                                                   ## made
                                                                                   ## protected
                                                                                   ## to
                                                                                   ## be
                                                                                   ##
                                                                                   ## accessible
                                                                                   ## from
                                                                                   ## specialization
                                                                                   ## using
                                                                                   ## threads
                                                                                   ## (non-TBB).
                                                                                   ##
                                                                                   ## !
                                                                                   ## Fixed-type
                                                                                   ## iterator,
                                                                                   ## implementing
                                                                                   ## STL
                                                                                   ## forward
                                                                                   ## iterator
                                                                                   ## interface,
                                                                                   ## used
                                                                                   ## for
                                                                                   ##
                                                                                   ## !
                                                                                   ## iteration
                                                                                   ## over
                                                                                   ## objects
                                                                                   ## subject
                                                                                   ## to
                                                                                   ## parallel
                                                                                   ## processing.
                                                                                   ##
                                                                                   ## !
                                                                                   ## It
                                                                                   ## stores
                                                                                   ## pointer
                                                                                   ## to
                                                                                   ## instance
                                                                                   ## of
                                                                                   ## polymorphic
                                                                                   ## iterator
                                                                                   ## inheriting
                                                                                   ## from
                                                                                   ##
                                                                                   ## !
                                                                                   ## IteratorInterface,
                                                                                   ## which
                                                                                   ## contains
                                                                                   ## actual
                                                                                   ## type-specific
                                                                                   ## iterator.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Wrapper
                                                                                   ## for
                                                                                   ## functors
                                                                                   ## manipulating
                                                                                   ## on
                                                                                   ## std
                                                                                   ## iterators.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Simple
                                                                                   ## primitive
                                                                                   ## for
                                                                                   ## parallelization
                                                                                   ## of
                                                                                   ## "foreach"
                                                                                   ## loops,
                                                                                   ## e.g.:
                                                                                   ##
                                                                                   ## !
                                                                                   ## @code
                                                                                   ##
                                                                                   ## !
                                                                                   ## for
                                                                                   ## (std::iterator
                                                                                   ## anIter
                                                                                   ## =
                                                                                   ## theBegin;
                                                                                   ## anIter
                                                                                   ## !=
                                                                                   ## theEnd;
                                                                                   ## ++anIter)
                                                                                   ## {}
                                                                                   ##
                                                                                   ## !
                                                                                   ## @endcode
                                                                                   ##
                                                                                   ## !
                                                                                   ## Implementation
                                                                                   ## of
                                                                                   ## framework-dependent
                                                                                   ## functionality
                                                                                   ## should
                                                                                   ## be
                                                                                   ## provided
                                                                                   ## by
                                                                                   ##
                                                                                   ## !
                                                                                   ## forEach_impl
                                                                                   ## function
                                                                                   ## defined
                                                                                   ## in
                                                                                   ## opencascade::parallel
                                                                                   ## namespace.
                                                                                   ##
                                                                                   ## !
                                                                                   ## @param
                                                                                   ## theBegin
                                                                                   ## the
                                                                                   ## first
                                                                                   ## index
                                                                                   ## (inclusive)
                                                                                   ##
                                                                                   ## !
                                                                                   ## @param
                                                                                   ## theEnd
                                                                                   ## the
                                                                                   ## last
                                                                                   ## index
                                                                                   ## (exclusive)
                                                                                   ##
                                                                                   ## !
                                                                                   ## @param
                                                                                   ## theFunctor
                                                                                   ## functor
                                                                                   ## providing
                                                                                   ## an
                                                                                   ## interface
                                                                                   ## "void
                                                                                   ## operator(InputIterator
                                                                                   ## theIter){}"
                                                                                   ##
                                                                                   ## !
                                                                                   ## performing
                                                                                   ## task
                                                                                   ## for
                                                                                   ## the
                                                                                   ## specified
                                                                                   ## iterator
                                                                                   ## position
                                                                                   ##
                                                                                   ## !
                                                                                   ## @param
                                                                                   ## theNbItems
                                                                                   ## number
                                                                                   ## of
                                                                                   ## items
                                                                                   ## passed
                                                                                   ## by
                                                                                   ## iterator,
                                                                                   ## -1
                                                                                   ## if
                                                                                   ## unknown
                                                                                   ##
                                                                                   ## !
                                                                                   ## @name
                                                                                   ## public
                                                                                   ## methods
                                                                                   ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## TRUE
                                                                                   ## if
                                                                                   ## OCCT
                                                                                   ## threads
                                                                                   ## should
                                                                                   ## be
                                                                                   ## used
                                                                                   ## instead
                                                                                   ## of
                                                                                   ## auxiliary
                                                                                   ## threads
                                                                                   ## library;
                                                                                   ##
                                                                                   ## !
                                                                                   ## default
                                                                                   ## value
                                                                                   ## is
                                                                                   ## FALSE
                                                                                   ## if
                                                                                   ## alternative
                                                                                   ## library
                                                                                   ## has
                                                                                   ## been
                                                                                   ## enabled
                                                                                   ## while
                                                                                   ## OCCT
                                                                                   ## building
                                                                                   ## and
                                                                                   ## TRUE
                                                                                   ## otherwise.


proc toUseOcctThreads*(): bool {.importcpp: "OSD_Parallel::ToUseOcctThreads(@)",
                              header: "OSD_Parallel.hxx".}
proc setUseOcctThreads*(theToUseOcct: bool) {.
    importcpp: "OSD_Parallel::SetUseOcctThreads(@)", header: "OSD_Parallel.hxx".}
proc nbLogicalProcessors*(): int {.importcpp: "OSD_Parallel::NbLogicalProcessors(@)",
                                header: "OSD_Parallel.hxx".}
proc forEach*[InputIterator; Functor](theBegin: InputIterator;
                                    theEnd: InputIterator; theFunctor: Functor;
                                    isForceSingleThreadExecution: bool = false;
                                    theNbItems: int = -1) {.
    importcpp: "OSD_Parallel::ForEach(@)", header: "OSD_Parallel.hxx".}
proc `for`*[Functor](theBegin: int; theEnd: int; theFunctor: Functor;
                    isForceSingleThreadExecution: bool = false) {.
    importcpp: "OSD_Parallel::For(@)", header: "OSD_Parallel.hxx".}

{.push header: "Standard_Mutex.hxx".}


# Constructors and methods
proc constructor_Sentry*(theMutex: var Standard_Mutex): Sentry {.constructor,importcpp: "Sentry(@)".}
  ## Constructor - initializes the sentry object by reference to a mutex
  ## (which must be initialized) and locks the mutex immediately

proc constructor_Sentry*(theMutex: Standard_Mutex *): Sentry {.constructor,importcpp: "Sentry(@)".}
  ## Constructor - initializes the sentry object by pointer to a mutex and
  ## locks the mutex if its pointer is not NULL

proc constructor_Sentry*(Sentry[]): Sentry {.constructor,importcpp: "Sentry(@)".}
  ## This method should not be called (prohibited).

proc constructor_Standard_Mutex*(): Standard_Mutex {.constructor,importcpp: "Standard_Mutex".}
  ## Constructor: creates a mutex object and initializes it. It is strongly
  ## recommended that mutexes were created as static objects whenever
  ## possible.

proc constructor_Standard_Mutex*(Standard_Mutex): Standard_Mutex {.constructor,importcpp: "Standard_Mutex(@)".}
  ## This method should not be called (prohibited).

proc Lock*(this: var Sentry)  {.importcpp: "Lock".}
  ## Lock the mutex

proc Unlock*(this: var Sentry)  {.importcpp: "Unlock".}
  ## Unlock the mutex

proc `=`*(this: var Sentry, Sentry[]): Sentry[]  {.importcpp: "`=`".}
  ## This method should not be called (prohibited).

proc Lock*(this: var Standard_Mutex)  {.importcpp: "Lock".}
  ## Method to lock the mutex; waits until the mutex is released by other
  ## threads, locks it and then returns

proc TryLock*(this: var Standard_Mutex): Standard_Boolean  {.importcpp: "TryLock".}
  ## Method to test the mutex; if the mutex is not hold by other thread,
  ## locks it and returns True; otherwise returns False without waiting
  ## mutex to be released.

proc Unlock*(this: var Standard_Mutex)  {.importcpp: "Unlock".}
  ## Method to unlock the mutex; releases it to other users

proc DestroyCallback*(this: var Standard_Mutex)  {.importcpp: "DestroyCallback".}
  ## Callback method to unlock the mutex if OCC exception or signal is
  ## raised

proc `=`*(this: var Standard_Mutex, Standard_Mutex): Standard_Mutex  {.importcpp: "`=`".}
  ## This method should not be called (prohibited).

proc Unlock*(this: var Standard_Mutex)  {.importcpp: "Unlock".}
  ## Method to unlock the mutex; releases it to other users

{.pop.} # header: "Standard_Mutex.hxx

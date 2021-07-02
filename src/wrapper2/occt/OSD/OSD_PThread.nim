## !!!Ignored construct:  typedef unsigned char __u_char ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned short int __u_short ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned int __u_int ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __u_long ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef signed char __int8_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned char __uint8_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef signed short int __int16_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned short int __uint16_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef signed int __int32_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned int __uint32_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef signed long int __int64_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __uint64_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef __int8_t __int_least8_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef __uint8_t __uint_least8_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef __int16_t __int_least16_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef __uint16_t __uint_least16_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef __int32_t __int_least32_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef __uint32_t __uint_least32_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef __int64_t __int_least64_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef __uint64_t __uint_least64_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __quad_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __u_quad_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __intmax_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __uintmax_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __dev_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned int __uid_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned int __gid_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __ino_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __ino64_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned int __mode_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __nlink_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __off_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __off64_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef int __pid_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef struct { int __val [ 2 ] ; } __fsid_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __clock_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __rlim_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __rlim64_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned int __id_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __time_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned int __useconds_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __suseconds_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __suseconds64_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef int __daddr_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef int __key_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef int __clockid_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef void * __timer_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __blksize_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __blkcnt_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __blkcnt64_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __fsblkcnt_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __fsblkcnt64_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __fsfilcnt_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __fsfilcnt64_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __fsword_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __ssize_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int __syscall_slong_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __syscall_ulong_t ;
## Error: identifier expected, but got: ;!!!

type
  LoffT* = Off64T
  CaddrT* = cstring
  IntptrT* = clong
  SocklenT* = cuint
  SigAtomicT* = cint

## !!!Ignored construct:  typedef long unsigned int size_t ;
## Error: identifier expected, but got: ;!!!

type
  TimeT* = TimeT
  Timespec* {.importcpp: "timespec", header: "OSD_PThread.hxx", bycopy.} = object
    tvSec* {.importc: "tv_sec".}: TimeT
    tvNsec* {.importc: "tv_nsec".}: SyscallSlongT

  PidT* = PidT
  SchedParam* {.importcpp: "sched_param", header: "OSD_PThread.hxx", bycopy.} = object
    schedPriority* {.importc: "sched_priority".}: cint


## !!!Ignored construct:  extern C { extern int clone ( int ( * __fn ) ( void * __arg ) , void * __child_stack , int __flags , void * __arg , ... ) noexcept ( true ) ; extern int unshare ( int __flags ) noexcept ( true ) ; extern int sched_getcpu ( void ) noexcept ( true ) ; extern int getcpu ( unsigned int * , unsigned int * ) noexcept ( true ) ; extern int setns ( int __fd , int __nstype ) noexcept ( true ) ; } # /usr/include/sched.h 2 3 4 [NewLine] # /usr/include/bits/cpu-set.h 1 3 4 [NewLine] # /usr/include/bits/cpu-set.h 3 4 [NewLine] typedef unsigned long int __cpu_mask ;
## Error: identifier expected, but got: {!!!

type
  CpuSetT* {.importcpp: "cpu_set_t", header: "OSD_PThread.hxx", bycopy.} = object
    bits* {.importc: "__bits".}: array[1024 div (8 * sizeof((cpuMask))), CpuMask]


## !!!Ignored construct:  extern C { extern int __sched_cpucount ( size_t __setsize , const cpu_set_t * __setp ) noexcept ( true ) ; extern cpu_set_t * __sched_cpualloc ( size_t __count ) noexcept ( true ) ; extern void __sched_cpufree ( cpu_set_t * __set ) noexcept ( true ) ; } # /usr/include/sched.h 2 3 4 [NewLine] extern C { extern int sched_setparam ( __pid_t __pid , const struct sched_param * __param ) noexcept ( true ) ; extern int sched_getparam ( __pid_t __pid , struct sched_param * __param ) noexcept ( true ) ; extern int sched_setscheduler ( __pid_t __pid , int __policy , const struct sched_param * __param ) noexcept ( true ) ; extern int sched_getscheduler ( __pid_t __pid ) noexcept ( true ) ; extern int sched_yield ( void ) noexcept ( true ) ; extern int sched_get_priority_max ( int __algorithm ) noexcept ( true ) ; extern int sched_get_priority_min ( int __algorithm ) noexcept ( true ) ; extern int sched_rr_get_interval ( __pid_t __pid , struct timespec * __t ) noexcept ( true ) ; # /usr/include/sched.h 3 4 [NewLine] extern int sched_setaffinity ( __pid_t __pid , size_t __cpusetsize , const cpu_set_t * __cpuset ) noexcept ( true ) ; extern int sched_getaffinity ( __pid_t __pid , size_t __cpusetsize , cpu_set_t * __cpuset ) noexcept ( true ) ; } # /usr/include/pthread.h 2 3 4 [NewLine] # /usr/include/time.h 1 3 4 [NewLine] # /usr/include/time.h 3 4 [NewLine] # /usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h 1 3 4 [NewLine] # /usr/include/time.h 2 3 4 [NewLine] # /usr/include/bits/time.h 1 3 4 [NewLine] # /usr/include/bits/time.h 3 4 [NewLine] # /usr/include/bits/timex.h 1 3 4 [NewLine] # /usr/include/bits/timex.h 3 4 [NewLine] # /usr/include/bits/types/struct_timeval.h 1 3 4 [NewLine] struct timeval { __time_t tv_sec ; __suseconds_t tv_usec ; } ;
## Error: identifier expected, but got: {!!!

type
  Timex* {.importcpp: "timex::timex", header: "OSD_PThread.hxx", bycopy.} = object
    modes* {.importc: "modes".}: cuint
    offset* {.importc: "offset".}: SyscallSlongT
    freq* {.importc: "freq".}: SyscallSlongT
    maxerror* {.importc: "maxerror".}: SyscallSlongT
    esterror* {.importc: "esterror".}: SyscallSlongT
    status* {.importc: "status".}: cint
    constant* {.importc: "constant".}: SyscallSlongT
    precision* {.importc: "precision".}: SyscallSlongT
    tolerance* {.importc: "tolerance".}: SyscallSlongT
    tick* {.importc: "tick".}: SyscallSlongT
    ppsfreq* {.importc: "ppsfreq".}: SyscallSlongT
    jitter* {.importc: "jitter".}: SyscallSlongT
    shift* {.importc: "shift".}: cint
    stabil* {.importc: "stabil".}: SyscallSlongT
    jitcnt* {.importc: "jitcnt".}: SyscallSlongT
    calcnt* {.importc: "calcnt".}: SyscallSlongT
    errcnt* {.importc: "errcnt".}: SyscallSlongT
    stbcnt* {.importc: "stbcnt".}: SyscallSlongT
    tai* {.importc: "tai".}: cint


var time* {.importcpp: "time", header: "OSD_PThread.hxx".}: Timextimeval

## !!!Ignored construct:  int : 32 ;
## Error: identifier expected, but got: :!!!

## !!!Ignored construct:  int : 32 ;
## Error: identifier expected, but got: :!!!

## !!!Ignored construct:  int : 32 ;
## Error: identifier expected, but got: :!!!

## !!!Ignored construct:  int : 32 ;
## Error: identifier expected, but got: :!!!

## !!!Ignored construct:  int : 32 ;
## Error: identifier expected, but got: :!!!

## !!!Ignored construct:  int : 32 ;
## Error: identifier expected, but got: :!!!

## !!!Ignored construct:  int : 32 ;
## Error: identifier expected, but got: :!!!

## !!!Ignored construct:  int : 32 ;
## Error: identifier expected, but got: :!!!

## !!!Ignored construct:  int : 32 ;
## Error: identifier expected, but got: :!!!

## !!!Ignored construct:  int : 32 ;
## Error: identifier expected, but got: :!!!

## !!!Ignored construct:  int : 32 ;
## Error: identifier expected, but got: :!!!

## !!!Ignored construct:  extern C { extern int clock_adjtime ( __clockid_t __clock_id , struct timex * __utx ) noexcept ( true ) ; } # /usr/include/time.h 2 3 4 [NewLine] # /usr/include/bits/types/clock_t.h 1 3 4 [NewLine] typedef __clock_t clock_t ;
## Error: identifier expected, but got: {!!!

type
  Tm* {.importcpp: "timex::tm", header: "OSD_PThread.hxx", bycopy.} = object
    tmSec* {.importc: "tm_sec".}: cint
    tmMin* {.importc: "tm_min".}: cint
    tmHour* {.importc: "tm_hour".}: cint
    tmMday* {.importc: "tm_mday".}: cint
    tmMon* {.importc: "tm_mon".}: cint
    tmYear* {.importc: "tm_year".}: cint
    tmWday* {.importc: "tm_wday".}: cint
    tmYday* {.importc: "tm_yday".}: cint
    tmIsdst* {.importc: "tm_isdst".}: cint
    tmGmtoff* {.importc: "tm_gmtoff".}: clong
    tmZone* {.importc: "tm_zone".}: cstring

  ClockidT* = ClockidT
  TimerT* = TimerT
  Itimerspec* {.importcpp: "timex::itimerspec::timespec::itimerspec",
               header: "OSD_PThread.hxx", bycopy.} = object


var itInterval* {.importcpp: "it_interval", header: "OSD_PThread.hxx".}: Itimerspectimespec

var itValue* {.importcpp: "it_value", header: "OSD_PThread.hxx".}: Itimerspectimespec

discard "forward decl of sigevent"
type
  LocaleStruct* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__locale_struct",
                 header: "OSD_PThread.hxx", bycopy.} = object
    ctypeB* {.importc: "__ctype_b".}: ptr cushort
    ctypeTolower* {.importc: "__ctype_tolower".}: ptr cint
    ctypeToupper* {.importc: "__ctype_toupper".}: ptr cint
    names* {.importc: "__names".}: array[13, cstring]


var locales* {.importcpp: "__locales", header: "OSD_PThread.hxx".}: array[13,
    ptr LocaleStructLocaleData]

type
  LocaleT* = ptr localeStruct
  LocaleT* = LocaleT

## !!!Ignored construct:  extern C { extern clock_t clock ( void ) noexcept ( true ) ; extern time_t time ( time_t * __timer ) noexcept ( true ) ; extern double difftime ( time_t __time1 , time_t __time0 ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; extern time_t mktime ( struct tm * __tp ) noexcept ( true ) ; extern size_t strftime ( char * __restrict __s , size_t __maxsize , const char * __restrict __format , const struct tm * __restrict __tp ) noexcept ( true ) ; extern char * strptime ( const char * __restrict __s , const char * __restrict __fmt , struct tm * __tp ) noexcept ( true ) ; extern size_t strftime_l ( char * __restrict __s , size_t __maxsize , const char * __restrict __format , const struct tm * __restrict __tp , locale_t __loc ) noexcept ( true ) ; extern char * strptime_l ( const char * __restrict __s , const char * __restrict __fmt , struct tm * __tp , locale_t __loc ) noexcept ( true ) ; extern struct tm * gmtime ( const time_t * __timer ) noexcept ( true ) ; extern struct tm * localtime ( const time_t * __timer ) noexcept ( true ) ; extern struct tm * gmtime_r ( const time_t * __restrict __timer , struct tm * __restrict __tp ) noexcept ( true ) ; extern struct tm * localtime_r ( const time_t * __restrict __timer , struct tm * __restrict __tp ) noexcept ( true ) ; extern char * asctime ( const struct tm * __tp ) noexcept ( true ) ; extern char * ctime ( const time_t * __timer ) noexcept ( true ) ; extern char * asctime_r ( const struct tm * __restrict __tp , char * __restrict __buf ) noexcept ( true ) ; extern char * ctime_r ( const time_t * __restrict __timer , char * __restrict __buf ) noexcept ( true ) ; extern char * __tzname [ 2 ] ; extern int __daylight ; extern long int __timezone ; extern char * tzname [ 2 ] ; extern void tzset ( void ) noexcept ( true ) ; extern int daylight ; extern long int timezone ; # /usr/include/time.h 3 4 [NewLine] extern time_t timegm ( struct tm * __tp ) noexcept ( true ) ; extern time_t timelocal ( struct tm * __tp ) noexcept ( true ) ; extern int dysize ( int __year ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; # /usr/include/time.h 3 4 [NewLine] extern int nanosleep ( const struct timespec * __requested_time , struct timespec * __remaining ) ; extern int clock_getres ( clockid_t __clock_id , struct timespec * __res ) noexcept ( true ) ; extern int clock_gettime ( clockid_t __clock_id , struct timespec * __tp ) noexcept ( true ) ; extern int clock_settime ( clockid_t __clock_id , const struct timespec * __tp ) noexcept ( true ) ; extern int clock_nanosleep ( clockid_t __clock_id , int __flags , const struct timespec * __req , struct timespec * __rem ) ; extern int clock_getcpuclockid ( pid_t __pid , clockid_t * __clock_id ) noexcept ( true ) ; extern int timer_create ( clockid_t __clock_id , struct sigevent * __restrict __evp , timer_t * __restrict __timerid ) noexcept ( true ) ; extern int timer_delete ( timer_t __timerid ) noexcept ( true ) ; extern int timer_settime ( timer_t __timerid , int __flags , const struct itimerspec * __restrict __value , struct itimerspec * __restrict __ovalue ) noexcept ( true ) ; extern int timer_gettime ( timer_t __timerid , struct itimerspec * __value ) noexcept ( true ) ; extern int timer_getoverrun ( timer_t __timerid ) noexcept ( true ) ; extern int timespec_get ( struct timespec * __ts , int __base ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/time.h 3 4 [NewLine] extern int getdate_err ; # /usr/include/time.h 3 4 [NewLine] extern struct tm * getdate ( const char * __string ) ; # /usr/include/time.h 3 4 [NewLine] extern int getdate_r ( const char * __restrict __string , struct tm * __restrict __resbufp ) ; } # /usr/include/pthread.h 2 3 4 [NewLine] # /usr/include/bits/pthreadtypes.h 1 3 4 [NewLine] # /usr/include/bits/pthreadtypes.h 3 4 [NewLine] # /usr/include/bits/thread-shared-types.h 1 3 4 [NewLine] # /usr/include/bits/thread-shared-types.h 3 4 [NewLine] # /usr/include/bits/pthreadtypes-arch.h 1 3 4 [NewLine] # /usr/include/bits/pthreadtypes-arch.h 3 4 [NewLine] # /usr/include/bits/wordsize.h 1 3 4 [NewLine] # /usr/include/bits/pthreadtypes-arch.h 2 3 4 [NewLine] # /usr/include/bits/thread-shared-types.h 2 3 4 [NewLine] typedef struct __pthread_internal_list { struct __pthread_internal_list * __prev ; struct __pthread_internal_list * __next ; } __pthread_list_t ;
## Error: identifier expected, but got: {!!!

var next* {.importcpp: "__next", header: "OSD_PThread.hxx".}: ptr PthreadSlistT_pthreadInternalSlist

type
  PthreadSlistT* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::__pthread_slist_t",
                  header: "OSD_PThread.hxx", bycopy.} = object

  PthreadMutexS* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::__pthread_mutex_s",
                  header: "OSD_PThread.hxx", bycopy.} = object
    lock* {.importc: "__lock".}: cint
    count* {.importc: "__count".}: cuint
    owner* {.importc: "__owner".}: cint
    nusers* {.importc: "__nusers".}: cuint
    kind* {.importc: "__kind".}: cint
    spins* {.importc: "__spins".}: cshort
    elision* {.importc: "__elision".}: cshort
    list* {.importc: "__list".}: PthreadListT

  PthreadRwlockArchT* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::__pthread_rwlock_arch_t",
                       header: "OSD_PThread.hxx", bycopy.} = object
    readers* {.importc: "__readers".}: cuint
    writers* {.importc: "__writers".}: cuint
    wrphaseFutex* {.importc: "__wrphase_futex".}: cuint
    writersFutex* {.importc: "__writers_futex".}: cuint
    pad3* {.importc: "__pad3".}: cuint
    pad4* {.importc: "__pad4".}: cuint
    curWriter* {.importc: "__cur_writer".}: cint
    shared* {.importc: "__shared".}: cint
    rwelision* {.importc: "__rwelision".}: cchar
    pad1* {.importc: "__pad1".}: array[7, cuchar]
    pad2* {.importc: "__pad2".}: culong
    flags* {.importc: "__flags".}: cuint

  PthreadCondS* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::__pthread_cond_s",
                 header: "OSD_PThread.hxx", bycopy.} = object
    union* {.importc: "union".}: Extension
    union* {.importc: "union".}: Extension
    gRefs* {.importc: "__g_refs".}: array[2, cuint]
    gSize* {.importc: "__g_size".}: array[2, cuint]
    g1OrigSize* {.importc: "__g1_orig_size".}: cuint
    wrefs* {.importc: "__wrefs".}: cuint
    gSignals* {.importc: "__g_signals".}: array[2, cuint]


## !!!Ignored construct:  { __extension__ unsigned long long int __wseq ; struct { unsigned int __low ; unsigned int __high ; } __wseq32 ; } ;
## Error: identifier expected, but got: {!!!

## !!!Ignored construct:  { __extension__ unsigned long long int __g1_start ; struct { unsigned int __low ; unsigned int __high ; } __g1_start32 ; } ;
## Error: identifier expected, but got: {!!!

## !!!Ignored construct:  typedef unsigned int __tss_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int __thrd_t ;
## Error: identifier expected, but got: ;!!!

type
  OnceFlag* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::__once_flag",
             header: "OSD_PThread.hxx", bycopy.} = object
    data* {.importc: "__data".}: cint


## !!!Ignored construct:  typedef unsigned long int pthread_t ;
## Error: identifier expected, but got: ;!!!

type
  PthreadMutexattrT* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::pthread_mutexattr_t",
                      header: "OSD_PThread.hxx", bycopy, union.} = object
    size* {.importc: "__size".}: array[4, char]
    align* {.importc: "__align".}: cint

  PthreadCondattrT* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::pthread_condattr_t",
                     header: "OSD_PThread.hxx", bycopy, union.} = object
    size* {.importc: "__size".}: array[4, char]
    align* {.importc: "__align".}: cint

  PthreadKeyT* = cuint
  PthreadOnceT* = cint
  PthreadAttrT* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::pthread_attr_t",
                 header: "OSD_PThread.hxx", bycopy, union.} = object
    size* {.importc: "__size".}: array[56, char]
    align* {.importc: "__align".}: clong


## !!!Ignored construct:  typedef union pthread_attr_t pthread_attr_t ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  typedef union { struct __pthread_mutex_s __data ; char __size [ 40 ] ; long int __align ; } pthread_mutex_t ;
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  typedef union { struct __pthread_cond_s __data ; char __size [ 48 ] ; __extension__ long long int __align ; } pthread_cond_t ;
## Error: token expected: ; but got: [identifier]!!!

type
  PthreadRwlockT* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::pthread_rwlock_t",
                   header: "OSD_PThread.hxx", bycopy, union.} = object
    data* {.importc: "__data".}: PthreadRwlockArchT
    size* {.importc: "__size".}: array[56, char]
    align* {.importc: "__align".}: clong

  PthreadRwlockattrT* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::pthread_rwlockattr_t",
                       header: "OSD_PThread.hxx", bycopy, union.} = object
    size* {.importc: "__size".}: array[8, char]
    align* {.importc: "__align".}: clong

  PthreadSpinlockT* = cint
  PthreadBarrierT* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::pthread_barrier_t",
                    header: "OSD_PThread.hxx", bycopy, union.} = object
    size* {.importc: "__size".}: array[32, char]
    align* {.importc: "__align".}: clong

  PthreadBarrierattrT* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::pthread_barrierattr_t",
                        header: "OSD_PThread.hxx", bycopy, union.} = object
    size* {.importc: "__size".}: array[4, char]
    align* {.importc: "__align".}: cint

  JmpBuf* = array[8, clong]
  SigsetT* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::__sigset_t",
            header: "OSD_PThread.hxx", bycopy.} = object
    val* {.importc: "__val".}: array[(1024 div (8 * sizeof(culong))), culong]

  JmpBufTag* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::__jmp_buf_tag",
              header: "OSD_PThread.hxx", bycopy.} = object
    jmpbuf* {.importc: "__jmpbuf".}: JmpBuf
    maskWasSaved* {.importc: "__mask_was_saved".}: cint
    savedMask* {.importc: "__saved_mask".}: SigsetT


const
  PTHREAD_CREATE_JOINABLE* = 0
  PTHREAD_CREATE_DETACHED* = 1

const
  PTHREAD_MUTEX_TIMED_NP* = 0
  PTHREAD_MUTEX_RECURSIVE_NP* = 1
  PTHREAD_MUTEX_ERRORCHECK_NP* = 2
  PTHREAD_MUTEX_ADAPTIVE_NP* = 3
  PTHREAD_MUTEX_NORMAL* = PTHREAD_MUTEX_TIMED_NP
  PTHREAD_MUTEX_RECURSIVE* = PTHREAD_MUTEX_RECURSIVE_NP
  PTHREAD_MUTEX_ERRORCHECK* = PTHREAD_MUTEX_ERRORCHECK_NP
  PTHREAD_MUTEX_DEFAULT* = PTHREAD_MUTEX_NORMAL
  PTHREAD_MUTEX_FAST_NP* = PTHREAD_MUTEX_TIMED_NP

const
  PTHREAD_MUTEX_STALLED* = 0
  PTHREAD_MUTEX_STALLED_NP* = PTHREAD_MUTEX_STALLED
  PTHREAD_MUTEX_ROBUST* = 1
  PTHREAD_MUTEX_ROBUST_NP* = PTHREAD_MUTEX_ROBUST

const
  PTHREAD_PRIO_NONE* = 0
  PTHREAD_PRIO_INHERIT* = 1
  PTHREAD_PRIO_PROTECT* = 2

const
  PTHREAD_RWLOCK_PREFER_READER_NP* = 0
  PTHREAD_RWLOCK_PREFER_WRITER_NP* = 1
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP* = 2
  PTHREAD_RWLOCK_DEFAULT_NP* = PTHREAD_RWLOCK_PREFER_READER_NP

const
  PTHREAD_INHERIT_SCHED* = 0
  PTHREAD_EXPLICIT_SCHED* = 1

const
  PTHREAD_SCOPE_SYSTEM* = 0
  PTHREAD_SCOPE_PROCESS* = 1

const
  PTHREAD_PROCESS_PRIVATE* = 0
  PTHREAD_PROCESS_SHARED* = 1

type
  PthreadCleanupBuffer* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__pthread_internal_slist::__pthread_slist_t::_pthread_cleanup_buffer::_pthread_cleanup_buffer",
                         header: "OSD_PThread.hxx", bycopy.} = object
    routine* {.importc: "__routine".}: proc (a1: pointer)
    arg* {.importc: "__arg".}: pointer
    canceltype* {.importc: "__canceltype".}: cint


var prev* {.importcpp: "__prev", header: "OSD_PThread.hxx".}: ptr PthreadCleanupBufferPthreadCleanupBuffer

const
  PTHREAD_CANCEL_ENABLE* = 0
  PTHREAD_CANCEL_DISABLE* = 1

const
  PTHREAD_CANCEL_DEFERRED* = 0
  PTHREAD_CANCEL_ASYNCHRONOUS* = 1

## !!!Ignored construct:  extern C { extern int pthread_create ( pthread_t * __restrict __newthread , const pthread_attr_t * __restrict __attr , void * ( * __start_routine ) ( void * ) , void * __restrict __arg ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 3 ) ) ) ; extern void pthread_exit ( void * __retval ) __attribute__ ( ( __noreturn__ ) ) ; extern int pthread_join ( pthread_t __th , void * * __thread_return ) ; extern int pthread_tryjoin_np ( pthread_t __th , void * * __thread_return ) noexcept ( true ) ; extern int pthread_timedjoin_np ( pthread_t __th , void * * __thread_return , const struct timespec * __abstime ) ; # /usr/include/pthread.h 3 4 [NewLine] extern int pthread_clockjoin_np ( pthread_t __th , void * * __thread_return , clockid_t __clockid , const struct timespec * __abstime ) ; extern int pthread_detach ( pthread_t __th ) noexcept ( true ) ; extern pthread_t pthread_self ( void ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; extern int pthread_equal ( pthread_t __thread1 , pthread_t __thread2 ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; extern int pthread_attr_init ( pthread_attr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_attr_destroy ( pthread_attr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_attr_getdetachstate ( const pthread_attr_t * __attr , int * __detachstate ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_attr_setdetachstate ( pthread_attr_t * __attr , int __detachstate ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_attr_getguardsize ( const pthread_attr_t * __attr , size_t * __guardsize ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_attr_setguardsize ( pthread_attr_t * __attr , size_t __guardsize ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_attr_getschedparam ( const pthread_attr_t * __restrict __attr , struct sched_param * __restrict __param ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_attr_setschedparam ( pthread_attr_t * __restrict __attr , const struct sched_param * __restrict __param ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_attr_getschedpolicy ( const pthread_attr_t * __restrict __attr , int * __restrict __policy ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_attr_setschedpolicy ( pthread_attr_t * __attr , int __policy ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_attr_getinheritsched ( const pthread_attr_t * __restrict __attr , int * __restrict __inherit ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_attr_setinheritsched ( pthread_attr_t * __attr , int __inherit ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_attr_getscope ( const pthread_attr_t * __restrict __attr , int * __restrict __scope ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_attr_setscope ( pthread_attr_t * __attr , int __scope ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_attr_getstackaddr ( const pthread_attr_t * __restrict __attr , void * * __restrict __stackaddr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) __attribute__ ( ( __deprecated__ ) ) ; extern int pthread_attr_setstackaddr ( pthread_attr_t * __attr , void * __stackaddr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) __attribute__ ( ( __deprecated__ ) ) ; extern int pthread_attr_getstacksize ( const pthread_attr_t * __restrict __attr , size_t * __restrict __stacksize ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_attr_setstacksize ( pthread_attr_t * __attr , size_t __stacksize ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_attr_getstack ( const pthread_attr_t * __restrict __attr , void * * __restrict __stackaddr , size_t * __restrict __stacksize ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 , 3 ) ) ) ; extern int pthread_attr_setstack ( pthread_attr_t * __attr , void * __stackaddr , size_t __stacksize ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_attr_setaffinity_np ( pthread_attr_t * __attr , size_t __cpusetsize , const cpu_set_t * __cpuset ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 3 ) ) ) ; extern int pthread_attr_getaffinity_np ( const pthread_attr_t * __attr , size_t __cpusetsize , cpu_set_t * __cpuset ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 3 ) ) ) ; extern int pthread_getattr_default_np ( pthread_attr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_attr_setsigmask_np ( pthread_attr_t * __attr , const __sigset_t * sigmask ) ; extern int pthread_attr_getsigmask_np ( const pthread_attr_t * __attr , __sigset_t * sigmask ) ; extern int pthread_setattr_default_np ( const pthread_attr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_getattr_np ( pthread_t __th , pthread_attr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 2 ) ) ) ; extern int pthread_setschedparam ( pthread_t __target_thread , int __policy , const struct sched_param * __param ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 3 ) ) ) ; extern int pthread_getschedparam ( pthread_t __target_thread , int * __restrict __policy , struct sched_param * __restrict __param ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 2 , 3 ) ) ) ; extern int pthread_setschedprio ( pthread_t __target_thread , int __prio ) noexcept ( true ) ; extern int pthread_getname_np ( pthread_t __target_thread , char * __buf , size_t __buflen ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 2 ) ) ) ; extern int pthread_setname_np ( pthread_t __target_thread , const char * __name ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 2 ) ) ) ; extern int pthread_getconcurrency ( void ) noexcept ( true ) ; extern int pthread_setconcurrency ( int __level ) noexcept ( true ) ; extern int pthread_yield ( void ) noexcept ( true ) ; extern int pthread_setaffinity_np ( pthread_t __th , size_t __cpusetsize , const cpu_set_t * __cpuset ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 3 ) ) ) ; extern int pthread_getaffinity_np ( pthread_t __th , size_t __cpusetsize , cpu_set_t * __cpuset ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 3 ) ) ) ; # /usr/include/pthread.h 3 4 [NewLine] extern int pthread_once ( pthread_once_t * __once_control , void ( * __init_routine ) ( void ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; # /usr/include/pthread.h 3 4 [NewLine] extern int pthread_setcancelstate ( int __state , int * __oldstate ) ; extern int pthread_setcanceltype ( int __type , int * __oldtype ) ; extern int pthread_cancel ( pthread_t __th ) ; extern void pthread_testcancel ( void ) ; struct __cancel_jmp_buf_tag { __jmp_buf __cancel_jmp_buf ; int __mask_was_saved ; } ; typedef struct { struct __cancel_jmp_buf_tag __cancel_jmp_buf [ 1 ] ; void * __pad [ 4 ] ; } __pthread_unwind_buf_t __attribute__ ( ( __aligned__ ) ) ; # /usr/include/pthread.h 3 4 [NewLine] struct __pthread_cleanup_frame { void ( * __cancel_routine ) ( void * ) ; void * __cancel_arg ; int __do_it ; int __cancel_type ; } ; class __pthread_cleanup_class { void ( * __cancel_routine ) ( void * ) ; void * __cancel_arg ; int __do_it ; int __cancel_type ; public : __pthread_cleanup_class ( void ( * __fct ) ( void * ) , void * __arg ) : __cancel_routine ( __fct ) , __cancel_arg ( __arg ) , __do_it ( 1 ) { } ~ __pthread_cleanup_class ( ) { if ( __do_it ) __cancel_routine ( __cancel_arg ) ; } void __setdoit ( int __newval ) { __do_it = __newval ; } void __defer ( ) { pthread_setcanceltype ( PTHREAD_CANCEL_DEFERRED , & __cancel_type ) ; } void __restore ( ) const { pthread_setcanceltype ( __cancel_type , 0 ) ; } } ; # /usr/include/pthread.h 3 4 [NewLine] extern int __sigsetjmp ( struct __jmp_buf_tag __env [ 1 ] , int __savemask ) noexcept ( true ) ; extern int pthread_mutex_init ( pthread_mutex_t * __mutex , const pthread_mutexattr_t * __mutexattr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutex_destroy ( pthread_mutex_t * __mutex ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutex_trylock ( pthread_mutex_t * __mutex ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutex_lock ( pthread_mutex_t * __mutex ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutex_timedlock ( pthread_mutex_t * __restrict __mutex , const struct timespec * __restrict __abstime ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_mutex_clocklock ( pthread_mutex_t * __restrict __mutex , clockid_t __clockid , const struct timespec * __restrict __abstime ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 3 ) ) ) ; extern int pthread_mutex_unlock ( pthread_mutex_t * __mutex ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutex_getprioceiling ( const pthread_mutex_t * __restrict __mutex , int * __restrict __prioceiling ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_mutex_setprioceiling ( pthread_mutex_t * __restrict __mutex , int __prioceiling , int * __restrict __old_ceiling ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 3 ) ) ) ; extern int pthread_mutex_consistent ( pthread_mutex_t * __mutex ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutex_consistent_np ( pthread_mutex_t * __mutex ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/pthread.h 3 4 [NewLine] extern int pthread_mutexattr_init ( pthread_mutexattr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutexattr_destroy ( pthread_mutexattr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutexattr_getpshared ( const pthread_mutexattr_t * __restrict __attr , int * __restrict __pshared ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_mutexattr_setpshared ( pthread_mutexattr_t * __attr , int __pshared ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutexattr_gettype ( const pthread_mutexattr_t * __restrict __attr , int * __restrict __kind ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_mutexattr_settype ( pthread_mutexattr_t * __attr , int __kind ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutexattr_getprotocol ( const pthread_mutexattr_t * __restrict __attr , int * __restrict __protocol ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_mutexattr_setprotocol ( pthread_mutexattr_t * __attr , int __protocol ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutexattr_getprioceiling ( const pthread_mutexattr_t * __restrict __attr , int * __restrict __prioceiling ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_mutexattr_setprioceiling ( pthread_mutexattr_t * __attr , int __prioceiling ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutexattr_getrobust ( const pthread_mutexattr_t * __attr , int * __robustness ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_mutexattr_getrobust_np ( const pthread_mutexattr_t * __attr , int * __robustness ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_mutexattr_setrobust ( pthread_mutexattr_t * __attr , int __robustness ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_mutexattr_setrobust_np ( pthread_mutexattr_t * __attr , int __robustness ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/pthread.h 3 4 [NewLine] extern int pthread_rwlock_init ( pthread_rwlock_t * __restrict __rwlock , const pthread_rwlockattr_t * __restrict __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_rwlock_destroy ( pthread_rwlock_t * __rwlock ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_rwlock_rdlock ( pthread_rwlock_t * __rwlock ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_rwlock_tryrdlock ( pthread_rwlock_t * __rwlock ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_rwlock_timedrdlock ( pthread_rwlock_t * __restrict __rwlock , const struct timespec * __restrict __abstime ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_rwlock_clockrdlock ( pthread_rwlock_t * __restrict __rwlock , clockid_t __clockid , const struct timespec * __restrict __abstime ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 3 ) ) ) ; extern int pthread_rwlock_wrlock ( pthread_rwlock_t * __rwlock ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_rwlock_trywrlock ( pthread_rwlock_t * __rwlock ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_rwlock_timedwrlock ( pthread_rwlock_t * __restrict __rwlock , const struct timespec * __restrict __abstime ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_rwlock_clockwrlock ( pthread_rwlock_t * __restrict __rwlock , clockid_t __clockid , const struct timespec * __restrict __abstime ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 3 ) ) ) ; extern int pthread_rwlock_unlock ( pthread_rwlock_t * __rwlock ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_rwlockattr_init ( pthread_rwlockattr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_rwlockattr_destroy ( pthread_rwlockattr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_rwlockattr_getpshared ( const pthread_rwlockattr_t * __restrict __attr , int * __restrict __pshared ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_rwlockattr_setpshared ( pthread_rwlockattr_t * __attr , int __pshared ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_rwlockattr_getkind_np ( const pthread_rwlockattr_t * __restrict __attr , int * __restrict __pref ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_rwlockattr_setkind_np ( pthread_rwlockattr_t * __attr , int __pref ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_cond_init ( pthread_cond_t * __restrict __cond , const pthread_condattr_t * __restrict __cond_attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_cond_destroy ( pthread_cond_t * __cond ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_cond_signal ( pthread_cond_t * __cond ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_cond_broadcast ( pthread_cond_t * __cond ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_cond_wait ( pthread_cond_t * __restrict __cond , pthread_mutex_t * __restrict __mutex ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; # /usr/include/pthread.h 3 4 [NewLine] extern int pthread_cond_timedwait ( pthread_cond_t * __restrict __cond , pthread_mutex_t * __restrict __mutex , const struct timespec * __restrict __abstime ) __attribute__ ( ( __nonnull__ ( 1 , 2 , 3 ) ) ) ; # /usr/include/pthread.h 3 4 [NewLine] extern int pthread_cond_clockwait ( pthread_cond_t * __restrict __cond , pthread_mutex_t * __restrict __mutex , __clockid_t __clock_id , const struct timespec * __restrict __abstime ) __attribute__ ( ( __nonnull__ ( 1 , 2 , 4 ) ) ) ; extern int pthread_condattr_init ( pthread_condattr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_condattr_destroy ( pthread_condattr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_condattr_getpshared ( const pthread_condattr_t * __restrict __attr , int * __restrict __pshared ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_condattr_setpshared ( pthread_condattr_t * __attr , int __pshared ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_condattr_getclock ( const pthread_condattr_t * __restrict __attr , __clockid_t * __restrict __clock_id ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_condattr_setclock ( pthread_condattr_t * __attr , __clockid_t __clock_id ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/pthread.h 3 4 [NewLine] extern int pthread_spin_init ( pthread_spinlock_t * __lock , int __pshared ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_spin_destroy ( pthread_spinlock_t * __lock ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_spin_lock ( pthread_spinlock_t * __lock ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_spin_trylock ( pthread_spinlock_t * __lock ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_spin_unlock ( pthread_spinlock_t * __lock ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_barrier_init ( pthread_barrier_t * __restrict __barrier , const pthread_barrierattr_t * __restrict __attr , unsigned int __count ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_barrier_destroy ( pthread_barrier_t * __barrier ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_barrier_wait ( pthread_barrier_t * __barrier ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_barrierattr_init ( pthread_barrierattr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_barrierattr_destroy ( pthread_barrierattr_t * __attr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_barrierattr_getpshared ( const pthread_barrierattr_t * __restrict __attr , int * __restrict __pshared ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int pthread_barrierattr_setpshared ( pthread_barrierattr_t * __attr , int __pshared ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/pthread.h 3 4 [NewLine] extern int pthread_key_create ( pthread_key_t * __key , void ( * __destr_function ) ( void * ) ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int pthread_key_delete ( pthread_key_t __key ) noexcept ( true ) ; extern void * pthread_getspecific ( pthread_key_t __key ) noexcept ( true ) ; extern int pthread_setspecific ( pthread_key_t __key , const void * __pointer ) noexcept ( true ) ; extern int pthread_getcpuclockid ( pthread_t __thread_id , __clockid_t * __clock_id ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 2 ) ) ) ; # /usr/include/pthread.h 3 4 [NewLine] extern int pthread_atfork ( void ( * __prepare ) ( void ) , void ( * __parent ) ( void ) , void ( * __child ) ( void ) ) noexcept ( true ) ; # /usr/include/pthread.h 3 4 [NewLine] } # /usr/include/opencascade/OSD_PThread.hxx 2 [NewLine] # /usr/include/opencascade/OSD_PThread.hxx [NewLine] typedef pthread_t OSD_PThread ;
## Error: identifier expected, but got: {!!!

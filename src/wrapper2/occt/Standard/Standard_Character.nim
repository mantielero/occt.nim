## !!!Ignored construct:  typedef long unsigned int size_t ;
## Error: identifier expected, but got: ;!!!

type
  PtrdiffT* = clong
  NullptrT* = typeof(nil)

## !!!Ignored construct:  inline namespace __cxx11 __attribute__ ( ( __abi_tag__ ( cxx11 ) ) ) { } }
## Error: token expected: ; but got: [identifier]!!!

## !!!Ignored construct:  inline namespace __cxx11 __attribute__ ( ( __abi_tag__ ( cxx11 ) ) ) { } }
## Error: token expected: ; but got: [identifier]!!!

type
  PtrdiffT* = clong

## !!!Ignored construct:  typedef long unsigned int size_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  __attribute__ ( ( __aligned__ ( __alignof__ ( long long ) ) ) ) ;
## Error: token expected: ) but got: (!!!

## !!!Ignored construct:  __attribute__ ( ( __aligned__ ( __alignof__ ( long double ) ) ) ) ;
## Error: token expected: ) but got: (!!!

type
  MaxAlignT* {.importcpp: "max_align_t", header: "Standard_Character.hxx", bycopy.} = object
    maxAlignLl* {.importc: "__max_align_ll".}: clonglong
    maxAlignLd* {.importc: "__max_align_ld".}: clongdouble

  NullptrT* = typeof(nil)

## !!!Ignored construct:  extern C++ { namespace std { using :: max_align_t ; } # /usr/include/c++/10.2.0/cstddef 3 [NewLine] } # /usr/include/opencascade/Standard_TypeDef.hxx 2 [NewLine] # /usr/include/c++/10.2.0/ctime 1 3 [NewLine] # /usr/include/c++/10.2.0/ctime 3 [NewLine] # /usr/include/c++/10.2.0/ctime 3 [NewLine] # /usr/include/time.h 1 3 4 [NewLine] # /usr/include/time.h 3 4 [NewLine] # /usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h 1 3 4 [NewLine] # /usr/include/time.h 2 3 4 [NewLine] # /usr/include/bits/time.h 1 3 4 [NewLine] # /usr/include/bits/time.h 3 4 [NewLine] # /usr/include/bits/types.h 1 3 4 [NewLine] # /usr/include/bits/types.h 3 4 [NewLine] # /usr/include/bits/wordsize.h 1 3 4 [NewLine] # /usr/include/bits/types.h 2 3 4 [NewLine] # /usr/include/bits/timesize.h 1 3 4 [NewLine] # /usr/include/bits/types.h 2 3 4 [NewLine] typedef unsigned char __u_char ;
## Error: identifier expected, but got: C++!!!

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
  Timeval* {.importcpp: "timeval", header: "Standard_Character.hxx", bycopy.} = object
    tvSec* {.importc: "tv_sec".}: TimeT
    tvUsec* {.importc: "tv_usec".}: SusecondsT

  Timex* {.importcpp: "timex::timex", header: "Standard_Character.hxx", bycopy.} = object
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


var time* {.importcpp: "time", header: "Standard_Character.hxx".}: Timextimeval

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
  TimeT* = TimeT
  Tm* {.importcpp: "timex::tm", header: "Standard_Character.hxx", bycopy.} = object
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

  Timespec* {.importcpp: "timex::timespec", header: "Standard_Character.hxx", bycopy.} = object
    tvSec* {.importc: "tv_sec".}: TimeT
    tvNsec* {.importc: "tv_nsec".}: SyscallSlongT

  ClockidT* = ClockidT
  TimerT* = TimerT
  Itimerspec* {.importcpp: "timex::itimerspec::timespec::itimerspec",
               header: "Standard_Character.hxx", bycopy.} = object


var itInterval* {.importcpp: "it_interval", header: "Standard_Character.hxx".}: Itimerspectimespec

var itValue* {.importcpp: "it_value", header: "Standard_Character.hxx".}: Itimerspectimespec

discard "forward decl of sigevent"
type
  PidT* = PidT
  LocaleStruct* {.importcpp: "timex::itimerspec::timespec::__locale_struct::__locale_struct",
                 header: "Standard_Character.hxx", bycopy.} = object
    ctypeB* {.importc: "__ctype_b".}: ptr cushort
    ctypeTolower* {.importc: "__ctype_tolower".}: ptr cint
    ctypeToupper* {.importc: "__ctype_toupper".}: ptr cint
    names* {.importc: "__names".}: array[13, cstring]


var locales* {.importcpp: "__locales", header: "Standard_Character.hxx".}: array[13,
    ptr LocaleStructLocaleData]

type
  LocaleT* = ptr localeStruct
  LocaleT* = LocaleT

## !!!Ignored construct:  extern C { extern clock_t clock ( void ) noexcept ( true ) ; extern time_t time ( time_t * __timer ) noexcept ( true ) ; extern double difftime ( time_t __time1 , time_t __time0 ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; extern time_t mktime ( struct tm * __tp ) noexcept ( true ) ; extern size_t strftime ( char * __restrict __s , size_t __maxsize , const char * __restrict __format , const struct tm * __restrict __tp ) noexcept ( true ) ; extern char * strptime ( const char * __restrict __s , const char * __restrict __fmt , struct tm * __tp ) noexcept ( true ) ; extern size_t strftime_l ( char * __restrict __s , size_t __maxsize , const char * __restrict __format , const struct tm * __restrict __tp , locale_t __loc ) noexcept ( true ) ; extern char * strptime_l ( const char * __restrict __s , const char * __restrict __fmt , struct tm * __tp , locale_t __loc ) noexcept ( true ) ; extern struct tm * gmtime ( const time_t * __timer ) noexcept ( true ) ; extern struct tm * localtime ( const time_t * __timer ) noexcept ( true ) ; extern struct tm * gmtime_r ( const time_t * __restrict __timer , struct tm * __restrict __tp ) noexcept ( true ) ; extern struct tm * localtime_r ( const time_t * __restrict __timer , struct tm * __restrict __tp ) noexcept ( true ) ; extern char * asctime ( const struct tm * __tp ) noexcept ( true ) ; extern char * ctime ( const time_t * __timer ) noexcept ( true ) ; extern char * asctime_r ( const struct tm * __restrict __tp , char * __restrict __buf ) noexcept ( true ) ; extern char * ctime_r ( const time_t * __restrict __timer , char * __restrict __buf ) noexcept ( true ) ; extern char * __tzname [ 2 ] ; extern int __daylight ; extern long int __timezone ; extern char * tzname [ 2 ] ; extern void tzset ( void ) noexcept ( true ) ; extern int daylight ; extern long int timezone ; # /usr/include/time.h 3 4 [NewLine] extern time_t timegm ( struct tm * __tp ) noexcept ( true ) ; extern time_t timelocal ( struct tm * __tp ) noexcept ( true ) ; extern int dysize ( int __year ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; # /usr/include/time.h 3 4 [NewLine] extern int nanosleep ( const struct timespec * __requested_time , struct timespec * __remaining ) ; extern int clock_getres ( clockid_t __clock_id , struct timespec * __res ) noexcept ( true ) ; extern int clock_gettime ( clockid_t __clock_id , struct timespec * __tp ) noexcept ( true ) ; extern int clock_settime ( clockid_t __clock_id , const struct timespec * __tp ) noexcept ( true ) ; extern int clock_nanosleep ( clockid_t __clock_id , int __flags , const struct timespec * __req , struct timespec * __rem ) ; extern int clock_getcpuclockid ( pid_t __pid , clockid_t * __clock_id ) noexcept ( true ) ; extern int timer_create ( clockid_t __clock_id , struct sigevent * __restrict __evp , timer_t * __restrict __timerid ) noexcept ( true ) ; extern int timer_delete ( timer_t __timerid ) noexcept ( true ) ; extern int timer_settime ( timer_t __timerid , int __flags , const struct itimerspec * __restrict __value , struct itimerspec * __restrict __ovalue ) noexcept ( true ) ; extern int timer_gettime ( timer_t __timerid , struct itimerspec * __value ) noexcept ( true ) ; extern int timer_getoverrun ( timer_t __timerid ) noexcept ( true ) ; extern int timespec_get ( struct timespec * __ts , int __base ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/time.h 3 4 [NewLine] extern int getdate_err ; # /usr/include/time.h 3 4 [NewLine] extern struct tm * getdate ( const char * __string ) ; # /usr/include/time.h 3 4 [NewLine] extern int getdate_r ( const char * __restrict __string , struct tm * __restrict __resbufp ) ; } # /usr/include/c++/10.2.0/ctime 2 3 [NewLine] # /usr/include/c++/10.2.0/ctime 3 [NewLine] namespace std { using :: clock_t ; using :: time_t ; using :: tm ; using :: clock ; using :: difftime ; using :: mktime ; using :: time ; using :: asctime ; using :: ctime ; using :: gmtime ; using :: localtime ; using :: strftime ; } # /usr/include/opencascade/Standard_TypeDef.hxx 2 [NewLine] # /usr/include/opencascade/Standard_TypeDef.hxx [NewLine] # /usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stdint.h 1 3 4 [NewLine] # /usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stdint.h 3 4 [NewLine] # /usr/include/stdint.h 1 3 4 [NewLine] # /usr/include/stdint.h 3 4 [NewLine] # /usr/include/bits/libc-header-start.h 1 3 4 [NewLine] # /usr/include/stdint.h 2 3 4 [NewLine] # /usr/include/bits/wchar.h 1 3 4 [NewLine] # /usr/include/stdint.h 2 3 4 [NewLine] # /usr/include/bits/wordsize.h 1 3 4 [NewLine] # /usr/include/stdint.h 2 3 4 [NewLine] # /usr/include/bits/stdint-intn.h 1 3 4 [NewLine] # /usr/include/bits/stdint-intn.h 3 4 [NewLine] typedef __int8_t int8_t ;
## Error: identifier expected, but got: {!!!

type
  int16T* = Int16T
  int32T* = Int32T
  int64T* = Int64T
  uint8T* = Uint8T
  uint16T* = Uint16T
  uint32T* = Uint32T
  uint64T* = Uint64T
  intLeast8T* = IntLeast8T
  intLeast16T* = IntLeast16T
  intLeast32T* = IntLeast32T
  intLeast64T* = IntLeast64T
  uintLeast8T* = UintLeast8T
  uintLeast16T* = UintLeast16T
  uintLeast32T* = UintLeast32T
  uintLeast64T* = UintLeast64T
  intFast8T* = cchar
  intFast16T* = clong
  intFast32T* = clong
  intFast64T* = clong

## !!!Ignored construct:  typedef unsigned char uint_fast8_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int uint_fast16_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int uint_fast32_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int uint_fast64_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef long int intptr_t ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  typedef unsigned long int uintptr_t ;
## Error: identifier expected, but got: ;!!!

type
  intmaxT* = IntmaxT
  uintmaxT* = UintmaxT

## !!!Ignored construct:  extern C { typedef struct { long int quot ; long int rem ; } imaxdiv_t ; # /usr/include/inttypes.h 3 4 [NewLine] extern intmax_t imaxabs ( intmax_t __n ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; extern imaxdiv_t imaxdiv ( intmax_t __numer , intmax_t __denom ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; extern intmax_t strtoimax ( const char * __restrict __nptr , char * * __restrict __endptr , int __base ) noexcept ( true ) ; extern uintmax_t strtoumax ( const char * __restrict __nptr , char * * __restrict __endptr , int __base ) noexcept ( true ) ; extern intmax_t wcstoimax ( const wchar_t * __restrict __nptr , wchar_t * * __restrict __endptr , int __base ) noexcept ( true ) ; extern uintmax_t wcstoumax ( const wchar_t * __restrict __nptr , wchar_t * * __restrict __endptr , int __base ) noexcept ( true ) ; } # /usr/include/opencascade/Standard_TypeDef.hxx 2 [NewLine] # /usr/include/opencascade/Standard_Macro.hxx 1 [NewLine] # /usr/include/opencascade/Standard_TypeDef.hxx 2 [NewLine] # /usr/include/opencascade/Standard_TypeDef.hxx [NewLine] typedef int Standard_Integer ;
## Error: identifier expected, but got: {!!!

type
  StandardReal* = cdouble
  StandardBoolean* = bool
  StandardShortReal* = cfloat
  StandardCharacter* = char
  #StandardByte* = cuchar
  StandardAddress* = pointer
  #StandardSize* = csize_t
  StandardTime* = TimeT
  StandardUtf8Char* = char
  StandardUtf8UChar* = cuchar
  StandardExtCharacter* = char16T
  StandardUtf16Char* = char16T
  StandardUtf32Char* = char32T
  StandardWideChar* = WcharT
  StandardCString* = ptr StandardCharacter
  StandardExtString* = ptr StandardExtCharacter

## !!!Ignored construct:  extern C { # /usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h 1 3 4 [NewLine] # /usr/include/string.h 2 3 4 [NewLine] # /usr/include/string.h 3 4 [NewLine] extern void * memcpy ( void * __restrict __dest , const void * __restrict __src , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern void * memmove ( void * __dest , const void * __src , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern void * memccpy ( void * __restrict __dest , const void * __restrict __src , int __c , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) __attribute__ ( ( __access__ ( __write_only__ , 1 , 4 ) ) ) ; extern void * memset ( void * __s , int __c , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern int memcmp ( const void * __s1 , const void * __s2 , size_t __n ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern C++ { extern void * memchr ( void * __s , int __c , size_t __n ) noexcept ( true ) __asm ( memchr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern const void * memchr ( const void * __s , int __c , size_t __n ) noexcept ( true ) __asm ( memchr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/string.h 3 4 [NewLine] } # /usr/include/string.h 3 4 [NewLine] extern C++ void * rawmemchr ( void * __s , int __c ) noexcept ( true ) __asm ( rawmemchr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern C++ const void * rawmemchr ( const void * __s , int __c ) noexcept ( true ) __asm ( rawmemchr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern C++ void * memrchr ( void * __s , int __c , size_t __n ) noexcept ( true ) __asm ( memrchr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) __attribute__ ( ( __access__ ( __read_only__ , 1 , 3 ) ) ) ; extern C++ const void * memrchr ( const void * __s , int __c , size_t __n ) noexcept ( true ) __asm ( memrchr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) __attribute__ ( ( __access__ ( __read_only__ , 1 , 3 ) ) ) ; # /usr/include/string.h 3 4 [NewLine] extern char * strcpy ( char * __restrict __dest , const char * __restrict __src ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern char * strncpy ( char * __restrict __dest , const char * __restrict __src , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern char * strcat ( char * __restrict __dest , const char * __restrict __src ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern char * strncat ( char * __restrict __dest , const char * __restrict __src , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int strcmp ( const char * __s1 , const char * __s2 ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int strncmp ( const char * __s1 , const char * __s2 , size_t __n ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int strcoll ( const char * __s1 , const char * __s2 ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern size_t strxfrm ( char * __restrict __dest , const char * __restrict __src , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 2 ) ) ) __attribute__ ( ( __access__ ( __write_only__ , 1 , 3 ) ) ) ; extern int strcoll_l ( const char * __s1 , const char * __s2 , locale_t __l ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 , 3 ) ) ) ; extern size_t strxfrm_l ( char * __dest , const char * __src , size_t __n , locale_t __l ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 2 , 4 ) ) ) __attribute__ ( ( __access__ ( __write_only__ , 1 , 3 ) ) ) ; extern char * strdup ( const char * __s ) noexcept ( true ) __attribute__ ( ( __malloc__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern char * strndup ( const char * __string , size_t __n ) noexcept ( true ) __attribute__ ( ( __malloc__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/string.h 3 4 [NewLine] extern C++ { extern char * strchr ( char * __s , int __c ) noexcept ( true ) __asm ( strchr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern const char * strchr ( const char * __s , int __c ) noexcept ( true ) __asm ( strchr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/string.h 3 4 [NewLine] } extern C++ { extern char * strrchr ( char * __s , int __c ) noexcept ( true ) __asm ( strrchr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern const char * strrchr ( const char * __s , int __c ) noexcept ( true ) __asm ( strrchr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/string.h 3 4 [NewLine] } # /usr/include/string.h 3 4 [NewLine] extern C++ char * strchrnul ( char * __s , int __c ) noexcept ( true ) __asm ( strchrnul ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern C++ const char * strchrnul ( const char * __s , int __c ) noexcept ( true ) __asm ( strchrnul ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/string.h 3 4 [NewLine] extern size_t strcspn ( const char * __s , const char * __reject ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern size_t strspn ( const char * __s , const char * __accept ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern C++ { extern char * strpbrk ( char * __s , const char * __accept ) noexcept ( true ) __asm ( strpbrk ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern const char * strpbrk ( const char * __s , const char * __accept ) noexcept ( true ) __asm ( strpbrk ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; # /usr/include/string.h 3 4 [NewLine] } extern C++ { extern char * strstr ( char * __haystack , const char * __needle ) noexcept ( true ) __asm ( strstr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern const char * strstr ( const char * __haystack , const char * __needle ) noexcept ( true ) __asm ( strstr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; # /usr/include/string.h 3 4 [NewLine] } extern char * strtok ( char * __restrict __s , const char * __restrict __delim ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 2 ) ) ) ; extern char * __strtok_r ( char * __restrict __s , const char * __restrict __delim , char * * __restrict __save_ptr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 2 , 3 ) ) ) ; extern char * strtok_r ( char * __restrict __s , const char * __restrict __delim , char * * __restrict __save_ptr ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 2 , 3 ) ) ) ; extern C++ char * strcasestr ( char * __haystack , const char * __needle ) noexcept ( true ) __asm ( strcasestr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern C++ const char * strcasestr ( const char * __haystack , const char * __needle ) noexcept ( true ) __asm ( strcasestr ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; # /usr/include/string.h 3 4 [NewLine] extern void * memmem ( const void * __haystack , size_t __haystacklen , const void * __needle , size_t __needlelen ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 3 ) ) ) __attribute__ ( ( __access__ ( __read_only__ , 1 , 2 ) ) ) __attribute__ ( ( __access__ ( __read_only__ , 3 , 4 ) ) ) ; extern void * __mempcpy ( void * __restrict __dest , const void * __restrict __src , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern void * mempcpy ( void * __restrict __dest , const void * __restrict __src , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern size_t strlen ( const char * __s ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern size_t strnlen ( const char * __string , size_t __maxlen ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern char * strerror ( int __errnum ) noexcept ( true ) ; # /usr/include/string.h 3 4 [NewLine] extern char * strerror_r ( int __errnum , char * __buf , size_t __buflen ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 2 ) ) ) __attribute__ ( ( __access__ ( __write_only__ , 2 , 3 ) ) ) ; extern const char * strerrordesc_np ( int __err ) noexcept ( true ) ; extern const char * strerrorname_np ( int __err ) noexcept ( true ) ; extern char * strerror_l ( int __errnum , locale_t __l ) noexcept ( true ) ; # /usr/include/strings.h 1 3 4 [NewLine] # /usr/include/strings.h 3 4 [NewLine] # /usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/stddef.h 1 3 4 [NewLine] # /usr/include/strings.h 2 3 4 [NewLine] extern C { extern int bcmp ( const void * __s1 , const void * __s2 , size_t __n ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern void bcopy ( const void * __src , void * __dest , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern void bzero ( void * __s , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern C++ { extern char * index ( char * __s , int __c ) noexcept ( true ) __asm ( index ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern const char * index ( const char * __s , int __c ) noexcept ( true ) __asm ( index ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/strings.h 3 4 [NewLine] } extern C++ { extern char * rindex ( char * __s , int __c ) noexcept ( true ) __asm ( rindex ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern const char * rindex ( const char * __s , int __c ) noexcept ( true ) __asm ( rindex ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/strings.h 3 4 [NewLine] } # /usr/include/strings.h 3 4 [NewLine] extern int ffs ( int __i ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; extern int ffsl ( long int __l ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; __extension__ extern int ffsll ( long long int __ll ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; extern int strcasecmp ( const char * __s1 , const char * __s2 ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int strncasecmp ( const char * __s1 , const char * __s2 , size_t __n ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int strcasecmp_l ( const char * __s1 , const char * __s2 , locale_t __loc ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 , 3 ) ) ) ; extern int strncasecmp_l ( const char * __s1 , const char * __s2 , size_t __n , locale_t __loc ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 , 4 ) ) ) ; } # /usr/include/string.h 2 3 4 [NewLine] extern void explicit_bzero ( void * __s , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) __attribute__ ( ( __access__ ( __write_only__ , 1 , 2 ) ) ) ; extern char * strsep ( char * * __restrict __stringp , const char * __restrict __delim ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern char * strsignal ( int __sig ) noexcept ( true ) ; extern const char * sigabbrev_np ( int __sig ) noexcept ( true ) ; extern const char * sigdescr_np ( int __sig ) noexcept ( true ) ; extern char * __stpcpy ( char * __restrict __dest , const char * __restrict __src ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern char * stpcpy ( char * __restrict __dest , const char * __restrict __src ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern char * __stpncpy ( char * __restrict __dest , const char * __restrict __src , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern char * stpncpy ( char * __restrict __dest , const char * __restrict __src , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern int strverscmp ( const char * __s1 , const char * __s2 ) noexcept ( true ) __attribute__ ( ( __pure__ ) ) __attribute__ ( ( __nonnull__ ( 1 , 2 ) ) ) ; extern char * strfry ( char * __string ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern void * memfrob ( void * __s , size_t __n ) noexcept ( true ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) __attribute__ ( ( __access__ ( __write_only__ , 1 , 2 ) ) ) ; extern C++ char * basename ( char * __filename ) noexcept ( true ) __asm ( basename ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; extern C++ const char * basename ( const char * __filename ) noexcept ( true ) __asm ( basename ) __attribute__ ( ( __nonnull__ ( 1 ) ) ) ; # /usr/include/string.h 3 4 [NewLine] } # /usr/include/opencascade/Standard_Character.hxx 2 [NewLine] # /usr/include/c++/10.2.0/cctype 1 3 [NewLine] # /usr/include/c++/10.2.0/cctype 3 [NewLine] # /usr/include/c++/10.2.0/cctype 3 [NewLine] # /usr/include/ctype.h 1 3 4 [NewLine] # /usr/include/ctype.h 3 4 [NewLine] extern C { # /usr/include/ctype.h 3 4 [NewLine] enum { _ISupper = ( ( 0 ) < 8 ? ( ( 1 << ( 0 ) ) << 8 ) : ( ( 1 << ( 0 ) ) >> 8 ) ) , _ISlower = ( ( 1 ) < 8 ? ( ( 1 << ( 1 ) ) << 8 ) : ( ( 1 << ( 1 ) ) >> 8 ) ) , _ISalpha = ( ( 2 ) < 8 ? ( ( 1 << ( 2 ) ) << 8 ) : ( ( 1 << ( 2 ) ) >> 8 ) ) , _ISdigit = ( ( 3 ) < 8 ? ( ( 1 << ( 3 ) ) << 8 ) : ( ( 1 << ( 3 ) ) >> 8 ) ) , _ISxdigit = ( ( 4 ) < 8 ? ( ( 1 << ( 4 ) ) << 8 ) : ( ( 1 << ( 4 ) ) >> 8 ) ) , _ISspace = ( ( 5 ) < 8 ? ( ( 1 << ( 5 ) ) << 8 ) : ( ( 1 << ( 5 ) ) >> 8 ) ) , _ISprint = ( ( 6 ) < 8 ? ( ( 1 << ( 6 ) ) << 8 ) : ( ( 1 << ( 6 ) ) >> 8 ) ) , _ISgraph = ( ( 7 ) < 8 ? ( ( 1 << ( 7 ) ) << 8 ) : ( ( 1 << ( 7 ) ) >> 8 ) ) , _ISblank = ( ( 8 ) < 8 ? ( ( 1 << ( 8 ) ) << 8 ) : ( ( 1 << ( 8 ) ) >> 8 ) ) , _IScntrl = ( ( 9 ) < 8 ? ( ( 1 << ( 9 ) ) << 8 ) : ( ( 1 << ( 9 ) ) >> 8 ) ) , _ISpunct = ( ( 10 ) < 8 ? ( ( 1 << ( 10 ) ) << 8 ) : ( ( 1 << ( 10 ) ) >> 8 ) ) , _ISalnum = ( ( 11 ) < 8 ? ( ( 1 << ( 11 ) ) << 8 ) : ( ( 1 << ( 11 ) ) >> 8 ) ) } ; # /usr/include/ctype.h 3 4 [NewLine] extern const unsigned short int * * __ctype_b_loc ( void ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; extern const __int32_t * * __ctype_tolower_loc ( void ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; extern const __int32_t * * __ctype_toupper_loc ( void ) noexcept ( true ) __attribute__ ( ( __const__ ) ) ; # /usr/include/ctype.h 3 4 [NewLine] extern int isalnum ( int ) noexcept ( true ) ; extern int isalpha ( int ) noexcept ( true ) ; extern int iscntrl ( int ) noexcept ( true ) ; extern int isdigit ( int ) noexcept ( true ) ; extern int islower ( int ) noexcept ( true ) ; extern int isgraph ( int ) noexcept ( true ) ; extern int isprint ( int ) noexcept ( true ) ; extern int ispunct ( int ) noexcept ( true ) ; extern int isspace ( int ) noexcept ( true ) ; extern int isupper ( int ) noexcept ( true ) ; extern int isxdigit ( int ) noexcept ( true ) ; extern int tolower ( int __c ) noexcept ( true ) ; extern int toupper ( int __c ) noexcept ( true ) ; extern int isblank ( int ) noexcept ( true ) ; extern int isctype ( int __c , int __mask ) noexcept ( true ) ; extern int isascii ( int __c ) noexcept ( true ) ; extern int toascii ( int __c ) noexcept ( true ) ; extern int _toupper ( int ) noexcept ( true ) ; extern int _tolower ( int ) noexcept ( true ) ; # /usr/include/ctype.h 3 4 [NewLine] extern int isalnum_l ( int , locale_t ) noexcept ( true ) ; extern int isalpha_l ( int , locale_t ) noexcept ( true ) ; extern int iscntrl_l ( int , locale_t ) noexcept ( true ) ; extern int isdigit_l ( int , locale_t ) noexcept ( true ) ; extern int islower_l ( int , locale_t ) noexcept ( true ) ; extern int isgraph_l ( int , locale_t ) noexcept ( true ) ; extern int isprint_l ( int , locale_t ) noexcept ( true ) ; extern int ispunct_l ( int , locale_t ) noexcept ( true ) ; extern int isspace_l ( int , locale_t ) noexcept ( true ) ; extern int isupper_l ( int , locale_t ) noexcept ( true ) ; extern int isxdigit_l ( int , locale_t ) noexcept ( true ) ; extern int isblank_l ( int , locale_t ) noexcept ( true ) ; extern int __tolower_l ( int __c , locale_t __l ) noexcept ( true ) ; extern int tolower_l ( int __c , locale_t __l ) noexcept ( true ) ; extern int __toupper_l ( int __c , locale_t __l ) noexcept ( true ) ; extern int toupper_l ( int __c , locale_t __l ) noexcept ( true ) ; # /usr/include/ctype.h 3 4 [NewLine] } # /usr/include/c++/10.2.0/cctype 2 3 [NewLine] # /usr/include/c++/10.2.0/cctype 3 [NewLine] namespace std { using :: isalnum ; using :: isalpha ; using :: iscntrl ; using :: isdigit ; using :: isgraph ; using :: islower ; using :: isprint ; using :: ispunct ; using :: isspace ; using :: isupper ; using :: isxdigit ; using :: tolower ; using :: toupper ; } namespace std { using :: isblank ; } # /usr/include/opencascade/Standard_Character.hxx 2 [NewLine] # /usr/include/opencascade/Standard_Character.hxx [NewLine] inline Standard_Boolean IsEqual ( const Standard_Character One , const Standard_Character Two ) { return One == Two ; } # /usr/include/opencascade/Standard_Character.hxx [NewLine] inline Standard_Boolean IsAlphabetic ( const Standard_Character me ) { return std :: isalpha ( ( unsigned char ) me ) != 0 ; } inline Standard_Boolean IsDigit ( const Standard_Character me ) { return std :: isdigit ( ( unsigned char ) me ) != 0 ; } inline Standard_Boolean IsXDigit ( const Standard_Character me ) { return std :: isxdigit ( ( unsigned char ) me ) != 0 ; } inline Standard_Boolean IsAlphanumeric ( const Standard_Character me ) { return ( IsAlphabetic ( me ) || IsDigit ( me ) ) ; } inline Standard_Boolean IsControl ( const Standard_Character me ) { return std :: iscntrl ( ( unsigned char ) me ) != 0 ; } inline Standard_Boolean IsGraphic ( const Standard_Character me ) { return std :: isgraph ( ( unsigned char ) me ) != 0 ; } inline Standard_Boolean IsLowerCase ( const Standard_Character me ) { return std :: islower ( ( unsigned char ) me ) != 0 ; } inline Standard_Boolean IsPrintable ( const Standard_Character me ) { return std :: isprint ( ( unsigned char ) me ) != 0 ; } inline Standard_Boolean IsPunctuation ( const Standard_Character me ) { return ( IsGraphic ( me ) && ! IsAlphanumeric ( me ) ) ; } inline Standard_Boolean IsSpace ( const Standard_Character me ) { return std :: isspace ( ( unsigned char ) me ) != 0 ; } inline Standard_Boolean IsUpperCase ( const Standard_Character me ) { return std :: isupper ( ( unsigned char ) me ) != 0 ; } inline Standard_Character LowerCase ( const Standard_Character me ) { return ( Standard_Character ) ( unsigned char ) std :: tolower ( ( unsigned char ) me ) ; } inline Standard_Character UpperCase ( const Standard_Character me ) { return ( Standard_Character ) ( unsigned char ) std :: toupper ( ( unsigned char ) me ) ; }
## Error: identifier expected, but got: {!!!

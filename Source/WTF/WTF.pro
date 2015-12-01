# -------------------------------------------------------------------
# Project file for WTF
#
# See 'Tools/qmake/README' for an overview of the build system
# -------------------------------------------------------------------
TEMPLATE = lib
TARGET = WTF

include(WTF.pri)

CONFIG += staticlib optimize_full

VPATH += $$PWD/wtf

INCLUDEPATH += $$PWD/wtf \
    $$PWD/wtf/dtoa \
    $$PWD/wtf/text \
    $$PWD/wtf/threads \
    $$PWD/wtf/unicode

HEADERS += \
    ASCIICType.h \
    Assertions.h \
    Atomics.h \
    Bag.h \
    BagToHashMap.h \
    BitVector.h \
    Bitmap.h \
    BubbleSort.h \
    BumpPointerAllocator.h \
    ByteOrder.h \
    CompilationThread.h \
    Compiler.h \
    Condition.h \
    CryptographicUtilities.h \
    CryptographicallyRandomNumber.h \
    CurrentTime.h \
    DataLog.h \
    DateMath.h \
    Dominators.h \
    DecimalNumber.h \
    DeferrableRefCounted.h \
    Deque.h \
    DisallowCType.h \
    DoublyLinkedList.h \
    FastMalloc.h \
    FeatureDefines.h \
    FilePrintStream.h \
    FlipBytes.h \
    Forward.h \
    FunctionDispatcher.h \
    Functional.h \
    GetPtr.h \
    GraphNodeWorklist.h \
    GregorianDateTime.h \
    HashCountedSet.h \
    Hasher.h \
    HashFunctions.h \
    HashIterators.h \
    HashMap.h \
    HashMethod.h \
    HashSet.h \
    HashTable.h \
    HashTraits.h \
    HexNumber.h \
    IteratorAdaptors.h \
    IteratorRange.h \
    ListHashSet.h \
    Lock.h \
    Locker.h \
    MD5.h \
    MainThread.h \
    MallocPtr.h \
    MathExtras.h \
    MediaTime.h \
    MessageQueue.h \
    MetaAllocator.h \
    MetaAllocatorHandle.h \
    Noncopyable.h \
    NumberOfCores.h \
    OSAllocator.h \
    OSRandomSource.h \
    PageAllocation.h \
    PageBlock.h \
    PageReservation.h \
    ParallelHelperPool.h \
    ParallelJobs.h \
    ParallelJobsGeneric.h \
    ParallelJobsLibdispatch.h \
    ParallelJobsOpenMP.h \
    ParallelVectorIterator.h \
    ParkingLot.h \
    PassRefPtr.h \
    Platform.h \
    PrintStream.h \
    ProcessID.h \
    RAMSize.h \
    RandomNumber.h \
    RandomNumberSeed.h \
    RawPointer.h \
    RedBlackTree.h \
    Ref.h \
    RefCounted.h \
    RefCountedLeakCounter.h \
    RefCounter.h \
    RefPtr.h \
    RetainPtr.h \
    RunLoop.h \
    SHA1.h \
    SharedTask.h \
    SaturatedArithmetic.h \
    ScopedLambda.h \
    SegmentedVector.h \
    StackBounds.h \
    StackStats.h \
    StaticConstructors.h \
    StdLibExtras.h \
    Stopwatch.h \
    StringExtras.h \
    StringPrintStream.h \
    ThreadIdentifierDataPthreads.h \
    ThreadSafeRefCounted.h \
    ThreadSpecific.h \
    Threading.h \
    ThreadingPrimitives.h \
    TinyPtrSet.h \
    VMTags.h \
    ValueCheck.h \
    Vector.h \
    VectorTraits.h \
    WTFThreadData.h \
    WeakPtr.h \
    WordLock.h \
    WorkQueue.h \
    \
    dtoa.h \
    dtoa/bignum-dtoa.h \
    dtoa/bignum.h \
    dtoa/cached-powers.h \
    dtoa/diy-fp.h \
    dtoa/double-conversion.h \
    dtoa/double.h \
    dtoa/fast-dtoa.h \
    dtoa/fixed-dtoa.h \
    dtoa/strtod.h \
    dtoa/utils.h \
    \
    text/AtomicString.h \
    text/AtomicStringImpl.h \
    text/AtomicStringTable.h \
    text/Base64.h \
    text/CString.h \
    text/IntegerToStringConversion.h \
    text/LChar.h \
    text/StringBuffer.h \
    text/StringCommon.h \
    text/StringHash.h \
    text/StringImpl.h \
    text/StringView.h \
    text/SymbolImpl.h \
    text/SymbolRegistry.h \
    text/UniquedStringImpl.h \
    text/WTFString.h \
    \
    threads/BinarySemaphore.h \
    \
    unicode/CharacterNames.h \
    unicode/Collator.h \
    unicode/UTF8.h

SOURCES += \
    Assertions.cpp \
    Atomics.cpp \
    BitVector.cpp \
    CompilationThread.cpp \
    CryptographicUtilities.cpp \
    CryptographicallyRandomNumber.cpp \
    CurrentTime.cpp \
    DataLog.cpp \
    DateMath.cpp \
    DecimalNumber.cpp \
    FastBitVector.cpp \
    FastMalloc.cpp \
    FilePrintStream.cpp \
    FunctionDispatcher.cpp \
    GregorianDateTime.cpp \
    HashTable.cpp \
    Lock.cpp \
    MD5.cpp \
    MainThread.cpp \
    MediaTime.cpp \
    MetaAllocator.cpp \
    NumberOfCores.cpp \
    OSRandomSource.cpp \
    PageBlock.cpp \
    ParallelHelperPool.cpp \
    ParallelJobsGeneric.cpp \
    ParkingLot.cpp \
    PrintStream.cpp \
    RAMSize.cpp \
    RandomNumber.cpp \
    RefCountedLeakCounter.cpp \
    RefCounter.cpp \
    RunLoop.cpp \
    SHA1.cpp \
    SixCharacterHash.cpp \
    StackBounds.cpp \
    StackStats.cpp \
    StringPrintStream.cpp \
    Threading.cpp \
    WTFThreadData.cpp \
    WordLock.cpp \
    WorkQueue.cpp \
    dtoa.cpp \
    \
    dtoa/bignum-dtoa.cc \
    dtoa/bignum.cc \
    dtoa/cached-powers.cc \
    dtoa/diy-fp.cc \
    dtoa/double-conversion.cc \
    dtoa/fast-dtoa.cc \
    dtoa/fixed-dtoa.cc \
    dtoa/strtod.cc \
    \
    qt/MainThreadQt.cpp \
    qt/RunLoopQt.cpp \
    qt/StringQt.cpp \
    qt/WorkQueueQt.cpp \
    \
    text/AtomicString.cpp \
    text/AtomicStringImpl.cpp \
    text/AtomicStringTable.cpp \
    text/Base64.cpp \
    text/CString.cpp \
    text/StringBuilder.cpp \
    text/StringImpl.cpp \
    text/StringStatics.cpp \
    text/StringView.cpp \
    text/SymbolRegistry.cpp \
    text/WTFString.cpp \
    \
    threads/BinarySemaphore.cpp \
    \
    unicode/UTF8.cpp \
    \
    unicode/icu/CollatorICU.cpp

unix: SOURCES += \
    mbmalloc.cpp \
    OSAllocatorPosix.cpp \
    ThreadIdentifierDataPthreads.cpp \
    ThreadingPthreads.cpp

win*: SOURCES += \
    OSAllocatorWin.cpp \
    ThreadSpecificWin.cpp \
    ThreadingWin.cpp

QT += core network
QT -= gui

*sh4* {
    QMAKE_CXXFLAGS += -mieee -w
    QMAKE_CFLAGS   += -mieee -w
}

*-g++*:lessThan(QT_GCC_MAJOR_VERSION, 5):lessThan(QT_GCC_MINOR_VERSION, 6) {
    # For GCC 4.5 and before we disable C++0x mode in JSC for if enabled in Qt's mkspec
    QMAKE_CXXFLAGS -= -std=c++0x -std=gnu++0x -std=c++11 -std=gnu++11
}

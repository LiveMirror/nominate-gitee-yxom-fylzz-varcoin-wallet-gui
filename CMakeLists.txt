cmake_minimum_required(VERSION 2.8)

include(VarNoteWallet.cmake)

#set(CMAKE_PREFIX_PATH /opt/Qt5.8.0/5.8/gcc_64)

project(${CN_PROJECT_NAME})

execute_process(COMMAND git log -1 --pretty=format:%h
WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
OUTPUT_VARIABLE GIT_REVISION)

set(VARNOTE_LIB varnote)

include_directories(${CMAKE_BINARY_DIR}
    src
    varnote/external
    varnote/include
    varnote/src)

find_package(Qt5Gui REQUIRED)
find_package(Qt5Widgets REQUIRED)

set(Boost_USE_STATIC_LIBS ON)
if(WIN32)
  set(Boost_USE_STATIC_RUNTIME OFF)
else(WIN32)
  set(Boost_USE_STATIC_RUNTIME ON)
endif(WIN32)

find_package(Boost 1.55 REQUIRED COMPONENTS date_time filesystem program_options regex serialization system thread chrono)
if ((${Boost_MAJOR_VERSION} EQUAL 1) AND (${Boost_MINOR_VERSION} EQUAL 54))
	message(SEND_ERROR "Boost version 1.54 is unsupported, more details are available here http://goo.gl/RrCFmA")
endif ()

include_directories(${Boost_INCLUDE_DIRS})
link_directories(${Boost_LIBRARY_DIRS})

set(VERSION "")
configure_file("varnote/src/version.h.in" "version.h")
configure_file("src/VarNoteWalletConfig.h.in" "VarNoteWalletConfig.h")

add_definitions(-DGIT_REVISION=\"${GIT_REVISION}\")

set(CMAKE_AUTOMOC ON)

set(CMAKE_PREFIX_PATH "/opt/Qt5.8.0/5.8/gcc_64")

set(VARNOTE_SOURCES
  varnote/external/miniupnpc/connecthostport.c
  varnote/external/miniupnpc/igd_desc_parse.c
  varnote/external/miniupnpc/minisoap.c
  varnote/external/miniupnpc/miniupnpc.c
  varnote/external/miniupnpc/miniwget.c
  varnote/external/miniupnpc/minixml.c
  varnote/external/miniupnpc/portlistingparse.c
  varnote/external/miniupnpc/receivedata.c
  varnote/external/miniupnpc/upnpcommands.c
  varnote/external/miniupnpc/upnpreplyparse.c
  varnote/src/Common/Base58.cpp
  varnote/src/Common/CommandLine.cpp
  varnote/src/Common/Util.cpp
  varnote/src/Common/StringTools.cpp
  varnote/src/Common/JsonValue.cpp
  varnote/src/Common/ConsoleTools.cpp
  varnote/src/Common/MemoryInputStream.cpp
  varnote/src/Common/PathTools.cpp
  varnote/src/Common/StdInputStream.cpp
  varnote/src/Common/StdOutputStream.cpp
  varnote/src/Common/StreamTools.cpp
  varnote/src/Common/StringOutputStream.cpp
  varnote/src/Common/StringView.cpp
  varnote/src/Common/VectorOutputStream.cpp
  varnote/src/crypto/blake256.c
  varnote/src/crypto/chacha8.c
  varnote/src/crypto/crypto-ops-data.c
  varnote/src/crypto/crypto-ops.c
  varnote/src/crypto/crypto.cpp
  varnote/src/crypto/groestl.c
  varnote/src/crypto/hash-extra-blake.c
  varnote/src/crypto/hash-extra-groestl.c
  varnote/src/crypto/hash-extra-jh.c
  varnote/src/crypto/hash-extra-skein.c
  varnote/src/crypto/hash.c
  varnote/src/crypto/jh.c
  varnote/src/crypto/keccak.c
  varnote/src/crypto/oaes_lib.c
  varnote/src/crypto/random.c
  varnote/src/crypto/skein.c
  varnote/src/crypto/slow-hash.c
  varnote/src/crypto/slow-hash.cpp
  varnote/src/crypto/tree-hash.c
  varnote/src/VarNoteCore/BlockchainIndices.cpp
  varnote/src/VarNoteCore/BlockchainMessages.cpp
  varnote/src/VarNoteCore/BlockIndex.cpp
  varnote/src/VarNoteCore/CoreConfig.cpp
  varnote/src/VarNoteCore/VarNoteBasic.cpp
  varnote/src/VarNoteCore/VarNoteTools.cpp
  varnote/src/VarNoteCore/Currency.cpp
  varnote/src/VarNoteCore/MinerConfig.cpp
  varnote/src/VarNoteCore/Transaction.cpp
  varnote/src/VarNoteCore/Account.cpp
  varnote/src/VarNoteCore/Blockchain.cpp
  varnote/src/VarNoteCore/Checkpoints.cpp
  varnote/src/VarNoteCore/VarNoteBasicImpl.cpp
  varnote/src/VarNoteCore/Core.cpp
  varnote/src/VarNoteCore/VarNoteFormatUtils.cpp
  varnote/src/VarNoteCore/VarNoteSerialization.cpp
  varnote/src/VarNoteCore/Difficulty.cpp
  varnote/src/VarNoteCore/IBlock.cpp
  varnote/src/VarNoteCore/Miner.cpp
  varnote/src/VarNoteCore/TransactionExtra.cpp
  varnote/src/VarNoteCore/TransactionPool.cpp
  varnote/src/VarNoteCore/TransactionPrefixImpl.cpp
  varnote/src/VarNoteCore/TransactionUtils.cpp
  varnote/src/InProcessNode/InProcessNode.cpp
  varnote/src/InProcessNode/InProcessNodeErrors.cpp
  varnote/src/NodeRpcProxy/NodeErrors.cpp
  varnote/src/NodeRpcProxy/NodeRpcProxy.cpp
  varnote/src/P2p/NetNodeConfig.cpp
  varnote/src/Serialization/BinaryInputStreamSerializer.cpp
  varnote/src/Serialization/BinaryOutputStreamSerializer.cpp
  varnote/src/Serialization/JsonInputValueSerializer.cpp
  varnote/src/Serialization/JsonOutputStreamSerializer.cpp
  varnote/src/Serialization/KVBinaryInputStreamSerializer.cpp
  varnote/src/Serialization/KVBinaryOutputStreamSerializer.cpp
  varnote/src/Serialization/SerializationOverloads.cpp
  varnote/src/Transfers/BlockchainSynchronizer.cpp
  varnote/src/Transfers/SynchronizationState.cpp
  varnote/src/Transfers/TransfersConsumer.cpp
  varnote/src/Transfers/TransfersContainer.cpp
  varnote/src/Transfers/TransfersSubscription.cpp
  varnote/src/Transfers/TransfersSynchronizer.cpp
  varnote/src/Wallet/LegacyKeysImporter.cpp
  varnote/src/Wallet/WalletAsyncContextCounter.cpp
  varnote/src/Wallet/WalletErrors.cpp
  varnote/src/WalletLegacy/KeysStorage.cpp
  varnote/src/WalletLegacy/WalletLegacy.cpp
  varnote/src/WalletLegacy/WalletHelper.cpp
  varnote/src/WalletLegacy/WalletLegacySerializer.cpp
  varnote/src/WalletLegacy/WalletLegacySerialization.cpp
  varnote/src/WalletLegacy/WalletTransactionSender.cpp
  varnote/src/WalletLegacy/WalletUnconfirmedTransactions.cpp
  varnote/src/WalletLegacy/WalletUserTransactionsCache.cpp
  varnote/src/System/ContextGroup.cpp
  varnote/src/System/Event.cpp
  varnote/src/System/EventLock.cpp
  varnote/src/System/InterruptedException.cpp
  varnote/src/System/Ipv4Address.cpp
  varnote/src/System/TcpStream.cpp
  varnote/src/HTTP/HttpRequest.cpp
  varnote/src/HTTP/HttpParser.cpp
  varnote/src/HTTP/HttpParserErrorCodes.cpp
  varnote/src/HTTP/HttpResponse.cpp
  varnote/src/Rpc/HttpClient.cpp
  varnote/src/Rpc/JsonRpc.cpp
  varnote/src/P2p/NetNode.cpp
  varnote/src/P2p/LevinProtocol.cpp
  varnote/src/P2p/NetNodeConfig.cpp
  varnote/src/P2p/PeerListManager.cpp
  varnote/src/VarNoteProtocol/VarNoteProtocolHandler.cpp
  varnote/src/Logging/ILogger.cpp
  varnote/src/Logging/LoggerGroup.cpp
  varnote/src/Logging/CommonLogger.cpp
  varnote/src/Logging/LoggerManager.cpp
  varnote/src/Logging/FileLogger.cpp
  varnote/src/Logging/StreamLogger.cpp
  varnote/src/Logging/ConsoleLogger.cpp
  varnote/src/Logging/LoggerMessage.cpp
  varnote/src/Logging/LoggerRef.cpp
  varnote/src/BlockchainExplorer/BlockchainExplorer.cpp
  varnote/src/BlockchainExplorer/BlockchainExplorerDataBuilder.cpp
  varnote/src/BlockchainExplorer/BlockchainExplorerErrors.cpp
)

file(GLOB_RECURSE SOURCES src/*.cpp)
file(GLOB_RECURSE HEADERS src/*.h)
file(GLOB_RECURSE FORMS src/gui/ui/*.ui)

set(QRC src/resources.qrc)

qt5_wrap_ui(UIS ${FORMS})
qt5_add_resources(RCC ${QRC})


if (WIN32)
  if (NOT MSVC)
	message(FATAL_ERROR "Only MSVC is supported on this platform")
  endif ()
  add_definitions(/D_CRT_SECURE_NO_WARNINGS /D_WIN32_WINNT=0x0600 /DSTATICLIB)
  include_directories(varnote/src/platform/msc)

  set(PLATFORM_DIR Windows)
  set(BUILD_PLATFORM WIN32)
  set(BUILD_RESOURCES src/varnotewallet.rc)
  set(QTMAIN Qt5::WinMain)

elseif (UNIX)
  set(VARNOTE_SOURCES ${VARNOTE_SOURCES} varnote/external/miniupnpc/minissdpc.c)
  if (APPLE)
    enable_language(ASM)
    file(GLOB_RECURSE OBJC_SOURCES src/*.mm)
    set(SOURCES ${SOURCES} ${OBJC_SOURCES})
    set(PLATFORM_DIR OSX)
    set(MACOSX_BUNDLE_INFO_STRING "Varnote GUI wallet")
    set(MACOSX_BUNDLE_LONG_VERSION_STRING "${VERSION_VERSION}.${VERSION_MINOR}.${VERSION_PATCH}")
    set(MACOSX_BUNDLE_BUNDLE_NAME VarnoteWallet)
    set(MACOSX_BUNDLE_SHORT_VERSION_STRING "${VERSION_VERSION}.${VERSION_MINOR}.${VERSION_PATCH}")
    set(MACOSX_BUNDLE_BUNDLE_VERSION "$${VERSION_VERSION}.${VERSION_MINOR}.${VERSION_PATCH}")

    find_package(Qt5PrintSupport REQUIRED)

    include_directories(/usr/include/malloc)

    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -maes -std=c++11 -stdlib=libc++")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c11 -maes -D_DARWIN_C_SOURCE")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -framework Cocoa -framework OpenGL -framework CoreFoundation -framework Carbon -framework IOKit -L/usr/lib")

    set(MACOSX_BUNDLE_ICON_FILE varnote.icns)
    set(APPLICATION_ICON src/images/varnote.icns)
    set_source_files_properties(${APPLICATION_ICON} PROPERTIES MACOSX_PACKAGE_LOCATION "Resources")

    set(BUILD_PLATFORM MACOSX_BUNDLE)
    set(BUILD_RESOURCES ${APPLICATION_ICON})
	
    GET_TARGET_PROPERTY(QT_LIB_DIR "${Qt5Widgets_LIBRARIES}" LOCATION)
    GET_FILENAME_COMPONENT(QT_LIB_DIR "${QT_LIB_DIR}" PATH)
  else(APPLE)
    set(PLATFORM_DIR Linux)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -maes -std=c++11")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -maes -std=c11")
  endif (APPLE)
endif ()

include_directories(varnote/src/Platform/${PLATFORM_DIR})
file(GLOB PLATFORM_SOURCES varnote/src/Platform/${PLATFORM_DIR}/System/*)
set(VARNOTE_SOURCES ${VARNOTE_SOURCES} ${PLATFORM_SOURCES})

add_library(${VARNOTE_LIB} STATIC ${VARNOTE_SOURCES})
set_target_properties(${VARNOTE_LIB} PROPERTIES COMPILE_DEFINITIONS _GNU_SOURCE)
target_link_libraries(${VARNOTE_LIB} ${Boost_LIBRARIES})

add_executable(${PROJECT_NAME} ${BUILD_PLATFORM} ${BUILD_RESOURCES} ${SOURCES} ${HEADERS} ${UIS} ${RCC})
set_target_properties(${PROJECT_NAME} PROPERTIES COMPILE_DEFINITIONS _GNU_SOURCE)
target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES} ${QTMAIN} ${VARNOTE_LIB})

if (APPLE)
  qt5_use_modules(${PROJECT_NAME} PrintSupport)
elseif (UNIX)
  target_link_libraries(${PROJECT_NAME} -lpthread)
elseif (WIN32)
  target_link_libraries(${PROJECT_NAME} Imm32 Iphlpapi Winmm)
endif (APPLE)

qt5_use_modules(${PROJECT_NAME} Widgets Gui)

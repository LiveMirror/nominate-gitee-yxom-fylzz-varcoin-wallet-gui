set(AM_SOURCES "/root/varcoin-wallet-gui/varnote/src/Common/Base58.cpp;/root/varcoin-wallet-gui/varnote/src/Common/CommandLine.cpp;/root/varcoin-wallet-gui/varnote/src/Common/Util.cpp;/root/varcoin-wallet-gui/varnote/src/Common/StringTools.cpp;/root/varcoin-wallet-gui/varnote/src/Common/JsonValue.cpp;/root/varcoin-wallet-gui/varnote/src/Common/ConsoleTools.cpp;/root/varcoin-wallet-gui/varnote/src/Common/MemoryInputStream.cpp;/root/varcoin-wallet-gui/varnote/src/Common/PathTools.cpp;/root/varcoin-wallet-gui/varnote/src/Common/StdInputStream.cpp;/root/varcoin-wallet-gui/varnote/src/Common/StdOutputStream.cpp;/root/varcoin-wallet-gui/varnote/src/Common/StreamTools.cpp;/root/varcoin-wallet-gui/varnote/src/Common/StringOutputStream.cpp;/root/varcoin-wallet-gui/varnote/src/Common/StringView.cpp;/root/varcoin-wallet-gui/varnote/src/Common/VectorOutputStream.cpp;/root/varcoin-wallet-gui/varnote/src/crypto/crypto.cpp;/root/varcoin-wallet-gui/varnote/src/crypto/slow-hash.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/BlockchainIndices.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/BlockchainMessages.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/BlockIndex.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/CoreConfig.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/VarNoteBasic.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/VarNoteTools.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/Currency.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/MinerConfig.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/Transaction.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/Account.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/Blockchain.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/Checkpoints.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/VarNoteBasicImpl.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/Core.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/VarNoteFormatUtils.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/VarNoteSerialization.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/Difficulty.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/IBlock.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/Miner.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/TransactionExtra.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/TransactionPool.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/TransactionPrefixImpl.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteCore/TransactionUtils.cpp;/root/varcoin-wallet-gui/varnote/src/InProcessNode/InProcessNode.cpp;/root/varcoin-wallet-gui/varnote/src/InProcessNode/InProcessNodeErrors.cpp;/root/varcoin-wallet-gui/varnote/src/NodeRpcProxy/NodeErrors.cpp;/root/varcoin-wallet-gui/varnote/src/NodeRpcProxy/NodeRpcProxy.cpp;/root/varcoin-wallet-gui/varnote/src/P2p/NetNodeConfig.cpp;/root/varcoin-wallet-gui/varnote/src/Serialization/BinaryInputStreamSerializer.cpp;/root/varcoin-wallet-gui/varnote/src/Serialization/BinaryOutputStreamSerializer.cpp;/root/varcoin-wallet-gui/varnote/src/Serialization/JsonInputValueSerializer.cpp;/root/varcoin-wallet-gui/varnote/src/Serialization/JsonOutputStreamSerializer.cpp;/root/varcoin-wallet-gui/varnote/src/Serialization/KVBinaryInputStreamSerializer.cpp;/root/varcoin-wallet-gui/varnote/src/Serialization/KVBinaryOutputStreamSerializer.cpp;/root/varcoin-wallet-gui/varnote/src/Serialization/SerializationOverloads.cpp;/root/varcoin-wallet-gui/varnote/src/Transfers/BlockchainSynchronizer.cpp;/root/varcoin-wallet-gui/varnote/src/Transfers/SynchronizationState.cpp;/root/varcoin-wallet-gui/varnote/src/Transfers/TransfersConsumer.cpp;/root/varcoin-wallet-gui/varnote/src/Transfers/TransfersContainer.cpp;/root/varcoin-wallet-gui/varnote/src/Transfers/TransfersSubscription.cpp;/root/varcoin-wallet-gui/varnote/src/Transfers/TransfersSynchronizer.cpp;/root/varcoin-wallet-gui/varnote/src/Wallet/LegacyKeysImporter.cpp;/root/varcoin-wallet-gui/varnote/src/Wallet/WalletAsyncContextCounter.cpp;/root/varcoin-wallet-gui/varnote/src/Wallet/WalletErrors.cpp;/root/varcoin-wallet-gui/varnote/src/WalletLegacy/KeysStorage.cpp;/root/varcoin-wallet-gui/varnote/src/WalletLegacy/WalletLegacy.cpp;/root/varcoin-wallet-gui/varnote/src/WalletLegacy/WalletHelper.cpp;/root/varcoin-wallet-gui/varnote/src/WalletLegacy/WalletLegacySerializer.cpp;/root/varcoin-wallet-gui/varnote/src/WalletLegacy/WalletLegacySerialization.cpp;/root/varcoin-wallet-gui/varnote/src/WalletLegacy/WalletTransactionSender.cpp;/root/varcoin-wallet-gui/varnote/src/WalletLegacy/WalletUnconfirmedTransactions.cpp;/root/varcoin-wallet-gui/varnote/src/WalletLegacy/WalletUserTransactionsCache.cpp;/root/varcoin-wallet-gui/varnote/src/System/ContextGroup.cpp;/root/varcoin-wallet-gui/varnote/src/System/Event.cpp;/root/varcoin-wallet-gui/varnote/src/System/EventLock.cpp;/root/varcoin-wallet-gui/varnote/src/System/InterruptedException.cpp;/root/varcoin-wallet-gui/varnote/src/System/Ipv4Address.cpp;/root/varcoin-wallet-gui/varnote/src/System/TcpStream.cpp;/root/varcoin-wallet-gui/varnote/src/HTTP/HttpRequest.cpp;/root/varcoin-wallet-gui/varnote/src/HTTP/HttpParser.cpp;/root/varcoin-wallet-gui/varnote/src/HTTP/HttpParserErrorCodes.cpp;/root/varcoin-wallet-gui/varnote/src/HTTP/HttpResponse.cpp;/root/varcoin-wallet-gui/varnote/src/Rpc/HttpClient.cpp;/root/varcoin-wallet-gui/varnote/src/Rpc/JsonRpc.cpp;/root/varcoin-wallet-gui/varnote/src/P2p/NetNode.cpp;/root/varcoin-wallet-gui/varnote/src/P2p/LevinProtocol.cpp;/root/varcoin-wallet-gui/varnote/src/P2p/PeerListManager.cpp;/root/varcoin-wallet-gui/varnote/src/VarNoteProtocol/VarNoteProtocolHandler.cpp;/root/varcoin-wallet-gui/varnote/src/Logging/ILogger.cpp;/root/varcoin-wallet-gui/varnote/src/Logging/LoggerGroup.cpp;/root/varcoin-wallet-gui/varnote/src/Logging/CommonLogger.cpp;/root/varcoin-wallet-gui/varnote/src/Logging/LoggerManager.cpp;/root/varcoin-wallet-gui/varnote/src/Logging/FileLogger.cpp;/root/varcoin-wallet-gui/varnote/src/Logging/StreamLogger.cpp;/root/varcoin-wallet-gui/varnote/src/Logging/ConsoleLogger.cpp;/root/varcoin-wallet-gui/varnote/src/Logging/LoggerMessage.cpp;/root/varcoin-wallet-gui/varnote/src/Logging/LoggerRef.cpp;/root/varcoin-wallet-gui/varnote/src/BlockchainExplorer/BlockchainExplorer.cpp;/root/varcoin-wallet-gui/varnote/src/BlockchainExplorer/BlockchainExplorerDataBuilder.cpp;/root/varcoin-wallet-gui/varnote/src/BlockchainExplorer/BlockchainExplorerErrors.cpp;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/Ipv4Resolver.cpp;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/TcpConnection.cpp;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/Dispatcher.cpp;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/ErrorMessage.cpp;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/TcpConnector.cpp;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/TcpListener.cpp;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/Timer.cpp" )
set(AM_RCC_SOURCES  )
set(AM_RCC_INPUTS )
set(AM_SKIP_MOC "" )
set(AM_SKIP_UIC  )
set(AM_HEADERS "/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/ErrorMessage.h;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/Dispatcher.h;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/Future.h;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/Ipv4Resolver.h;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/TcpListener.h;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/TcpConnector.h;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/TcpConnection.h;/root/varcoin-wallet-gui/varnote/src/Platform/Linux/System/Timer.h" )
set(AM_MOC_COMPILE_DEFINITIONS "GIT_REVISION=\"8a7a04b\";_GNU_SOURCE")
set(AM_MOC_INCLUDES "/root/varcoin-wallet-gui;/root/varcoin-wallet-gui/src;/root/varcoin-wallet-gui/varnote/external;/root/varcoin-wallet-gui/varnote/include;/root/varcoin-wallet-gui/varnote/src;/usr/local/include;/root/varcoin-wallet-gui/varnote/src/Platform/Linux")
set(AM_MOC_OPTIONS "")
set(AM_CMAKE_INCLUDE_DIRECTORIES_PROJECT_BEFORE "")
set(AM_CMAKE_BINARY_DIR "/root/varcoin-wallet-gui/")
set(AM_CMAKE_SOURCE_DIR "/root/varcoin-wallet-gui/")
set(AM_QT_MOC_EXECUTABLE "/usr/lib/x86_64-linux-gnu/qt5/bin/moc")
set(AM_QT_UIC_EXECUTABLE "")
set(AM_QT_RCC_EXECUTABLE "")
if(DEFINED ENV{DEB_BUILD_MULTIARCH} AND DEFINED ENV{DEB_HOST_MULTIARCH} AND "/usr/lib/x86_64-linux-gnu/qt5/bin/moc" MATCHES "/usr/lib/$ENV{DEB_HOST_MULTIARCH}/qt5/bin/moc")
  set(AM_QT_MOC_EXECUTABLE "/usr/lib/$ENV{DEB_BUILD_MULTIARCH}/qt5/bin/moc")
endif()
set(AM_CMAKE_CURRENT_SOURCE_DIR "/root/varcoin-wallet-gui/")
set(AM_CMAKE_CURRENT_BINARY_DIR "/root/varcoin-wallet-gui/")
set(AM_QT_VERSION_MAJOR "5")
set(AM_TARGET_NAME "varnote_automoc")
set(AM_ORIGIN_TARGET_NAME "varnote")
set(AM_RELAXED_MODE "FALSE")
set(AM_UIC_TARGET_OPTIONS )
set(AM_UIC_OPTIONS_FILES )
set(AM_UIC_OPTIONS_OPTIONS )
set(AM_RCC_OPTIONS_FILES )
set(AM_RCC_OPTIONS_OPTIONS )

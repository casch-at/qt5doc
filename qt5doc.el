;;; qt5doc.el --- Search for Qt 5 documentation
;; Copyright (c) Christian Schwarzgruber <c.schwarzgruber.cs@gmail.com>
;; Author: Christian Schwarzgruber
;; Description: Search for offline Qt 5 documentation
;; Version: 0.1

;; Change Log:
;; 22-Mar-2015    Christian Schwarzgruber
;;    ;; Last-Updated:
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Created: Sun Mar 22 21:31:04 2015 (+0100)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defgroup qt5doc nil "Qt 5 Documentation Browser"
  :group 'wp
  :version "24.4")

(defcustom qt5doc-html-root "/usr/share/doc/qt5"
  "The directory where the Qt 5 documentation lies."
  :type '(string :tag "Single directory (string)")
  :group 'qt5doc
  )

(defvar qt5doc-docindex-string
  "QAbstractAnimation QAbstractButton QAbstractEventDispatcher
    QAbstractExtensionFactory QAbstractExtensionManager
    QAbstractFormBuilder QAbstractGraphicsShapeItem
    QAbstractItemDelegate QAbstractItemModel QAbstractItemView
    QAbstractListModel QAbstractMessageHandler
    QAbstractNativeEventFilter QAbstractNetworkCache
    QAbstractOpenGLFunctions QAbstractPlanarVideoBuffer
    QAbstractPrintDialog QAbstractProxyModel QAbstractScrollArea
    QAbstractSlider QAbstractSocket QAbstractSpinBox QAbstractState
    QAbstractTableModel QAbstractTextDocumentLayout
    QAbstractTransition QAbstractUriResolver QAbstractVideoBuffer
    QAbstractVideoSurface QAbstractXmlNodeModel QAbstractXmlReceiver
    QAccelerometer QAccelerometerFilter QAccelerometerReading
    QAccessible QAccessibleActionInterface
    QAccessibleEditableTextInterface QAccessibleEvent
    QAccessibleInterface QAccessibleObject QAccessiblePlugin
    QAccessibleStateChangeEvent QAccessibleTableCellInterface
    QAccessibleTableInterface QAccessibleTableModelChangeEvent
    QAccessibleTextCursorEvent QAccessibleTextInsertEvent
    QAccessibleTextInterface QAccessibleTextRemoveEvent
    QAccessibleTextSelectionEvent QAccessibleTextUpdateEvent
    QAccessibleValueChangeEvent QAccessibleValueInterface
    QAccessibleWidget QAction QActionEvent QActionGroup QAltimeter
    QAltimeterFilter QAltimeterReading QAmbientLightFilter
    QAmbientLightReading QAmbientLightSensor QAmbientTemperatureFilter
    QAmbientTemperatureReading QAmbientTemperatureSensor
    QAndroidActivityResultReceiver QAndroidJniEnvironment
    QAndroidJniObject QAnimationGroup QApplication
    QAssociativeIterable QAtomicInt QAtomicInteger QAtomicPointer
    QAudioBuffer QAudioDecoder QAudioDecoderControl QAudioDeviceInfo
    QAudioEncoderSettings QAudioEncoderSettingsControl QAudioFormat
    QAudioInput QAudioInputSelectorControl QAudioOutput
    QAudioOutputSelectorControl QAudioProbe QAudioRecorder
    QAuthenticator QAxAggregated QAxBase QAxBindable QAxFactory
    QAxObject QAxScript QAxScriptEngine QAxScriptManager QAxSelect
    QAxWidget

B QBackingStore QBasicTimer QBitArray QBitmap QBluetoothAddress
    QBluetoothDeviceDiscoveryAgent QBluetoothDeviceInfo
    QBluetoothHostInfo QBluetoothLocalDevice QBluetoothServer
    QBluetoothServiceDiscoveryAgent QBluetoothServiceInfo
    QBluetoothSocket QBluetoothTransferManager QBluetoothTransferReply
    QBluetoothTransferRequest QBluetoothUuid QBoxLayout QBrush QBuffer
    QButtonGroup QByteArray QByteArrayList QByteArrayMatcher

C QCache QCalendarWidget QCamera QCameraCaptureBufferFormatControl
    QCameraCaptureDestinationControl QCameraControl QCameraExposure
    QCameraExposureControl QCameraFeedbackControl QCameraFlashControl
    QCameraFocus QCameraFocusControl QCameraFocusZone
    QCameraImageCapture QCameraImageCaptureControl
    QCameraImageProcessing QCameraImageProcessingControl QCameraInfo
    QCameraInfoControl QCameraLocksControl QCameraViewfinder
    QCameraViewfinderSettingsControl QCameraZoomControl QChar
    QCheckBox QChildEvent QClipboard QCloseEvent QCocoaNativeContext
    QCollator QCollatorSortKey QColor QColorDialog QColormap
    QColumnView QComboBox QCommandLineOption QCommandLineParser
    QCommandLinkButton QCommonStyle QCompass QCompassFilter
    QCompassReading QCompleter QConicalGradient QContextMenuEvent
    QContiguousCache QCoreApplication QCryptographicHash QCursor

D QDBusAbstractAdaptor QDBusAbstractInterface QDBusArgument
    QDBusConnection QDBusConnectionInterface QDBusContext QDBusError
    QDBusInterface QDBusMessage QDBusObjectPath QDBusPendingCall
    QDBusPendingCallWatcher QDBusPendingReply QDBusReply QDBusServer
    QDBusServiceWatcher QDBusSignature QDBusUnixFileDescriptor
    QDBusVariant QDBusVirtualObject QDataStream QDataWidgetMapper
    QDate QDateEdit QDateTime QDateTimeEdit QDebug QDebugStateSaver
    QDesignerActionEditorInterface QDesignerContainerExtension
    QDesignerCustomWidgetCollectionInterface
    QDesignerCustomWidgetInterface
    QDesignerDynamicPropertySheetExtension
    QDesignerFormEditorInterface QDesignerFormWindowCursorInterface
    QDesignerFormWindowInterface QDesignerFormWindowManagerInterface
    QDesignerMemberSheetExtension QDesignerObjectInspectorInterface
    QDesignerPropertyEditorInterface QDesignerPropertySheetExtension
    QDesignerTaskMenuExtension QDesignerWidgetBoxInterface
    QDesktopServices QDesktopWidget QDial QDialog QDialogButtonBox
    QDir QDirIterator QDirModel QDistanceFilter QDistanceReading
    QDistanceSensor QDnsDomainNameRecord QDnsHostAddressRecord
    QDnsLookup QDnsMailExchangeRecord QDnsServiceRecord QDnsTextRecord
    QDockWidget QDomAttr QDomCDATASection QDomCharacterData
    QDomComment QDomDocument QDomDocumentFragment QDomDocumentType
    QDomElement QDomEntity QDomEntityReference QDomImplementation
    QDomNamedNodeMap QDomNode QDomNodeList QDomNotation
    QDomProcessingInstruction QDomText QDoubleSpinBox QDoubleValidator
    QDrag QDragEnterEvent QDragLeaveEvent QDragMoveEvent QDropEvent
    QDynamicPropertyChangeEvent

E EnginioClient EnginioClientConnection EnginioIdentity EnginioModel
    EnginioOAuth2Authentication EnginioReply QEGLNativeContext
    QEasingCurve QEglFSFunctions QElapsedTimer QEnableSharedFromThis
    QEnterEvent QErrorMessage QEvent QEventLoop QEventLoopLocker
    QEventTransition QException QExplicitlySharedDataPointer
    QExposeEvent QExtensionFactory QExtensionManager

F QFile QFileDevice QFileDialog QFileIconProvider QFileInfo
    QFileOpenEvent QFileSelector QFileSystemModel QFileSystemWatcher
    QFinalState QFlag QFlags QFocusEvent QFocusFrame QFont
    QFontComboBox QFontDatabase QFontDialog QFontInfo QFontMetrics
    QFontMetricsF QFormBuilder QFormLayout QFrame QFuture
    QFutureIterator QFutureSynchronizer QFutureWatcher

G QGLBuffer QGLColormap QGLContext QGLFormat QGLFramebufferObject
    QGLFramebufferObjectFormat QGLFunctions QGLPixelBuffer QGLShader
    QGLShaderProgram QGLWidget QGLXNativeContext QGenericArgument
    QGenericMatrix QGenericPlugin QGenericPluginFactory
    QGenericReturnArgument QGeoAddress QGeoAreaMonitorInfo
    QGeoAreaMonitorSource QGeoCircle QGeoCodeReply QGeoCodingManager
    QGeoCodingManagerEngine QGeoCoordinate QGeoLocation QGeoManeuver
    QGeoPositionInfo QGeoPositionInfoSource
    QGeoPositionInfoSourceFactory QGeoRectangle QGeoRoute
    QGeoRouteReply QGeoRouteRequest QGeoRouteSegment
    QGeoRoutingManager QGeoRoutingManagerEngine QGeoSatelliteInfo
    QGeoSatelliteInfoSource QGeoServiceProvider
    QGeoServiceProviderFactory QGeoShape QGesture QGestureEvent
    QGestureRecognizer QGlobalStatic QGlyphRun QGradient
    QGraphicsAnchor QGraphicsAnchorLayout QGraphicsBlurEffect
    QGraphicsColorizeEffect QGraphicsDropShadowEffect QGraphicsEffect
    QGraphicsEllipseItem QGraphicsGridLayout QGraphicsItem
    QGraphicsItemAnimation QGraphicsItemGroup QGraphicsLayout
    QGraphicsLayoutItem QGraphicsLineItem QGraphicsLinearLayout
    QGraphicsObject QGraphicsOpacityEffect QGraphicsPathItem
    QGraphicsPixmapItem QGraphicsPolygonItem QGraphicsProxyWidget
    QGraphicsRectItem QGraphicsRotation QGraphicsScale QGraphicsScene
    QGraphicsSceneContextMenuEvent QGraphicsSceneDragDropEvent
    QGraphicsSceneEvent QGraphicsSceneHelpEvent
    QGraphicsSceneHoverEvent QGraphicsSceneMouseEvent
    QGraphicsSceneMoveEvent QGraphicsSceneResizeEvent
    QGraphicsSceneWheelEvent QGraphicsSimpleTextItem QGraphicsSvgItem
    QGraphicsTextItem QGraphicsTransform QGraphicsVideoItem
    QGraphicsView QGraphicsWebView QGraphicsWidget QGridLayout
    QGroupBox QGuiApplication QGyroscope QGyroscopeFilter
    QGyroscopeReading

H QHBoxLayout QHash QHashIterator QHeaderView QHelpContentItem
    QHelpContentModel QHelpContentWidget QHelpEngine QHelpEngineCore
    QHelpEvent QHelpIndexModel QHelpIndexWidget QHelpSearchEngine
    QHelpSearchQuery QHelpSearchQueryWidget QHelpSearchResultWidget
    QHideEvent QHistoryState QHolsterFilter QHolsterReading
    QHolsterSensor QHostAddress QHostInfo QHoverEvent QHttpMultiPart
    QHttpPart

I QIODevice QIRProximityFilter QIRProximityReading QIRProximitySensor
    QIcon QIconDragEvent QIconEngine QIconEnginePlugin
    QIdentityProxyModel QImage QImageEncoderControl
    QImageEncoderSettings QImageIOHandler QImageIOPlugin QImageReader
    QImageWriter QInputDialog QInputEvent QInputMethod
    QInputMethodEvent QInputMethodQueryEvent QIntValidator
    QItemDelegate QItemEditorCreator QItemEditorCreatorBase
    QItemEditorFactory QItemSelection QItemSelectionModel
    QItemSelectionRange

J QJSEngine QJSValue QJSValueIterator QJsonArray QJsonDocument
    QJsonObject QJsonParseError QJsonValue

K QKeyEvent QKeyEventTransition QKeySequence QKeySequenceEdit

L QLCDNumber QLabel QLatin1Char QLatin1String QLayout QLayoutItem
    QLibrary QLibraryInfo QLightFilter QLightReading QLightSensor
    QLine QLineEdit QLineF QLinearGradient QLinkedList
    QLinkedListIterator QList QListIterator QListView QListWidget
    QListWidgetItem QLocalServer QLocalSocket QLocale QLockFile
    QLoggingCategory QLowEnergyCharacteristic QLowEnergyController
    QLowEnergyDescriptor QLowEnergyService

M QMacCocoaViewContainer QMacNativeWidget QMacPasteboardMime
    QMacToolBar QMacToolBarItem QMagnetometer QMagnetometerFilter
    QMagnetometerReading QMainWindow QMap QMapIterator QMargins
    QMarginsF QMaskGenerator QMatrix QMatrix4x4 QMdiArea QMdiSubWindow
    QMediaAudioProbeControl QMediaAvailabilityControl
    QMediaBindableInterface QMediaContainerControl QMediaContent
    QMediaControl QMediaGaplessPlaybackControl
    QMediaNetworkAccessControl QMediaObject QMediaPlayer
    QMediaPlayerControl QMediaPlaylist QMediaRecorder
    QMediaRecorderControl QMediaResource QMediaService
    QMediaServiceCameraInfoInterface QMediaServiceFeaturesInterface
    QMediaServiceProviderPlugin QMediaServiceSupportedDevicesInterface
    QMediaServiceSupportedFormatsInterface QMediaStreamsControl
    QMediaTimeInterval QMediaTimeRange QMediaVideoProbeControl QMenu
    QMenuBar QMessageAuthenticationCode QMessageBox QMessageLogContext
    QMessageLogger QMetaClassInfo QMetaDataReaderControl
    QMetaDataWriterControl QMetaEnum QMetaMethod QMetaObject
    QMetaProperty QMetaType QMimeData QMimeDatabase QMimeType
    QModelIndex QMouseEvent QMouseEventTransition QMoveEvent QMovie
    QMultiHash QMultiMap QMutableHashIterator
    QMutableLinkedListIterator QMutableListIterator
    QMutableMapIterator QMutableSetIterator QMutableVectorIterator
    QMutex QMutexLocker

N QNativeGestureEvent QNdefFilter QNdefMessage
    QNdefNfcSmartPosterRecord QNdefNfcTextRecord QNdefNfcUriRecord
    QNdefRecord QNearFieldManager QNearFieldShareManager
    QNearFieldShareTarget QNearFieldTarget QNetworkAccessManager
    QNetworkAddressEntry QNetworkCacheMetaData QNetworkConfiguration
    QNetworkConfigurationManager QNetworkCookie QNetworkCookieJar
    QNetworkDiskCache QNetworkInterface QNetworkProxy
    QNetworkProxyFactory QNetworkProxyQuery QNetworkReply
    QNetworkRequest QNetworkSession QNmeaPositionInfoSource

O QObject QObjectCleanupHandler QOffscreenSurface QOpenGLBuffer
    QOpenGLContext QOpenGLContextGroup QOpenGLDebugLogger
    QOpenGLDebugMessage QOpenGLFramebufferObject
    QOpenGLFramebufferObjectFormat QOpenGLFunctions
    QOpenGLFunctions_1_0 QOpenGLFunctions_1_1 QOpenGLFunctions_1_2
    QOpenGLFunctions_1_3 QOpenGLFunctions_1_4 QOpenGLFunctions_1_5
    QOpenGLFunctions_2_0 QOpenGLFunctions_2_1 QOpenGLFunctions_3_0
    QOpenGLFunctions_3_1 QOpenGLFunctions_3_2_Compatibility
    QOpenGLFunctions_3_2_Core QOpenGLFunctions_3_3_Compatibility
    QOpenGLFunctions_3_3_Core QOpenGLFunctions_4_0_Compatibility
    QOpenGLFunctions_4_0_Core QOpenGLFunctions_4_1_Compatibility
    QOpenGLFunctions_4_1_Core QOpenGLFunctions_4_2_Compatibility
    QOpenGLFunctions_4_2_Core QOpenGLFunctions_4_3_Compatibility
    QOpenGLFunctions_4_3_Core QOpenGLFunctions_ES2 QOpenGLPaintDevice
    QOpenGLPixelTransferOptions QOpenGLShader QOpenGLShaderProgram
    QOpenGLTexture QOpenGLTimeMonitor QOpenGLTimerQuery
    QOpenGLVersionProfile QOpenGLVertexArrayObject QOpenGLWidget
    QOpenGLWindow QOrientationFilter QOrientationReading
    QOrientationSensor

P QPageLayout QPageSetupDialog QPageSize QPagedPaintDevice
    QPaintDevice QPaintDeviceWindow QPaintEngine QPaintEngineState
    QPaintEvent QPainter QPainterPath QPainterPathStroker QPair
    QPalette QPanGesture QParallelAnimationGroup QPauseAnimation
    QPdfWriter QPen QPersistentModelIndex QPicture
    QPictureFormatPlugin QPictureIO QPinchGesture QPixelFormat QPixmap
    QPixmapCache QPlace QPlaceAttribute QPlaceCategory
    QPlaceContactDetail QPlaceContent QPlaceContentReply
    QPlaceContentRequest QPlaceDetailsReply QPlaceEditorial QPlaceIcon
    QPlaceIdReply QPlaceImage QPlaceManager QPlaceManagerEngine
    QPlaceMatchReply QPlaceMatchRequest QPlaceProposedSearchResult
    QPlaceRatings QPlaceReply QPlaceResult QPlaceReview
    QPlaceSearchReply QPlaceSearchRequest QPlaceSearchResult
    QPlaceSearchSuggestionReply QPlaceSupplier QPlaceUser
    QPlainTextDocumentLayout QPlainTextEdit QPlatformSystemTrayIcon
    QPluginLoader QPoint QPointF QPointer QPolygon QPolygonF
    QPressureFilter QPressureReading QPressureSensor QPrintDialog
    QPrintEngine QPrintPreviewDialog QPrintPreviewWidget QPrinter
    QPrinterInfo QProcess QProcessEnvironment QProgressBar
    QProgressDialog QPropertyAnimation QProximityFilter
    QProximityReading QProximitySensor QProxyStyle QPushButton

Q QQmlAbstractProfilerAdapter QQmlAbstractUrlInterceptor
    QQmlApplicationEngine QQmlComponent QQmlContext QQmlEngine
    QQmlError QQmlExpression QQmlExtensionPlugin QQmlFileSelector
    QQmlImageProviderBase QQmlIncubationController QQmlIncubator
    QQmlListProperty QQmlListReference QQmlNdefRecord
    QQmlNetworkAccessManagerFactory QQmlParserStatus QQmlProperty
    QQmlPropertyMap QQmlPropertyValueSource QQmlScriptString
    QQuaternion QQueue QQuickFramebufferObject QQuickImageProvider
    QQuickItem QQuickItemGrabResult QQuickPaintedItem
    QQuickRenderControl QQuickTextDocument QQuickTextureFactory
    QQuickView QQuickWidget QQuickWindow QTouchEventSequence (QTest)
    qoutputrange

R QRadialGradient QRadioButton QRadioData QRadioDataControl
    QRadioTuner QRadioTunerControl QRasterPaintEngine QRasterWindow
    QRawFont QReadLocker QReadWriteLock QRect QRectF QRegExp
    QRegExpValidator QRegion QRegularExpression
    QRegularExpressionMatch QRegularExpressionMatchIterator
    QRegularExpressionValidator QResizeEvent QResource QRotationFilter
    QRotationReading QRotationSensor QRubberBand QRunnable

S QSGAbstractRenderer QSGBasicGeometryNode QSGClipNode
    QSGDynamicTexture QSGEngine QSGFlatColorMaterial QSGGeometry
    QSGGeometryNode QSGMaterial QSGMaterialShader QSGMaterialType
    QSGNode QSGOpacityNode QSGOpaqueTextureMaterial QSGSimpleMaterial
    QSGSimpleMaterialShader QSGSimpleRectNode QSGSimpleTextureNode
    QSGTexture QSGTextureMaterial QSGTextureProvider QSGTransformNode
    QSGVertexColorMaterial QSaveFile QScopedArrayPointer
    QScopedPointer QScopedValueRollback QScreen QScriptClass
    QScriptClassPropertyIterator QScriptContext QScriptContextInfo
    QScriptEngine QScriptEngineAgent QScriptEngineDebugger
    QScriptExtensionPlugin QScriptProgram QScriptString
    QScriptSyntaxCheckResult QScriptValue QScriptValueIterator
    QScriptable QScrollArea QScrollBar QScrollEvent
    QScrollPrepareEvent QScroller QScrollerProperties QSemaphore
    QSensor QSensorBackend QSensorBackendFactory
    QSensorChangesInterface QSensorFilter QSensorGesture
    QSensorGestureManager QSensorGesturePluginInterface
    QSensorGestureRecognizer QSensorManager QSensorPluginInterface
    QSensorReading QSequentialAnimationGroup QSequentialIterable
    QSerialPort QSerialPortInfo QSessionManager QSet QSetIterator
    QSettings QSharedData QSharedDataPointer QSharedMemory
    QSharedPointer QShortcut QShortcutEvent QShowEvent QSignalBlocker
    QSignalMapper QSignalSpy QSignalTransition QSimpleXmlNodeModel
    QSize QSizeF QSizeGrip QSizePolicy QSlider QSocketNotifier
    QSortFilterProxyModel QSound QSoundEffect QSourceLocation
    QSpacerItem QSpinBox QSplashScreen QSplitter QSplitterHandle
    QSqlDatabase QSqlDriver QSqlDriverCreator QSqlDriverCreatorBase
    QSqlDriverPlugin QSqlError QSqlField QSqlIndex QSqlQuery
    QSqlQueryModel QSqlRecord QSqlRelation QSqlRelationalDelegate
    QSqlRelationalTableModel QSqlResult QSqlTableModel QSslCertificate
    QSslCertificateExtension QSslCipher QSslConfiguration QSslError
    QSslKey QSslSocket QStack QStackedLayout QStackedWidget
    QStandardItem QStandardItemEditorCreator QStandardItemModel
    QStandardPaths QState QStateMachine QStaticPlugin QStaticText
    QStatusBar QStatusTipEvent QStorageInfo QString QStringList
    QStringListModel QStringMatcher QStringRef QStyle QStyleFactory
    QStyleHintReturn QStyleHintReturnMask QStyleHintReturnVariant
    QStyleHints QStyleOption QStyleOptionButton QStyleOptionComboBox
    QStyleOptionComplex QStyleOptionDockWidget QStyleOptionFocusRect
    QStyleOptionFrame QStyleOptionGraphicsItem QStyleOptionGroupBox
    QStyleOptionHeader QStyleOptionMenuItem QStyleOptionProgressBar
    QStyleOptionRubberBand QStyleOptionSizeGrip QStyleOptionSlider
    QStyleOptionSpinBox QStyleOptionTab QStyleOptionTabBarBase
    QStyleOptionTabWidgetFrame QStyleOptionTitleBar
    QStyleOptionToolBar QStyleOptionToolBox QStyleOptionToolButton
    QStyleOptionViewItem QStylePainter QStylePlugin
    QStyledItemDelegate QSupportedWritingSystems QSurface
    QSurfaceFormat QSvgGenerator QSvgRenderer QSvgWidget QSwipeGesture
    QSyntaxHighlighter QSysInfo QSystemSemaphore QSystemTrayIcon

T QTabBar QTabWidget QTableView QTableWidget QTableWidgetItem
    QTableWidgetSelectionRange QTabletEvent QTapAndHoldGesture
    QTapFilter QTapGesture QTapReading QTapSensor QTcpServer
    QTcpSocket QTemporaryDir QTemporaryFile QTestEventList QTextBlock
    QTextBlockFormat QTextBlockGroup QTextBlockUserData
    QTextBoundaryFinder QTextBrowser QTextCharFormat QTextCodec
    QTextCursor QTextDecoder QTextDocument QTextDocumentFragment
    QTextDocumentWriter QTextEdit QTextEncoder QTextFormat
    QTextFragment QTextFrame QTextFrameFormat QTextImageFormat
    QTextInlineObject QTextItem QTextLayout QTextLength QTextLine
    QTextList QTextListFormat QTextObject QTextObjectInterface
    QTextOption QTextStream QTextTable QTextTableCell
    QTextTableCellFormat QTextTableFormat QThread QThreadPool
    QThreadStorage QTileRules QTiltFilter QTiltReading QTiltSensor
    QTime QTimeEdit QTimeLine QTimeZone QTimer QTimerEvent QToolBar
    QToolBox QToolButton QToolTip QTouchDevice QTouchEvent QTransform
    QTranslator QTreeView QTreeWidget QTreeWidgetItem
    QTreeWidgetItemIterator

U QUdpSocket QUiLoader QUndoCommand QUndoGroup QUndoStack QUndoView
    QUnhandledException QUrl QUrlQuery QUuid

V QVBoxLayout QValidator QVarLengthArray QVariant QVariantAnimation
    QVector QVector2D QVector3D QVector4D QVectorIterator
    QVideoDeviceSelectorControl QVideoEncoderSettings
    QVideoEncoderSettingsControl QVideoFrame QVideoProbe
    QVideoRendererControl QVideoSurfaceFormat QVideoWidget
    QVideoWidgetControl QVideoWindowControl

W QWGLNativeContext QWaitCondition QWeakPointer QWebChannel
    QWebChannelAbstractTransport QWebDatabase QWebElement
    QWebElementCollection QWebEngineHistory QWebEngineHistoryItem
    QWebEnginePage QWebEngineSettings QWebEngineView QWebFrame
    QWebHistory QWebHistoryInterface QWebHistoryItem QWebHitTestResult
    QWebInspector QWebPage QWebPluginFactory QWebSecurityOrigin
    QWebSettings QWebSocket QWebSocketCorsAuthenticator
    QWebSocketServer QWebView QWhatsThis QWhatsThisClickedEvent
    QWheelEvent QWidget QWidgetAction QWidgetItem QWinEventNotifier
    QWinJumpList QWinJumpListCategory QWinJumpListItem QWinMime
    QWinTaskbarButton QWinTaskbarProgress QWinThumbnailToolBar
    QWinThumbnailToolButton QWindow QWindowStateChangeEvent QWizard
    QWizardPage QWriteLocker

X QX11Info QXcbWindowFunctions QXmlAttributes QXmlContentHandler
    QXmlDTDHandler QXmlDeclHandler QXmlDefaultHandler
    QXmlEntityResolver QXmlErrorHandler QXmlFormatter QXmlInputSource
    QXmlItem QXmlLexicalHandler QXmlLocator QXmlName QXmlNamePool
    QXmlNamespaceSupport QXmlNodeModelIndex QXmlParseException
    QXmlQuery QXmlReader QXmlResultItems QXmlSchema
    QXmlSchemaValidator QXmlSerializer QXmlSimpleReader
    QXmlStreamAttribute QXmlStreamAttributes
    QXmlStreamEntityDeclaration QXmlStreamEntityResolver
    QXmlStreamNamespaceDeclaration QXmlStreamNotationDeclaration
    QXmlStreamReader QXmlStreamWriter "
  "Cut-n-paste documentation index, to obtain the complete list of
 classes quick-n-dirty."
  )

(defvar qtdoc-classes
  (delete-if-not (lambda (x) (> (length x) 1))
		 (split-string qt5doc-docindex-string))
  "List of class names."
  )

(require 'helm)
(require 'browse-url)
(require 'thingatpt)

(defun qt5doc-lookup ()
  "Lookup a class name in Qt documentation.

Searches in `qt5doc-html-root' for the given documentation and
passes the documentation to `browse-url', if found.

If called while on a Qt class it will use this class as default search term.
"
  (interactive)
  (let ((sp (thing-at-point 'symbol))
	val
	class
	file-name
	abs-file-name)
    (setq class (helm-comp-read (if sp
				    (format "Qt Class (default %s): " sp)
				  "Qt Class: ") qtdoc-classes :default sp))
    (setq file-name (concat (downcase class) ".html"))
    (setq abs-file-name
	  (replace-regexp-in-string
	   "\n$" "" (shell-command-to-string
		     (concat "find " qt5doc-html-root " -type f -name " file-name))))
    (if (not (string= abs-file-name ""))
	(browse-url (browse-url-file-url abs-file-name))
      (message "Could not find documentation file for class: %s" class))))

(provide 'qt5doc)
;;; qt5doc.el ends here
